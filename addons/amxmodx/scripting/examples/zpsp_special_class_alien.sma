/* 
	Custom Zombie Special Class Example 
	
	See The Code for creating more specials zombies with powers 

	4.4 Update:
		Added "Alien Vision" on this example class
		With Alien vision you can see Invisible Players (Like Spy and Predators)
		Added "Dark Map" Like in Assassin Round 
*/


#include <amxmodx>
#include <hamsandwich>
#include <fakemeta>
#include <zombie_plague_special>
#include <amx_settings_api>

#if ZPS_INC_VERSION < 44
	#assert Zombie Plague Special 4.4 (Beta) or Higher Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

new const ZP_CUSTOMIZATION_FILE[] = "zombie_plague_special.ini"

new Array:g_sound_alien, g_ambience_sounds, Array:g_sound_amb_alien_dur, Array: g_sound_ambience_alien

// Default Sounds
new const sound_alien[][] = { "zombie_plague/nemesis1.wav" }
new const ambience_alien_sound[][] = { "zombie_plague/ambience.wav" } 
new const ambience_alien_dur[][] = { "17" }

new const sp_name[] = "Alien"
new const sp_model[] = "zombie_source"
new const sp_knifemodel[] = "models/zombie_plague/v_knife_zombie.mdl"
new const sp_painsound[] = "zombie_plague/nemesis_pain1.wav"
new const sp_hp = 50000
new const sp_speed = 300
new const Float:sp_gravity = 0.5
new const sp_aura_size = 10
new const Float:sp_knockback = 0.25
new const sp_allow_glow = 1
new const sp_color_r =  100
new const sp_color_g = 0
new const sp_color_b = 200
new acess_flags[2]

// Variables
new g_gameid, g_msg_sync, cvar_minplayers, cvar_alien_damage, g_speciald, g_maxplayers
new const g_chance = 90

// Enable Ambience?
#define AMBIENCE_ENABLE 0

// Default Alien Light
#define ALIEN_LIGHTING "a"

// Ambience sounds task
#define TASK_AMB 3256

public plugin_init()
{
	// Plugin registeration.
	register_plugin("[ZP] Class Alien","1.2", "[P]erfec[T] [S]cr[@]s[H]")
	
	cvar_minplayers = register_cvar("zp_alien_minplayers", "2")
	cvar_alien_damage = register_cvar("zp_alien_damage", "500")
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage")
	register_forward(FM_AddToFullPack, "forward_AddToFullPack", 1); 
	
	g_msg_sync = CreateHudSyncObj()
	g_maxplayers = get_maxplayers()
}


