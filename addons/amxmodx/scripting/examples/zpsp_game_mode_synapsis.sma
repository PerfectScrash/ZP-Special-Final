/***************************************************************************\
		 ========================================
		 * || [ZPSp] Game Mode Example: Synapsis || *
		 ========================================

	-------------------
	 *||DESCRIPTION||*
	-------------------

	This is an example game mode in which there are half aliens
	and half weskers. You can use this plugin as a guide on how to
	make custom game modes for Zombie Plague Special.

	-------------
	 *||CVARS||*
	-------------

	- zp_synapsis_minplayers 2
		- Minimum players required for this game mode to be activated

	- zp_synapsis_wesker_hp 1.5
		- Wesker HP multiplier
	
	- zp_synapsis_alien_hp 1.0
		- Alien HP multiplier

	- zp_synapsis_inf_ratio 0.5
		- Infection ratio of this game mode i.e how many players
		 will turn into aliens [Total players * infection ratio]
		 	
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
--> Variables/Defines
--------------------------------------*/
new g_gameid, cvar_minplayers, cvar_ratio, cvar_weskerhp, cvar_alienhp, g_msg_sync, g_alien_id

// Make/Get User Alien (Without use include)
#define zp_make_user_alien(%1) zp_make_user_special(%1, g_alien_id, GET_ZOMBIE)
#define zp_get_user_alien(%1) (zp_get_zombie_special_class(%1) == g_alien_id)

/*-------------------------------------
--> Plugin Register
--------------------------------------*/
public plugin_init() {
	register_plugin("[ZP] Synapsis Mode","1.3", "@bdul! | [P]erfec[T] [S]cr[@]s[H]")
	
	// Register some cvars
	cvar_minplayers = register_cvar("zp_synapsis_minplayers", "2")
	cvar_weskerhp = register_cvar("zp_synapsis_wesker_hp", "1.0")
	cvar_alienhp = register_cvar("zp_synapsis_alien_hp", "0.3")
	cvar_ratio = register_cvar("zp_synapsis_inf_ratio", "0.5")
	
	g_msg_sync = CreateHudSyncObj() // Hud stuff
	g_alien_id = zp_get_special_class_id(GET_ZOMBIE, "Alien") // Alien Index
}

/*-------------------------------------
--> Plugin precache
--------------------------------------*/
public plugin_precache()
{
	if(!zp_is_special_class_enable(GET_ZOMBIE, zp_get_special_class_id(GET_ZOMBIE, "Alien")) || !zp_is_special_class_enable(GET_HUMAN, WESKER)) {
		set_fail_state("[ZPSp Synapsis] Some special class (Alien/Wesker) are disable")
		return;
	}
	
	// Register our game mode
	g_gameid = zpsp_register_gamemode("Synapsis", DEFAULT_FLAG_ACESS, g_chance, 0, ZP_DM_BALANCE)

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
	register_native("zp_is_synapsis_round", "native_is_synapsis_round")
}
public native_is_synapsis_round(plugin_id, num_params) {
	return (zp_get_current_mode() == g_gameid)
}

/*-------------------------------------
--> Gamemode functions
--------------------------------------*/
// Player spawn post
public zp_player_spawn_post(id) {
	// Check for current mode
	if(zp_get_current_mode() != g_gameid)
		return
	
	// Check if the player is a zombie
	if(zp_get_user_zombie(id)) {
		zp_make_user_alien(id) // Make him an alien instead
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_alienhp))) // Set his health
	}
	else {
		zp_make_user_wesker(id) // Make him a wesker
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_weskerhp))) // Set his health
	}
}
public zp_game_mode_selected_pre(id, game) {
	if(game != g_gameid)
		return PLUGIN_CONTINUE;

	if(!zp_is_special_class_enable(GET_ZOMBIE, g_alien_id) || !zp_is_special_class_enable(GET_HUMAN, WESKER))
		return ZP_PLUGIN_SUPERCEDE;

	return PLUGIN_CONTINUE;
}

public zp_round_started_pre(game) {
	// Check if it is our game mode
	if(game != g_gameid)
		return PLUGIN_CONTINUE;
	
	// Check for min players
	if(zp_get_alive_players() < get_pcvar_num(cvar_minplayers))
		return ZP_PLUGIN_HANDLED

	if(!zp_is_special_class_enable(GET_ZOMBIE, g_alien_id) || !zp_is_special_class_enable(GET_HUMAN, WESKER))
		return ZP_PLUGIN_HANDLED

	// Make the compiler happy =)
	return PLUGIN_CONTINUE
}

public zp_round_started(gameid, id) {
	// Check if our game mode was called
	if(gameid == g_gameid)
		start_synapsis_mode()
}

// This function contains the whole code behind this game mode
start_synapsis_mode() {
	// Show HUD notice
	set_hudmessage(221, 156, 21, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_msg_sync, "Synapsis Mode !!!")

	// Create and initialize some important vars
	static i_aliens, i_max_aliens, id, i_alive
	i_alive = zp_get_alive_players()
	id = 0
	
	// Get the no of players we have to turn into Aliens
	i_max_aliens = floatround((i_alive * get_pcvar_float(cvar_ratio)), floatround_ceil)
	i_aliens = 0
	
	// Randomly turn players into Aliens
	while (i_aliens < i_max_aliens) {
		// Keep looping through all players
		if((++id) > MaxClients) id = 1

		if(!is_user_alive(id))
			continue;
		
		if(random_num(1, 5) != 1 || zp_get_user_alien(id)) 
			continue;

		zp_make_user_alien(id) // Make user alien
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_alienhp))) // Set his health
		i_aliens++ // Increase counter
	}

	// Turn the remaining players into wesker
	for (id = 1; id <= MaxClients; id++) {
		if(!is_user_alive(id))
			continue;
		
		if(zp_get_user_alien(id) || zp_get_user_wesker(id))
			continue;

		zp_make_user_wesker(id) // Turn into a wesker
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_weskerhp))) // Set his health
	}
}