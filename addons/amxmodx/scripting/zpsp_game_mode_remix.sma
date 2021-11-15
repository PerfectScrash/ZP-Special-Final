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

#if ZPS_INC_VERSION < 44
	#assert Zombie Plague Special 4.4 Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

new const ZP_CUSTOMIZATION_FILE[] = "zombie_plague_special.ini"

new Array:g_sound_remix, g_ambience_sounds, Array:g_sound_amb_remix_duration, Array: g_sound_ambience_remix

// Default Sounds
new const sound_remix[][] = { "zombie_plague/nemesis1.wav", "zombie_plague/survivor1.wav" }
new const ambience_remix_sound[][] = { "zombie_plague/ambience.wav" } 
new const ambience_remix_dur[][] = { "17" }

// Variables
new g_gameid, g_maxplayers, cvar_minplayers, cvar_ratio, cvar_humanhp, cvar_zombiehp, g_msg_sync, class_random[33]

new const g_chance = 90

// Enable Ambience?
#define AMBIENCE_ENABLE 0

// Ambience sounds task
#define TASK_AMB 3256

public plugin_init()
{
	register_plugin("[ZP] Remix Mode","1.2", "@bdul! | [P]erfec[T] [S]cr[@]s[H]")
	
	cvar_minplayers = register_cvar("zp_remix_minplayers", "2")
	cvar_humanhp = register_cvar("zp_remix_special_human_hp", "3000")
	cvar_zombiehp = register_cvar("zp_remix_special_zombie_hp", "7000")
	cvar_ratio = register_cvar("zp_remix_inf_ratio", "0.5")
	
	g_maxplayers = get_maxplayers()
	g_msg_sync = CreateHudSyncObj()
}

