/***************************************************************************\
		   ========================================
		    * || [ZPSp] Game Mode Example: Remix || *
		   ========================================

	-------------------
	 *||DESCRIPTION||*
	-------------------

	This is an example game mode in which there are half zombies
	and half humans. You can use this plugin as a guide on how to
	make custom game modes for Zombie Plague Special.
	
	-- Need All Special Classes (including custom special class) Enabled in .ini to works without bugs

	-------------
	 *||CVARS||*
	-------------

	- zp_remix_minplayers 2
		- Minimum players required for this game mode to be
		  activated

	- zp_remix_human_hp 3000
		- Special human's Health
	
	- zp_remix_zombie_hp 7000
		- Special zombie's Health

	- zp_remix_inf_ratio 0.5
		- Infection ratio of this game mode i.e how many players
		  will turn into zombies [Total players * infection ratio]
		  	
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
new g_gameid, cvar_minplayers, cvar_ratio, cvar_humanhp, cvar_zombiehp, g_msg_sync, class_random[33]

#define IsRemixRound() (zp_get_current_mode() == g_gameid)

/*-------------------------------------
--> Plugin Register
--------------------------------------*/
public plugin_init() {

	register_plugin("[ZP] Remix Mode","1.4", "@bdul! | [P]erfec[T] [S]cr[@]s[H]")
	
	cvar_minplayers = register_cvar("zp_remix_minplayers", "2")
	cvar_humanhp = register_cvar("zp_remix_special_human_hp", "3000")
	cvar_zombiehp = register_cvar("zp_remix_special_zombie_hp", "7000")
	cvar_ratio = register_cvar("zp_remix_inf_ratio", "0.5")
	
	g_msg_sync = CreateHudSyncObj()
}

/*-------------------------------------
--> Plugin Precache
--------------------------------------*/
public plugin_precache() {
	
	// Register gamemode
	g_gameid = zpsp_register_gamemode("Remix", DEFAULT_FLAG_ACESS, g_chance, 0, ZP_DM_BALANCE)

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
	register_native("zp_is_remix_round", "native_is_remix_round")
}
public native_is_remix_round(plugin_id, num_params) {
	return IsRemixRound();
}

/*-------------------------------------
--> Gamemode functions
--------------------------------------*/
public zp_player_spawn_post(id) {
	// Check for current mode 
	if(!IsRemixRound())
		return;

	turn_random_class(id, zp_get_user_zombie(id) ? GET_ZOMBIE : GET_HUMAN)
}

public zp_round_started_pre(game) {
	// Check if it is our game mode
	if(game != g_gameid)
		return PLUGIN_CONTINUE
	
	// Check for min players
	if(zp_get_alive_players() < get_pcvar_num(cvar_minplayers))
		return ZP_PLUGIN_HANDLED
	
	// Make the compiler happy =)
	return PLUGIN_CONTINUE
}

public zp_round_started(game, id) {
	// Check if it is our game mode
	if(game == g_gameid)
		start_remix_mode()	
}

// This function contains the whole code behind this game mode
start_remix_mode() {
	// Show HUD notice
	set_hudmessage(221, 156, 21, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_msg_sync, "Remix Mode !!!")

	// Create and initialize some important vars
	static i_zombies, i_max_zombies, id, i_alive
	i_alive = zp_get_alive_players()
	id = 0
	
	// Get the no of players we have to turn into assassins
	i_max_zombies = floatround((i_alive * get_pcvar_float(cvar_ratio)), floatround_ceil)
	i_zombies = 0
	
	// Randomly turn players into Assassins
	while (i_zombies < i_max_zombies) {
		// Keep looping through all players
		if ((++id) > MaxClients) id = 1
		
		if (!is_user_alive(id))
			continue;

		if(zp_get_zombie_special_class(id) || random_num(1, 5) != 1)
			continue;

		if(turn_random_class(id, GET_ZOMBIE))
			i_zombies++ // Increase counter
	}
	
	// Turn the remaining players into special humans
	for (id = 1; id <= MaxClients; id++) {
		if (!is_user_alive(id))
			continue;

		if(zp_get_user_zombie(id) || zp_get_human_special_class(id))
			continue;

		turn_random_class(id, GET_HUMAN)
	}
}

/*-------------------------------------
--> Stock
--------------------------------------*/
stock turn_random_class(id, team) {
	if(!is_user_alive(id))
		return false;

	class_random[id] = -1
	if(team == GET_ZOMBIE) {
		// Fixing Make Special Class if this class are disable
		while(zp_is_special_class_enable(GET_ZOMBIE, class_random[id]) == 0)
			class_random[id] = random_num(NEMESIS, DRAGON+zp_get_custom_special_count(GET_ZOMBIE))

		zp_make_user_special(id, class_random[id], GET_ZOMBIE) // Turn into a randomly special
		set_user_health(id, get_pcvar_num(cvar_zombiehp)) // Set his health
		return true;
	}
	else if(team == GET_HUMAN) {
		// Fixing Make Special Class if this class are disable
		while(zp_is_special_class_enable(GET_HUMAN, class_random[id]) == 0)
			class_random[id] = random_num(SURVIVOR, SPY + zp_get_custom_special_count(GET_HUMAN))

		zp_make_user_special(id, class_random[id], GET_HUMAN) // Turn into a randomly special
		set_user_health(id, get_pcvar_num(cvar_humanhp)) // Set his health
		return true;
	}
	return false;
}
