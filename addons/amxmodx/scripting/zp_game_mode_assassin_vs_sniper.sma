/***************************************************************************\
		   ========================================
		    * || [ZPSp] Game Mode Assassin vs Sniper || *
		   ========================================

	-------------------
	 *||DESCRIPTION||*
	-------------------

	This is an example game mode in which there are half Assassins
	and half Snipers. You can use this plugin as a guide on how to
	make custom game modes for Zombie Plague Special.

	-------------
	 *||CVARS||*
	-------------

	- zp_avsm_minplayers 2
		- Minimum players required for this game mode to be
		  activated

	- zp_avsm_sniper_hp 1.5
		- Snipers HP multiplier
	
	- zp_avsm_assassin_hp 1.0
		- Assassins HP multiplier

	- zp_avsm_inf_ratio 0.5
		- Infection ratio of this game mode i.e how many players
		  will turn into assassins [Total players * infection ratio]
		  	
\***************************************************************************/

#include <amxmodx>
#include <fun>
#include <zombie_plague_special>
#include <amx_settings_api>

#if ZPS_INC_VERSION < 44
	#assert Zombie Plague Special 4.4 (Beta) Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

new const ZP_CUSTOMIZATION_FILE[] = "zombie_plague_special.ini"

new Array:g_sound_avs, g_ambience_sounds, Array:g_sound_amb_avs_duration, Array: g_sound_ambience_avs

// Default Sounds
new const sound_avs[][] = { "zombie_plague/nemesis1.wav", "zombie_plague/survivor1.wav" }
new const ambience_avs_sound[][] = { "zombie_plague/ambience.wav" } 
new const ambience_avs_dur[][] = { "17" }

// Variables
new g_gameid, g_maxplayers, cvar_minplayers, cvar_ratio, cvar_sniperhp, cvar_assahp, g_msg_sync

new const g_chance = 90

// Enable Ambience?
#define AMBIENCE_ENABLE 0

// Ambience sounds task
#define TASK_AMB 3256

public plugin_init()
{
	// Plugin registeration.
	register_plugin("[ZP] Assassin vs Snipers Mode","1.2", "@bdul! | [P]erfec[T] [S]cr[@]s[H]")
	
	// Register some cvars
	// Edit these according to your liking
	cvar_minplayers = register_cvar("zp_avsm_minplayers", "2")
	cvar_sniperhp = register_cvar("zp_avsm_sniper_hp", "1.0")
	cvar_assahp = register_cvar("zp_avsm_assassin_hp", "0.3")
	cvar_ratio = register_cvar("zp_avsm_inf_ratio", "0.5")
	
	// Get maxplayers
	g_maxplayers = get_maxplayers()
	
	// Hud stuff
	g_msg_sync = CreateHudSyncObj()
}

public plugin_natives() {
	register_native("zp_is_avs_round", "native_is_avs_round", 1)
}

// Game modes MUST be registered in plugin precache ONLY
public plugin_precache()
{
	if(!zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN) || !zp_is_special_class_enable(GET_HUMAN, SNIPER)) {
		set_fail_state("[ZPSp Assassin vs Sniper] Some special class (Sniper/Assassin) are disable")
		return;
	}

	// Read the access flag
	new user_access[40]
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE AVS", user_access, charsmax(user_access)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE AVS", "a")
		formatex(user_access, charsmax(user_access), "a")
	}
	new access_flag = read_flags(user_access)

	new i
	
	g_sound_avs = ArrayCreate(64, 1)
	g_sound_ambience_avs = ArrayCreate(64, 1)
	g_sound_amb_avs_duration = ArrayCreate(64, 1)
	
	// Load from external file
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND AVS", g_sound_avs)
	
	// Precache the play sounds
	if (ArraySize(g_sound_avs) == 0)
	{
		for (i = 0; i < sizeof sound_avs; i++)
			ArrayPushString(g_sound_avs, sound_avs[i])
		
		// Save to external file
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND AVS", g_sound_avs)
	}
	
	// Precache sounds
	new sound[100]
	for (i = 0; i < ArraySize(g_sound_avs); i++)
	{
		ArrayGetString(g_sound_avs, i, sound, charsmax(sound))
		precache_ambience(sound)
	}
	
	// Ambience Sounds
	g_ambience_sounds = AMBIENCE_ENABLE
	if(!amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "AVS ENABLE", g_ambience_sounds))
		amx_save_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "AVS ENABLE", g_ambience_sounds)
	
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "AVS SOUNDS", g_sound_ambience_avs)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "AVS DURATIONS", g_sound_amb_avs_duration)
	
	
	// Save to external file
	if (ArraySize(g_sound_ambience_avs) == 0)
	{
		for (i = 0; i < sizeof ambience_avs_sound; i++)
			ArrayPushString(g_sound_ambience_avs, ambience_avs_sound[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "AVS SOUNDS", g_sound_ambience_avs)
	}
	
	if (ArraySize(g_sound_amb_avs_duration) == 0)
	{
		for (i = 0; i < sizeof ambience_avs_dur; i++)
			ArrayPushString(g_sound_amb_avs_duration, ambience_avs_dur[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "AVS DURATIONS", g_sound_amb_avs_duration)
	}
	
	// Ambience Sounds
	new buffer[250]
	if (g_ambience_sounds) {
		for (i = 0; i < ArraySize(g_sound_ambience_avs); i++) {
			ArrayGetString(g_sound_ambience_avs, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
	}
	
	// Register our game mode
	g_gameid = zpsp_register_gamemode("Assassin vs Snipers", access_flag, g_chance, 0, ZP_DM_BALANCE)
}

// Player spawn post
public zp_player_spawn_post(id)
{
	// Check for current mode
	if(zp_get_current_mode() == g_gameid)
	{
		// Check if the player is a zombie
		if(zp_get_user_zombie(id))
		{
			// Make him an assassin instead
			zp_make_user_assassin(id)
			
			// Set his health
			set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_assahp)))
		}
		else
		{
			// Make him a sniper
			zp_make_user_sniper(id)
			
			// Set his health
			set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_sniperhp)))
		}
	}
}
public zp_game_mode_selected_pre(id, game)
{
	if(game != g_gameid)
		return PLUGIN_CONTINUE;

	if(!zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN) || !zp_is_special_class_enable(GET_HUMAN, SNIPER))
		return ZP_PLUGIN_SUPERCEDE;

	return PLUGIN_CONTINUE;
}