// Game modes MUST be registered in plugin precache ONLY
public plugin_precache()
{
	// Read the access flag
	new user_access[40]
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE REMIX", user_access, charsmax(user_access)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE REMIX", "a")
		formatex(user_access, charsmax(user_access), "a")
	}
	new access_flag = read_flags(user_access)
	
	new i
	
	g_sound_remix = ArrayCreate(64, 1)
	g_sound_ambience_remix = ArrayCreate(64, 1)
	g_sound_amb_remix_duration = ArrayCreate(64, 1)
	
	// Load from external file
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND REMIX", g_sound_remix)
	
	// Precache the play sounds
	if (ArraySize(g_sound_remix) == 0)
	{
		for (i = 0; i < sizeof sound_remix; i++)
			ArrayPushString(g_sound_remix, sound_remix[i])
		
		// Save to external file
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND REMIX", g_sound_remix)
	}
	
	// Precache sounds
	new sound[100]
	for (i = 0; i < ArraySize(g_sound_remix); i++) {
		ArrayGetString(g_sound_remix, i, sound, charsmax(sound))
		precache_ambience(sound)
	}
	
	// Ambience Sounds
	g_ambience_sounds = AMBIENCE_ENABLE
	if(!amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "REMIX ENABLE", g_ambience_sounds))
		amx_save_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "REMIX ENABLE", g_ambience_sounds)
	
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "REMIX SOUNDS", g_sound_ambience_remix)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "REMIX DURATIONS", g_sound_amb_remix_duration)
	
	
	// Save to external file
	if (ArraySize(g_sound_ambience_remix) == 0)
	{
		for (i = 0; i < sizeof ambience_remix_sound; i++)
			ArrayPushString(g_sound_ambience_remix, ambience_remix_sound[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "REMIX SOUNDS", g_sound_ambience_remix)
	}
	
	if (ArraySize(g_sound_amb_remix_duration) == 0)
	{
		for (i = 0; i < sizeof ambience_remix_dur; i++)
			ArrayPushString(g_sound_amb_remix_duration, ambience_remix_dur[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "REMIX DURATIONS", g_sound_amb_remix_duration)
	}
	
	// Ambience Sounds
	new buffer[250]
	if (g_ambience_sounds) {
		for (i = 0; i < ArraySize(g_sound_ambience_remix); i++) {
			ArrayGetString(g_sound_ambience_remix, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
	}
	
	// Register our game mode
	g_gameid = zpsp_register_gamemode("Remix", access_flag, g_chance, 0, ZP_DM_BALANCE)
}

public plugin_natives() {
	register_native("zp_is_remix_round", "native_is_remix_round", 1)
}

// Player spawn post
public zp_player_spawn_post(id)
{
	// Check for current mode 
	class_random[id] = -1

	if(zp_get_current_mode() == g_gameid)
	{
		// Check if the player is a zombie
		if(zp_get_user_zombie(id))
		{
			// Fixing Make Special Class if this class are disable
			while(zp_is_special_class_enable(GET_ZOMBIE, class_random[id]) == 0)
				class_random[id] = random_num(NEMESIS, DRAGON+zp_get_custom_special_count(GET_ZOMBIE))

			// Turn into a randomly special
			zp_make_user_special(id, class_random[id], GET_ZOMBIE)
			
			// Set his health
			set_user_health(id, get_pcvar_num(cvar_zombiehp))
		}
		else
		{
			// Fixing Make Special Class if this class are disable
			while(zp_is_special_class_enable(GET_HUMAN, class_random[id]) == 0)
				class_random[id] = random_num(SURVIVOR, SPY + zp_get_custom_special_count(GET_HUMAN))

			// Turn into a randomly special
			zp_make_user_special(id, class_random[id], GET_HUMAN)
			
			// Set his health
			set_user_health(id, get_pcvar_num(cvar_humanhp))
		}
		
	}
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
		start_remix_mode()
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
		ShowSyncHudMsg(0, g_msg_sync, "Remix Mode !!!")
		
		// Play the starting sound
		static sound[100]
		ArrayGetString(g_sound_remix, random_num(0, ArraySize(g_sound_remix) - 1), sound, charsmax(sound))
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
		start_remix_mode()
	
	// Make the compiler happy again =)
	return PLUGIN_CONTINUE
}

// This function contains the whole code behind this game mode
start_remix_mode()
{
	// Create and initialize some important vars
	static i_zombies, i_max_zombies, id, i_alive
	i_alive = zp_get_alive_players()
	id = 0
	
	// Get the no of players we have to turn into assassins
	i_max_zombies = floatround((i_alive * get_pcvar_float(cvar_ratio)), floatround_ceil)
	i_zombies = 0
	
	// Randomly turn players into Assassins
	while (i_zombies < i_max_zombies)
	{
		// Keep looping through all players
		if ((++id) > g_maxplayers) id = 1
		
		// Dead
		if (!is_user_alive(id))
			continue;

		class_random[id] = -1
		
		// Random chance
		if (random_num(1, 5) == 1)
		{
			// Fixing Make Special Class if this class are disable
			while(zp_is_special_class_enable(GET_ZOMBIE, class_random[id]) == 0)
				class_random[id] = random_num(NEMESIS, DRAGON+zp_get_custom_special_count(GET_ZOMBIE))

			// Turn into a randomly special
			zp_make_user_special(id, class_random[id], GET_ZOMBIE)
			
			// Set his health
			set_user_health(id, get_pcvar_num(cvar_zombiehp))
			
			// Increase counter
			i_zombies++
		}
	}
	
	// Turn the remaining players into snipers
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Only those of them who are alive and are not assassins
		if (!is_user_alive(id) || zp_get_user_zombie(id))
			continue;

		class_random[id] = -1
			
		// Fixing Make Special Class if this class are disable
		while(zp_is_special_class_enable(GET_HUMAN, class_random[id]) == 0)
			class_random[id] = random_num(SURVIVOR, SPY + zp_get_custom_special_count(GET_HUMAN))

		// Turn into a randomly special
		zp_make_user_special(id, class_random[id], GET_HUMAN)
		
		// Set his health
		set_user_health(id, get_pcvar_num(cvar_humanhp))
	}
}

public start_ambience_sounds()
{
	if (!g_ambience_sounds)
		return;
	
	// Variables
	static amb_sound[64], sound,  str_dur[20]
	
	// Select our ambience sound
	sound = random_num(0, ArraySize(g_sound_ambience_remix)-1)

	ArrayGetString(g_sound_ambience_remix, sound, amb_sound, charsmax(amb_sound))
	ArrayGetString(g_sound_amb_remix_duration, sound, str_dur, charsmax(str_dur))
	
	zp_play_sound(0, amb_sound)
	
	// Start the ambience sounds
	set_task(str_to_float(str_dur), "start_ambience_sounds", TASK_AMB)
}
public zp_round_ended(winteam) {
	remove_task(TASK_AMB) // Stop ambience sounds on round end
}

public native_is_remix_round() {
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