// Game modes MUST be registered in plugin precache ONLY
public plugin_precache()
{
	// Read the access flag
	new user_access[40]
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE ALIEN", user_access, charsmax(user_access)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE ALIEN", "a")
		formatex(user_access, charsmax(user_access), "a")
	}
	acess_flags[0] = read_flags(user_access)
	
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "MAKE ALIEN", user_access, charsmax(user_access)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "MAKE ALIEN", "a")
		formatex(user_access, charsmax(user_access), "a")
	}
	acess_flags[1] = read_flags(user_access)

	new i
	
	g_sound_alien = ArrayCreate(64, 1)
	g_sound_ambience_alien = ArrayCreate(64, 1)
	g_sound_amb_alien_dur = ArrayCreate(64, 1)
	
	// Load from external file
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND ALIEN", g_sound_alien)
	
	// Precache the play sounds
	if (ArraySize(g_sound_alien) == 0)
	{
		for (i = 0; i < sizeof sound_alien; i++)
			ArrayPushString(g_sound_alien, sound_alien[i])
		
		// Save to external file
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND ALIEN", g_sound_alien)
	}
	
	// Precache sounds
	new sound[100]
	for (i = 0; i < ArraySize(g_sound_alien); i++)
	{
		ArrayGetString(g_sound_alien, i, sound, charsmax(sound))
		precache_ambience(sound)
	}
	
	// Ambience Sounds
	g_ambience_sounds = AMBIENCE_ENABLE
	if(!amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "ALIEN ENABLE", g_ambience_sounds))
		amx_save_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "ALIEN ENABLE", g_ambience_sounds)
	
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "ALIEN SOUNDS", g_sound_ambience_alien)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "ALIEN DURATIONS", g_sound_amb_alien_dur)
	
	
	// Save to external file
	if (ArraySize(g_sound_ambience_alien) == 0)
	{
		for (i = 0; i < sizeof ambience_alien_sound; i++)
			ArrayPushString(g_sound_ambience_alien, ambience_alien_sound[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "ALIEN SOUNDS", g_sound_ambience_alien)
	}
	
	if (ArraySize(g_sound_amb_alien_dur) == 0)
	{
		for (i = 0; i < sizeof ambience_alien_dur; i++)
			ArrayPushString(g_sound_amb_alien_dur, ambience_alien_dur[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "ALIEN DURATIONS", g_sound_amb_alien_dur)
	}
	
	// Ambience Sounds
	new buffer[250]
	if (g_ambience_sounds) {
		for (i = 0; i < ArraySize(g_sound_ambience_alien); i++) {
			ArrayGetString(g_sound_ambience_alien, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
	}
	
	// Register Special Class and Game mod
	g_gameid = zpsp_register_gamemode(sp_name, acess_flags[0], g_chance, 0, 0)
	g_speciald = zp_register_zombie_special(sp_name, sp_model, sp_knifemodel, sp_painsound, sp_hp, sp_speed, sp_gravity, acess_flags[1], sp_knockback, sp_aura_size, sp_allow_glow, sp_color_r, sp_color_g, sp_color_b)
}

public plugin_natives()
{
	// Register Natives
	register_native("zp_get_user_alien", "native_get_user_alien", 1)
	register_native("zp_make_user_alien", "native_make_user_alien", 1)
	register_native("zp_get_alien_count", "native_get_alien_count", 1)
	register_native("zp_is_alien_round", "native_is_alien_round", 1)
}

// Attack Damage
public fw_TakeDamage(victim, inflictor, attacker, Float:damage, damage_type)
{
	if(!is_user_connected(victim) || !is_user_connected(attacker))
		return HAM_IGNORED
	
	if(inflictor == attacker && zp_get_zombie_special_class(attacker) == g_speciald)
		SetHamParamFloat(4, get_pcvar_float(cvar_alien_damage))
		
	return HAM_IGNORED
}

// Player spawn post
public zp_player_spawn_post(id)
{
	// Check for current mode
	if(zp_get_current_mode() == g_gameid)
		zp_disinfect_user(id)
}

public zp_round_started_pre(game)
{
	// Check if it is our game mode
	if(game == g_gameid)
	{
		// Check for min players
		if(zp_get_alive_players() < get_pcvar_num(cvar_minplayers))
			return ZP_PLUGIN_HANDLED

		// Start our new mode
		start_alien_mode()
	}
	return PLUGIN_CONTINUE
}

public zp_round_started(game, id)
{
	// Check if it is our game mode
	if(game == g_gameid)
	{
		// Play the starting sound
		static sound[100]
		ArrayGetString(g_sound_alien, random_num(0, ArraySize(g_sound_alien) - 1), sound, charsmax(sound))
		zp_play_sound(0, sound)
		
		// Remove ambience task affects
		remove_task(TASK_AMB)
		
		// Set task to start ambience sounds
		set_task(2.0, "start_ambience_sounds", TASK_AMB)
	}
}

public zp_game_mode_selected(gameid, id)
{
	// Check if our game mode was called
	if(gameid == g_gameid)
		start_alien_mode()
	
	// Make the compiler happy again =)
	return PLUGIN_CONTINUE
}

// This function contains the whole code behind this game mode
start_alien_mode()
{
	new id, i,  has_alien
	has_alien = false
	for (i = 1; i <= g_maxplayers; i++) {
		if(zp_get_zombie_special_class(i) == g_speciald) {
			if(!is_user_alive(i))
				continue

			id = i						// Get Alien Index
			has_alien = true
		}
	}

	if(!has_alien) {
		id = zp_get_random_player()
		zp_make_user_special(id, g_speciald, 1)
	}
	
	static name[32]; get_user_name(id, name, 31);
	set_hudmessage(sp_color_r, sp_color_g, sp_color_b, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_msg_sync, "%s is an %s", name, sp_name)

	zp_set_lighting(ALIEN_LIGHTING)
		
	// Turn the remaining players into zombies
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Not alive
		if(!is_user_alive(id))
			continue;
			
		ScreenFade(id, 5, sp_color_r, sp_color_g, sp_color_b, 255)
	}

}

public start_ambience_sounds()
{
	if (!g_ambience_sounds)
		return;
	
	// Variables
	static amb_sound[64], sound,  str_dur[20]
	
	// Select our ambience sound
	sound = random_num(0, ArraySize(g_sound_ambience_alien)-1)

	ArrayGetString(g_sound_ambience_alien, sound, amb_sound, charsmax(amb_sound))
	ArrayGetString(g_sound_amb_alien_dur, sound, str_dur, charsmax(str_dur))
	
	zp_play_sound(0, amb_sound)
	
	// Start the ambience sounds
	set_task(str_to_float(str_dur), "start_ambience_sounds", TASK_AMB)
}
public zp_round_ended() {
	remove_task(TASK_AMB)
}

public zp_user_infected_post(id)
{
	if(zp_get_zombie_special_class(id) == g_speciald) 
	{
		if(!zp_has_round_started())
			zp_set_custom_game_mod(g_gameid)	// Force Start Alien Round
	}
}

public forward_AddToFullPack(es_handle, e, entity, host, hostflags, player, pSet)
{
	if(!is_user_alive(host) || !pev_valid(entity))
		return FMRES_IGNORED;

	if(zp_get_zombie_special_class(host) != g_speciald || zp_get_user_nightvision(host) != 2)
        return FMRES_IGNORED;

	if(player) { // Player Entities
		set_es(es_handle, ES_RenderFx, kRenderFxGlowShell);

		if(zp_get_user_zombie(entity))
			set_es(es_handle, ES_RenderColor, { 255, 0, 0 });
		else 
			set_es(es_handle, ES_RenderColor, { 0, 100, 255 });

		set_es(es_handle, ES_RenderMode, kRenderTransAlpha);
		set_es(es_handle, ES_RenderAmt, 5);
	}
	else // Other Entities
	{
		static classname[32];
		pev(entity, pev_classname, classname, charsmax(classname))

		if(!equal(classname, "func_", 5) && !equal(classname, "weaponbox") && !equal(classname, "armoury_entity")
		|| contain(classname, "button") != -1 || contain(classname, "ladder") != -1)
			return FMRES_IGNORED;

		set_es(es_handle, ES_RenderFx, kRenderFxGlowShell);
		set_es(es_handle, ES_RenderColor, { 0, 0, 0 });
		set_es(es_handle, ES_RenderMode, kRenderTransAdd);
		set_es(es_handle, ES_RenderAmt, 255);
	}

	return FMRES_IGNORED;
}

stock ScreenFade(id, Timer, r, g ,b, Alpha) 
{	
	if(!is_user_connected(id)) return;
	
	message_begin(MSG_ONE_UNRELIABLE, get_user_msgid("ScreenFade"), _, id);
	write_short((1<<12) * Timer)
	write_short(1<<12)
	write_short(0)
	write_byte(r)
	write_byte(g)
	write_byte(b)
	write_byte(Alpha)
	message_end()
}

public native_get_user_alien(id)
	return (zp_get_zombie_special_class(id) == g_speciald)
	
public native_make_user_alien(id)
	return (zp_make_user_special(id, g_speciald, 1))
	
public native_get_alien_count()
	return zp_get_special_count(1, g_speciald)
	
public native_is_alien_round()
	return (zp_get_current_mode() == g_gameid)	

precache_ambience(sound[])
{
	static buffer[150]
	if(equal(sound[strlen(sound)-4], ".mp3")) {
		if(!equal(sound, "sound/", 6) && !file_exists(sound) && !equal(sound, "media/", 6))
			format(buffer, charsmax(buffer), "sound/%s", sound)
		else
			format(buffer, charsmax(buffer), "%s", sound)
		
		precache_generic(buffer)
	}
	else  {
		if(equal(sound, "sound/", 6))
			format(buffer, charsmax(buffer), "%s", sound[6])
		else
			format(buffer, charsmax(buffer), "%s", sound)
		
		precache_sound(buffer)
	}
}