public zp_round_started_pre(game)
{
	// Check if it is our game mode
	if(game == g_gameid)
	{
		// Check for min players
		if(zp_get_alive_players() < get_pcvar_num(cvar_minplayers))
			return ZP_PLUGIN_HANDLED

		if(!zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN) || !zp_is_special_class_enable(GET_HUMAN, SNIPER))
			return ZP_PLUGIN_HANDLED;

		// Start our new mode
		start_avs_mode()
	}
	// Make the compiler happy =)
	return PLUGIN_CONTINUE
}

public zp_round_started(game, id)
{
	// Check if it is our game mode
	if(game == g_gameid)
	{
		// Show HUD notice
		set_hudmessage(221, 156, 21, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_msg_sync, "Assassins vs Snipers Mode !!!")
		
		// Play the starting sound
		static sound[100]
		ArrayGetString(g_sound_avs, random_num(0, ArraySize(g_sound_avs) - 1), sound, charsmax(sound))
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
		start_avs_mode()
	
	// Make the compiler happy again =)
	return PLUGIN_CONTINUE
}

// This function contains the whole code behind this game mode
start_avs_mode()
{
	// Create and initialize some important vars
	static i_assassins, i_max_assassins, id, i_alive
	i_alive = zp_get_alive_players()
	id = 0
	
	// Get the no of players we have to turn into assassins
	i_max_assassins = floatround((i_alive * get_pcvar_float(cvar_ratio)), floatround_ceil)
	i_assassins = 0
	
	// Randomly turn players into Assassins
	while (i_assassins < i_max_assassins)
	{
		// Keep looping through all players
		if ((++id) > g_maxplayers) id = 1
		
		// Dead
		if (!is_user_alive(id))
			continue;
		
		// Random chance
		if (random_num(1, 5) == 1)
		{
			// Make user assassin
			zp_make_user_assassin(id)
			
			// Set his health
			set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_assahp)))
			
			// Increase counter
			i_assassins++
		}
	}
	
	// Turn the remaining players into snipers
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Only those of them who are alive and are not assassins
		if (!is_user_alive(id) || zp_get_user_assassin(id))
			continue;
			
		// Turn into a sniper
		zp_make_user_sniper(id)
		
		// Set his health
		set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(cvar_sniperhp)))
	}
}

public start_ambience_sounds()
{
	if (!g_ambience_sounds)
		return;
	
	// Variables
	static amb_sound[64], sound,  str_dur[20]
	
	// Select our ambience sound
	sound = random_num(0, ArraySize(g_sound_ambience_avs)-1)

	ArrayGetString(g_sound_ambience_avs, sound, amb_sound, charsmax(amb_sound))
	ArrayGetString(g_sound_amb_avs_duration, sound, str_dur, charsmax(str_dur))
	
	zp_play_sound(0, amb_sound)
	
	// Start the ambience sounds
	set_task(str_to_float(str_dur), "start_ambience_sounds", TASK_AMB)
}
public zp_round_ended(winteam)
{
	// Stop ambience sounds on round end
	remove_task(TASK_AMB)
}

public native_is_avs_round() {
	return (zp_get_current_mode() == g_gameid)
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
