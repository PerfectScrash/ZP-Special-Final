/* 
	Custom Zombie Special Class Example 
	
	See The Code for creating more specials zombies with powers 

	4.4 Update:
		Added "Alien Vision" on this example class
		With Alien vision you can see Invisible Players (Like Spy and Predators)
		Added "Dark Map" Like in Assassin Round 
	
	4.5 Update:
		Natives now are using style 0
		Death sounds are added here
		Ambience/Round start are using zp special 4.5 natives now
*/


#include <amxmodx>
#include <hamsandwich>
#include <fakemeta>
#include <zombie_plague_special>
#include <amx_settings_api>

#if ZPS_INC_VERSION < 45
	#assert Zombie Plague Special 4.5 Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

/*-------------------------------------
--> Class Configs
--------------------------------------*/
#define Make_Acess ADMIN_IMMUNITY 	// Flag Acess make

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
new sp_color_rgb[3] = { 100, 0, 200 }

new const sp_death_sounds[][] = {
	"zombie_plague/zombie_die1.wav", 
	"zombie_plague/zombie_die2.wav", 
	"zombie_plague/zombie_die3.wav", 
	"zombie_plague/zombie_die4.wav", 
	"zombie_plague/zombie_die5.wav"
}
/*-------------------------------------
--> Gamemode Config
--------------------------------------*/
new const g_chance = 90						// Gamemode chance
#define Start_Mode_Acess ADMIN_IMMUNITY

new const Alien_Lighting[] = "a" // Default Alien Light

/*-------------------------------------
--> Ambience/Round Sound Config
--------------------------------------*/
// Ambience enums
enum _handler { AmbiencePrecache[64], Float:AmbienceDuration }

// Enable Ambience?
const ambience_enable = 1

// Ambience sounds
new const gamemode_ambiences[][_handler] = {	
	// Sounds					// Duration
	{ "zombie_plague/ambience.wav", 17.0 }
}

// Round start sounds
new const gamemode_round_start_snd[][] = { 
	"zombie_plague/nemesis1.wav"
}

/*-------------------------------------
--> Variables/Defines
--------------------------------------*/
new g_gameid, g_msg_sync, cvar_minplayers, cvar_alien_damage, g_special_id

#define GetUserAlien(%1) (zp_get_zombie_special_class(%1) == g_special_id) 
#define IsAlienMode() (zp_get_current_mode() == g_gameid)

/*-------------------------------------
--> Plugin registeration.
--------------------------------------*/
public plugin_init()
{
	register_plugin("[ZPSp] Special Class: Alien", "1.4", "[P]erfec[T] [S]cr[@]s[H]")
	
	cvar_minplayers = register_cvar("zp_alien_minplayers", "2")
	cvar_alien_damage = register_cvar("zp_alien_damage", "500")
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage")
	register_forward(FM_AddToFullPack, "fw_AddToFullPack", 1); 
	
	g_msg_sync = CreateHudSyncObj()
}

/*-------------------------------------
--> Plugin Precache
--------------------------------------*/
public plugin_precache() {
	// Register Special Class and Game mod
	g_gameid = zpsp_register_gamemode(sp_name, Start_Mode_Acess, g_chance, 0, 0)
	g_special_id = zp_register_zombie_special(sp_name, sp_model, sp_knifemodel, sp_painsound, sp_hp, sp_speed, sp_gravity, Make_Acess, sp_knockback, sp_aura_size, sp_allow_glow, sp_color_rgb[0], sp_color_rgb[1], sp_color_rgb[2])

	static i
	// Register round start sound
	for(i = 0; i < sizeof gamemode_round_start_snd; i++)
		zp_register_start_gamemode_snd(g_gameid, gamemode_round_start_snd[i])

	// Register ambience sounds
	for (i = 0; i < sizeof gamemode_ambiences; i++)
		zp_register_gamemode_ambience(g_gameid, gamemode_ambiences[i][AmbiencePrecache], gamemode_ambiences[i][AmbienceDuration], ambience_enable)

	// Register Class Death sound
	for (i = 0; i < sizeof sp_death_sounds; i++)
		zp_register_zmspecial_deathsnd(g_special_id, sp_death_sounds[i])
}

