/***************************************************************************\
		   ========================================
		    * || [ZPSp] Game Mode Nightmare || *
		   ========================================

	-------------------
	 *||DESCRIPTION||*
	-------------------

	This is an example game mode in which there are half Assassins/Nemesis
	and half Survivros/Snipers. You can use this plugin as a guide on how to
	make custom game modes for Zombie Plague Special.

	-------------
	 *||CVARS||*
	-------------

	- zp_night_minplayers 2
		- Minimum players required for this game mode to be
		  activated

	- zp_night_sniper_hp 1.5
		- Snipers HP multiplier
	
	- zp_night_assassin_hp 1.0
		- Assassins HP multiplier
		
	- zp_night_survivor_hp 1.5
		- Survivors HP multiplier
	
	- zp_night_nemesis_hp 1.0
		- Nemesis HP multiplier

	- zp_night_inf_ratio 0.5
		- Infection ratio of this game mode i.e how many players
		  will turn into assassins [Total players * infection ratio]
		  
		  	
\***************************************************************************/

#include <amxmodx>
#include <fun>
#include <zombie_plague_special>
#include <amx_settings_api>

#if ZPS_INC_VERSION < 45
	#assert Zombie Plague Special 4.5 Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

/*-------------------------------------
--> Sound Config
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
	"zombie_plague/nemesis1.wav", 
	"zombie_plague/survivor1.wav" 
}

/*-------------------------------------
--> Gamemode Config
--------------------------------------*/
new const g_chance = 90						// Gamemode chance
#define DEFAULT_FLAG_ACESS ADMIN_IMMUNITY 	// Flag Acess mode

/*-------------------------------------
--> Variables
--------------------------------------*/
new g_gameid, cvar_minplayers, cvar_ratio, cvar_sniperhp, cvar_assahp, g_msg_sync, cvar_nemhp, cvar_survhp

/*-------------------------------------
--> Plugin Register
--------------------------------------*/
public plugin_init() {
	register_plugin("[ZP] Nightmare Mode","1.3", "@bdul! | [P]erfec[T] [S]cr[@]s[H]")
	
	// Register some cvars
	cvar_minplayers = register_cvar("zp_night_minplayers", "2")
	cvar_sniperhp = register_cvar("zp_night_sniper_hp", "1.5")
	cvar_assahp = register_cvar("zp_night_assassin_hp", "1.0")
	cvar_survhp = register_cvar("zp_night_survivor_hp", "1.0")
	cvar_nemhp = register_cvar("zp_night_nemesis_hp", "0.3")
	cvar_ratio = register_cvar("zp_night_inf_ratio", "0.5")
	
	// Hud stuff
	g_msg_sync = CreateHudSyncObj()
}

/*-------------------------------------
--> Plugin Precache
--------------------------------------*/
public plugin_precache() {
	if(!zp_is_special_class_enable(GET_ZOMBIE, NEMESIS) || !zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN)
	|| !zp_is_special_class_enable(GET_HUMAN, SURVIVOR) || !zp_is_special_class_enable(GET_HUMAN, SNIPER)) {
		set_fail_state("[ZPSp Nightmare mode] Some special class (Nemesis/Survivor/Sniper/Assassin) are disable")
		return;
	}
	
	// Register our game mode
	g_gameid = zpsp_register_gamemode("Nightmare", DEFAULT_FLAG_ACESS, g_chance, 0, ZP_DM_BALANCE)

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
	register_native("zp_is_nightmare_round", "native_is_nightmare_round")
}

// Native: zp_is_nightmare_round()
public native_is_nightmare_round(plugin_id, num_params) {
	return (zp_get_current_mode() == g_gameid);
}

