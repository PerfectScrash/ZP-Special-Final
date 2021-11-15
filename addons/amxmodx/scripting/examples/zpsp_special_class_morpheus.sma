/* 
	Custom Human Special Class Example 
	
	See The Code for creating more specials humans with powers 
*/


#include <amxmodx>
#include <hamsandwich>
#include <fakemeta>
#include <cstrike>
#include <zombie_plague_special>
#include <amx_settings_api>

#if ZPS_INC_VERSION < 44
	#assert Zombie Plague Special 4.4 (Beta) Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

new const ZP_CUSTOMIZATION_FILE[] = "zombie_plague_special.ini"

new Array:g_sound_morpheus, g_ambience_sounds, Array:g_sound_amb_morpheus_dur, Array: g_sound_ambience_morpheus

// Default Sounds
new const sound_morpheus[][] = { "zombie_plague/survivor1.wav" }
new const ambience_morpheus_sound[][] = { "media/Half-Life16.mp3" } 
new const ambience_morpheus_dur[][] = { "120" }

new const sp_name[] = "Morpheus"
new const sp_model[] = "sas"
new const sp_hp = 10000
new const sp_speed = 300
new const Float:sp_gravity = 0.5
new const sp_aura_size = 25
new const sp_clip_type = 2 // Unlimited Ammo (0 - Disable | 1 - Unlimited Semi Clip | 2 - Unlimited Clip)
new const sp_allow_glow = 1
new const sp_color_r = 255
new const sp_color_g = 255
new const sp_color_b = 255
new acess_flags[2]

// Default MP5 Models
new const default_v_mp5[] = "models/v_mp5.mdl"
new const default_p_mp5[] = "models/p_mp5.mdl"

// Variables
new g_gameid, g_msg_sync, cvar_minplayers, g_speciald, cvar_damage, g_maxplayers
new v_mp5_model[64], p_mp5_model[64]
new const g_chance = 90

// Enable Ambience?
#define AMBIENCE_ENABLE 1

// Ambience sounds task
#define TASK_AMB 3256

public plugin_init()
{
	// Plugin registeration.
	register_plugin("[ZP] Class Morpheus","1.1", "[P]erfec[T] [S]cr[@]s[H]")
	
	cvar_minplayers = register_cvar("zp_morpheus_minplayers", "2")
	cvar_damage = register_cvar("zp_morpheus_damage_multi", "1.5") 
	
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage")
	register_event("CurWeapon","checkModel","be","1=1")
	
	g_msg_sync = CreateHudSyncObj()
	g_maxplayers = get_maxplayers()
}