/*-------------------------------------
--> Natives
--------------------------------------*/
public plugin_natives() {
	register_native("zp_get_user_alien", "native_get_user_alien")
	register_native("zp_make_user_alien", "native_make_user_alien")
	register_native("zp_get_alien_count", "native_get_alien_count")
	register_native("zp_is_alien_round", "native_is_alien_round")
}

// Native: zp_get_user_alien(id)
public native_get_user_alien(plugin_id, num_params) 
	return GetUserAlien(get_param(1));

// Native: zp_make_user_alien(id)
public native_make_user_alien(plugin_id, num_params) 
	return (zp_make_user_special(get_param(1), g_special_id, GET_ZOMBIE));

// Native: zp_get_alien_count()
public native_get_alien_count(plugin_id, num_params)
	return zp_get_special_count(GET_ZOMBIE, g_special_id);

// Native: zp_is_alien_round()
public native_is_alien_round(plugin_id, num_params)
	return IsAlienMode();

/*-------------------------------------
--> Class Functions
--------------------------------------*/
// Attack Damage
public fw_TakeDamage(victim, inflictor, attacker, Float:damage, damage_type) {
	if(!is_user_connected(victim) || !is_user_connected(attacker))
		return HAM_IGNORED
	
	if(inflictor == attacker && GetUserAlien(attacker))
		SetHamParamFloat(4, get_pcvar_float(cvar_alien_damage))
		
	return HAM_IGNORED
}

// When turn into alien
public zp_user_infected_post(id) {
	if(!GetUserAlien(id)) 
		return;

	if(!zp_has_round_started())
		zp_set_custom_game_mod(g_gameid)	// Force Start Alien Round
}

// Alien Vision
public fw_AddToFullPack(es_handle, e, entity, host, hostflags, player, pSet) {
	if(!is_user_alive(host) || !pev_valid(entity))
		return FMRES_IGNORED;

	if(!GetUserAlien(host) || zp_get_user_nightvision(host) != 2)
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
	else { // Other Entities
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

/*-------------------------------------
--> Gamemode functions
--------------------------------------*/
// Player spawn post
public zp_player_spawn_post(id) {
	if(IsAlienMode() && zp_get_user_zombie(id)) // Check for current mode
		zp_disinfect_user(id)
}

public zp_round_started_pre(game) {
	// Check if it is our game mode
	if(game != g_gameid)
		return PLUGIN_CONTINUE
	
	// Check for min players
	if(zp_get_alive_players() < get_pcvar_num(cvar_minplayers))
		return ZP_PLUGIN_HANDLED

	return PLUGIN_CONTINUE
}

public zp_round_started(gameid) {
	if(gameid == g_gameid) // Check if it is our game mode
		start_alien_mode()
}

// This function contains the whole code behind this game mode
start_alien_mode() {
	static id, i, has_alien
	has_alien = false
	for (i = 1; i <= MaxClients; i++) {
		if(!is_user_alive(i))
			continue
	
		if(!GetUserAlien(i))
			continue
		
		id = i	// Get Alien Index
		has_alien = true
		break;
	}

	if(!has_alien) {
		id = zp_get_random_player()
		zp_make_user_special(id, g_special_id, GET_ZOMBIE)
	}
	
	static name[32]; get_user_name(id, name, charsmax(name));
	set_hudmessage(sp_color_rgb[0], sp_color_rgb[1], sp_color_rgb[2], -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_msg_sync, "%s is an %s", name, sp_name)

	zp_set_lighting(Alien_Lighting)
		
	ScreenFade(0, 5, sp_color_rgb, 255)
}


/*-------------------------------------
--> Stocks
--------------------------------------*/
stock ScreenFade(id, Timer, Colors[3], Alpha) {
	if(!is_user_connected(id) && id)
		return;

	message_begin(id ? MSG_ONE_UNRELIABLE : MSG_BROADCAST, get_user_msgid("ScreenFade"), _, id);
	write_short((1<<12) * Timer)
	write_short(1<<12)
	write_short(0)
	write_byte(Colors[0])
	write_byte(Colors[1])
	write_byte(Colors[2])
	write_byte(Alpha)
	message_end()
} 