/*-------------------------------------
--> Gamemode functions
--------------------------------------*/
// Player spawn post
public zp_player_spawn_post(id) {
	// Check for current mode
	if(zp_get_current_mode() != g_gameid)
		return
	
	// Randonize
	static g_random
	g_random = random_num(0, 1)

	// Check if the player is a zombie
	if(zp_get_alive_specials(GET_ZOMBIE) < zp_get_alive_specials(GET_HUMAN)) {
		zp_make_user_special(id, g_random ? NEMESIS : ASSASSIN , GET_ZOMBIE) // Transform user in Assassin/Nemesis
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_nemhp : cvar_assahp))) // Seting Nemesis/Assassin Health
	}
	else {
		zp_make_user_special(id, g_random ? SNIPER : SURVIVOR , GET_HUMAN) // Transform user in Sniper/Survivor
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_sniperhp : cvar_survhp)))// Seting Sniper/Survivor Health
	}
}

public zp_game_mode_selected_pre(id, game) {
	if(game != g_gameid)
		return PLUGIN_CONTINUE;

	if(!zp_is_special_class_enable(GET_ZOMBIE, NEMESIS) || !zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN)
	|| !zp_is_special_class_enable(GET_HUMAN, SURVIVOR) || !zp_is_special_class_enable(GET_HUMAN, SNIPER))
		return ZP_PLUGIN_SUPERCEDE;

	return PLUGIN_CONTINUE;
}

public zp_round_started_pre(game) {
	// Check if it is our game mode
	if(game != g_gameid)
		return PLUGIN_CONTINUE;
	
	// Check for min players
	if(zp_get_alive_players() < get_pcvar_num(cvar_minplayers))
		return ZP_PLUGIN_HANDLED;

	if(!zp_is_special_class_enable(GET_ZOMBIE, NEMESIS) || !zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN)
	|| !zp_is_special_class_enable(GET_HUMAN, SURVIVOR) || !zp_is_special_class_enable(GET_HUMAN, SNIPER))
		return ZP_PLUGIN_HANDLED;

	// Make the compiler happy =)
	return PLUGIN_CONTINUE
}
public zp_round_started(game, id) {
	if(game == g_gameid)
		start_nightmare_mode()
}

// This function contains the whole code behind this game mode
start_nightmare_mode() {
	// Show HUD notice
	set_hudmessage(255, 0, 100, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_msg_sync, "Nightmare Mode !!!")

	// Create and initialize some important vars
	static i_max_sp_zombies, id, i_alive, g_random
	i_alive = zp_get_alive_players()
	id = 0
	
	// Get the no of players we have to turn into assassins/nemesis
	i_max_sp_zombies = floatround(i_alive * get_pcvar_float(cvar_ratio), floatround_ceil)
	
	// Randomly turn players into Assassins
	while (zp_get_alive_specials(GET_ZOMBIE) < i_max_sp_zombies) {
		// Keep looping through all players
		if ((++id) > MaxClients) id = 1
		
		// Random chance
		if (!is_user_alive(id))
			continue;
		
		if(random_num(1, 5) != 1 || zp_get_zombie_special_class(id))
			continue;

		g_random = random_num(0, 1) // Randonize
		zp_make_user_special(id, g_random ? NEMESIS : ASSASSIN , GET_ZOMBIE)  // Transform user in Assassin/Nemesis
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_nemhp : cvar_assahp)))  // Seting Nemesis/Assassin Health
	}
	
	// Turn the remaining players into snipers/survivors
	for (id = 1; id <= MaxClients; id++)
	{
		// Only those of them who are alive and are not assassins/nemesis
		if (!is_user_alive(id))
			continue;
		if(zp_get_zombie_special_class(id))
			continue;

		g_random = random_num(0, 1) // Randonize
		zp_make_user_special(id, g_random ? SNIPER : SURVIVOR , GET_HUMAN)  // Transform user in Sniper/Survivor 
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_sniperhp : cvar_survhp))) // Seting Sniper/Survivor Health
	}
}

/*-------------------------------------
--> Stocks
--------------------------------------*/
stock zp_get_alive_specials(user_class) {
	static special, id
	special = 0
	
	for (id = 1; id <= MaxClients; id++) {
		if(is_user_alive(id) && (zp_get_zombie_special_class(id) && user_class == GET_ZOMBIE 
		|| zp_get_human_special_class(id) && user_class == GET_HUMAN)) 
			special++
	}
	return special;
}