// Game modes MUST be registered in plugin precache ONLY
public plugin_precache()
{
	// Read the access flag
	new user_access[40]
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE MORPHEUS", user_access, charsmax(user_access)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE MORPHEUS", "a")
		formatex(user_access, charsmax(user_access), "a")
	}
	acess_flags[0] = read_flags(user_access)
	
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "MAKE MORPHEUS", user_access, charsmax(user_access)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "MAKE MORPHEUS", "a")
		formatex(user_access, charsmax(user_access), "a")
	}
	acess_flags[1] = read_flags(user_access)
	
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_MP5 MORPHEUS", v_mp5_model, charsmax(v_mp5_model)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_MP5 MORPHEUS", default_v_mp5)
		formatex(v_mp5_model, charsmax(v_mp5_model), default_v_mp5)
	}
	precache_model(v_mp5_model)
	
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "P_MP5 MORPHEUS", p_mp5_model, charsmax(p_mp5_model)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "P_MP5 MORPHEUS", default_p_mp5)
		formatex(p_mp5_model, charsmax(p_mp5_model), default_p_mp5)
	}
	precache_model(p_mp5_model)
	
	new i
	
	g_sound_morpheus = ArrayCreate(64, 1)
	g_sound_ambience_morpheus = ArrayCreate(64, 1)
	g_sound_amb_morpheus_dur = ArrayCreate(64, 1)
	
	// Load from external file
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND MORPHEUS", g_sound_morpheus)
	
	// Precache the play sounds
	if (ArraySize(g_sound_morpheus) == 0)
	{
		for (i = 0; i < sizeof sound_morpheus; i++)
			ArrayPushString(g_sound_morpheus, sound_morpheus[i])
		
		// Save to external file
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND MORPHEUS", g_sound_morpheus)
	}
	
	// Precache sounds
	new sound[100]
	for (i = 0; i < ArraySize(g_sound_morpheus); i++)
	{
		ArrayGetString(g_sound_morpheus, i, sound, charsmax(sound))
		precache_ambience(sound)
	}
	
	// Ambience Sounds
	g_ambience_sounds = AMBIENCE_ENABLE
	if(!amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "MORPHEUS ENABLE", g_ambience_sounds))
		amx_save_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "MORPHEUS ENABLE", g_ambience_sounds)
	
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "MORPHEUS SOUNDS", g_sound_ambience_morpheus)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "MORPHEUS DURATIONS", g_sound_amb_morpheus_dur)
	
	
	// Save to external file
	if (ArraySize(g_sound_ambience_morpheus) == 0)
	{
		for (i = 0; i < sizeof ambience_morpheus_sound; i++)
			ArrayPushString(g_sound_ambience_morpheus, ambience_morpheus_sound[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "MORPHEUS SOUNDS", g_sound_ambience_morpheus)
	}
	
	if (ArraySize(g_sound_amb_morpheus_dur) == 0)
	{
		for (i = 0; i < sizeof ambience_morpheus_dur; i++)
			ArrayPushString(g_sound_amb_morpheus_dur, ambience_morpheus_dur[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "MORPHEUS DURATIONS", g_sound_amb_morpheus_dur)
	}
	
	// Ambience Sounds
	new buffer[250]
	if (g_ambience_sounds) {
		for (i = 0; i < ArraySize(g_sound_ambience_morpheus); i++) {
			ArrayGetString(g_sound_ambience_morpheus, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
	}
	
	// Register our game mode
	g_gameid = zpsp_register_gamemode(sp_name, acess_flags[0], g_chance, 0, 0)
	g_speciald = zp_register_human_special(sp_name, sp_model, sp_hp, sp_speed, sp_gravity, acess_flags[1], sp_clip_type, sp_aura_size, sp_allow_glow, sp_color_r, sp_color_g, sp_color_b)
}

public plugin_natives()
{
	register_native("zp_get_user_morpheus", "native_get_user_morpheus", 1)
	register_native("zp_make_user_morpheus", "native_make_user_morpheus", 1)
	register_native("zp_get_morpheus_count", "native_get_morpheus_count", 1)
	register_native("zp_is_morpheus_round", "native_is_morpheus_round", 1)
}

// Mp5 Model
public checkModel(id)
{
	if (!is_user_alive(id) || zp_get_user_zombie(id))
		return PLUGIN_HANDLED;
	
	if (get_user_weapon(id) == CSW_MP5NAVY && zp_get_human_special_class(id) == g_speciald)
	{
		set_pev(id, pev_viewmodel2, v_mp5_model)
		set_pev(id, pev_weaponmodel2, p_mp5_model)
	}
	return PLUGIN_HANDLED
}

// Mp5 Damage
public fw_TakeDamage(victim, inflictor, attacker, Float:damage, damage_type)
{
	if(is_user_alive(attacker) && zp_get_human_special_class(attacker) == g_speciald && get_user_weapon(attacker) == CSW_MP5NAVY)
		SetHamParamFloat(4, damage * get_pcvar_float(cvar_damage))
}

// Player spawn post
public zp_player_spawn_post(id)
{
	// Check for current mode
	if(zp_get_current_mode() == g_gameid)
		zp_infect_user(id)
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
		start_morpheus_mode()
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
		ArrayGetString(g_sound_morpheus, random_num(0, ArraySize(g_sound_morpheus) - 1), sound, charsmax(sound))
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
		start_morpheus_mode()
	
	// Make the compiler happy again =)
	return PLUGIN_CONTINUE
}

// This function contains the whole code behind this game mode
start_morpheus_mode()
{
	new id, i,  has_morpheus
	has_morpheus = false
	for (i = 1; i <= g_maxplayers; i++) {
		if(zp_get_human_special_class(i) == g_speciald) {
			if(!is_user_alive(i))
				continue

			id = i
			has_morpheus = true
		}
	}

	if(!has_morpheus) {
		id = zp_get_random_player()
		zp_make_user_special(id, g_speciald, GET_HUMAN)
	}
	
	static name[32]; get_user_name(id, name, 31);
	set_hudmessage(sp_color_r, sp_color_g, sp_color_b, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_msg_sync, "%s is a %s", name, sp_name)
		
	// Turn the remaining players into zombies
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Not alive
		if(!is_user_alive(id))
			continue;
			
		// Survivor or already a zombie
		if(zp_get_human_special_class(id) == g_speciald || zp_get_user_zombie(id))
			continue;
			
		// Turn into a zombie
		zp_infect_user(id)
	}

}

public start_ambience_sounds()
{
	if (!g_ambience_sounds)
		return;
	
	// Variables
	static amb_sound[64], sound,  str_dur[20]
	
	// Select our ambience sound
	sound = random_num(0, ArraySize(g_sound_ambience_morpheus)-1)

	ArrayGetString(g_sound_ambience_morpheus, sound, amb_sound, charsmax(amb_sound))
	ArrayGetString(g_sound_amb_morpheus_dur, sound, str_dur, charsmax(str_dur))
	
	zp_play_sound(0, amb_sound)
	
	// Start the ambience sounds
	set_task(str_to_float(str_dur), "start_ambience_sounds", TASK_AMB)
}
public zp_round_ended() {
	remove_task(TASK_AMB)
}

public zp_user_humanized_post(id)
{
	if(zp_get_human_special_class(id) == g_speciald) 
	{
		if(!zp_has_round_started())
			zp_set_custom_game_mod(g_gameid)	// Force Start Morpheus Round
		
		fm_give_item(id, "weapon_mp5navy")
		cs_set_user_bpammo(id, CSW_MP5NAVY, 90)
	}
}

public native_get_user_morpheus(id)
	return (zp_get_human_special_class(id) == g_speciald)
	
public native_make_user_morpheus(id)
	return zp_make_user_special(id, g_speciald, 0)
	
public native_get_morpheus_count()
	return zp_get_special_count(0, g_speciald)
	
public native_is_morpheus_round()
	return (zp_get_current_mode() == g_gameid)
	
// Give an item to a player (from fakemeta_util)
stock fm_give_item(id, const item[])
{
	static ent
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, item))
	if(!pev_valid(ent)) return;
	
	static Float:originF[3]
	pev(id, pev_origin, originF)
	set_pev(ent, pev_origin, originF)
	set_pev(ent, pev_spawnflags, pev(ent, pev_spawnflags) | SF_NORESPAWN)
	dllfunc(DLLFunc_Spawn, ent)
	
	static save
	save = pev(ent, pev_solid)
	dllfunc(DLLFunc_Touch, ent, id)
	if(pev(ent, pev_solid) != save)
		return;
	
	engfunc(EngFunc_RemoveEntity, ent)
}


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
