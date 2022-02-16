/* 
	Custom Human Special Class Example 
	
	See The Code for creating more specials humans with powers 
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
new const sp_name[] = "Morpheus"
new const sp_model[] = "sas"
new const sp_hp = 10000
new const sp_speed = 300
new const Float:sp_gravity = 0.5
new const sp_aura_size = 25
new const sp_clip_type = 2 // Unlimited Ammo (0 - Disable | 1 - Unlimited Semi Clip | 2 - Unlimited Clip)
new const sp_allow_glow = 1
new sp_color_rgb[3] = { 255, 255, 255 }

// Default MP5 Models
new const default_v_mp5[] = "models/v_mp5.mdl"
new const default_p_mp5[] = "models/p_mp5.mdl"

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
	{ "media/Half-Life16.mp3", 120.0 }
}

// Round start sounds
new const gamemode_round_start_snd[][] = { 
	"zombie_plague/survivor1.wav" 
}

/*-------------------------------------
--> Gamemode Config
--------------------------------------*/
new const g_chance = 90						// Gamemode chance
#define Start_Mode_Acess ADMIN_IMMUNITY

/*-------------------------------------
--> Variables/Defines
--------------------------------------*/
new g_gameid, g_msg_sync, cvar_minplayers, g_special_id, cvar_damage, v_mp5_model[64], p_mp5_model[64]

#define GetUserMorpheus(%1) (zp_get_human_special_class(%1) == g_special_id)
#define IsMorpheusRound() (zp_get_current_mode() == g_gameid)

/*-------------------------------------
--> Plugin registeration.
--------------------------------------*/
public plugin_init()
{
	register_plugin("[ZPSp] Special Class: Morpheus","1.3", "[P]erfec[T] [S]cr[@]s[H]")
	
	cvar_minplayers = register_cvar("zp_morpheus_minplayers", "2")
	cvar_damage = register_cvar("zp_morpheus_damage_multi", "1.5") 
	
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage")
	// register_event("CurWeapon","checkModel","be","1=1")
	
	g_msg_sync = CreateHudSyncObj()
}

/*-------------------------------------
--> Plugin Precache
--------------------------------------*/
public plugin_precache() {
	// Load morpheus weapon model
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_MP5 MORPHEUS", v_mp5_model, charsmax(v_mp5_model))) {
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_MP5 MORPHEUS", default_v_mp5)
		copy(v_mp5_model, charsmax(v_mp5_model), default_v_mp5)
	}
	precache_model(v_mp5_model)
	
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "P_MP5 MORPHEUS", p_mp5_model, charsmax(p_mp5_model))) {
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "P_MP5 MORPHEUS", default_p_mp5)
		copy(p_mp5_model, charsmax(p_mp5_model), default_p_mp5)
	}
	precache_model(p_mp5_model)
	
	// Register our game mode
	g_gameid = zpsp_register_gamemode(sp_name, Start_Mode_Acess, g_chance, 0, 0)
	g_special_id = zp_register_human_special(sp_name, sp_model, sp_hp, sp_speed, sp_gravity, Make_Acess, sp_clip_type, sp_aura_size, sp_allow_glow, sp_color_rgb[0], sp_color_rgb[1], sp_color_rgb[2])

	static i
	// Register round start sound
	for(i = 0; i < sizeof gamemode_round_start_snd; i++)
		zp_register_start_gamemode_snd(g_gameid, gamemode_round_start_snd[i])

	// Register ambience sounds
	for (i = 0; i < sizeof gamemode_ambiences; i++)
		zp_register_gamemode_ambience(g_gameid, gamemode_ambiences[i][AmbiencePrecache], gamemode_ambiences[i][AmbienceDuration], ambience_enable)
}

/*-------------------------------------
--> Natives
--------------------------------------*/
public plugin_natives() {
	register_native("zp_get_user_morpheus", "native_get_user_morpheus")
	register_native("zp_make_user_morpheus", "native_make_user_morpheus")
	register_native("zp_get_morpheus_count", "native_get_morpheus_count")
	register_native("zp_is_morpheus_round", "native_is_morpheus_round")
}
public native_get_user_morpheus(plugin_id, num_params)
	return GetUserMorpheus(get_param(1));
	
public native_make_user_morpheus(plugin_id, num_params)
	return zp_make_user_special(get_param(1), g_special_id, GET_HUMAN);
	
public native_get_morpheus_count(plugin_id, num_params)
	return zp_get_special_count(GET_HUMAN, g_special_id);
	
public native_is_morpheus_round(plugin_id, num_params)
	return (IsMorpheusRound());

/*-------------------------------------
--> Class Functions
--------------------------------------*/
// Mp5 Model
public zp_fw_deploy_weapon(id, weaponid) {
	if(!is_user_alive(id))
		return PLUGIN_CONTINUE;

	if(zp_get_user_zombie(id) || !GetUserMorpheus(id))
		return PLUGIN_CONTINUE;
	
	if(weaponid == CSW_MP5NAVY) {
		set_pev(id, pev_viewmodel2, v_mp5_model)
		set_pev(id, pev_weaponmodel2, p_mp5_model)
	}
	return PLUGIN_CONTINUE;
}

// Mp5 Damage
public fw_TakeDamage(victim, inflictor, attacker, Float:damage, damage_type) {
	if(!is_user_alive(attacker))
		return HAM_IGNORED

	if(GetUserMorpheus(attacker) && get_user_weapon(attacker) == CSW_MP5NAVY)
		SetHamParamFloat(4, damage * get_pcvar_float(cvar_damage))

	return HAM_IGNORED
}

// Turn into morpheus
public zp_user_humanized_post(id) {
	if(!GetUserMorpheus(id))
		return; 

	if(!zp_has_round_started())
		zp_set_custom_game_mod(g_gameid)	// Force Start Morpheus Round
	
	// Give MP5
	zp_give_item(id, "weapon_mp5navy", 1)
}

/*-------------------------------------
--> Gamemode functions
--------------------------------------*/
// Player spawn post
public zp_player_spawn_post(id) {
	if(IsMorpheusRound())
		zp_infect_user(id)
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
	if(gameid == g_gameid) // Check if our game mode was called
		start_morpheus_mode()
}

// This function contains the whole code behind this game mode
start_morpheus_mode() {
	static id, i, has_morpheus
	has_morpheus = false
	for (i = 1; i <= MaxClients; i++) {
		if(!is_user_alive(i))
			continue
		if(!GetUserMorpheus(i)) 
			continue;

		id = i
		has_morpheus = true
		break;		
	}

	if(!has_morpheus) {
		id = zp_get_random_player()
		zp_make_user_special(id, g_special_id, GET_HUMAN)
	}

	static name[32]; get_user_name(id, name, charsmax(name));
	set_hudmessage(sp_color_rgb[0], sp_color_rgb[1], sp_color_rgb[2], -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_msg_sync, "%s is a %s", name, sp_name)
		
	// Turn the remaining players into zombies
	for (id = 1; id <= MaxClients; id++) {
		if(!is_user_alive(id))
			continue;
			
		// Morpheus or already a zombie
		if(GetUserMorpheus(id) || zp_get_user_zombie(id))
			continue;

		zp_infect_user(id) // Turn into a zombie
	}
}
