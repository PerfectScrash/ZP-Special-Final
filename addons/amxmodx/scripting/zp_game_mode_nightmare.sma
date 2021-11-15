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

#if ZPS_INC_VERSION < 44
	#assert Zombie Plague Special 4.4 (Beta) Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

new const ZP_CUSTOMIZATION_FILE[] = "zombie_plague_special.ini"

new Array:g_sound_night, g_ambience_sounds, Array:g_sound_amb_night_dur, Array: g_sound_amb_night

// Default Sounds
new const sound_nightmare[][] = { "zombie_plague/nemesis1.wav", "zombie_plague/survivor1.wav" }
new const ambience_night_sound[][] = { "zombie_plague/ambience.wav" } 
new const ambience_night_dur[][] = { "17" }

// Variables
new g_gameid, g_maxplayers, cvar_minplayers, cvar_ratio, cvar_sniperhp, cvar_assahp, g_msg_sync, cvar_nemhp, cvar_survhp

new const g_chance = 90

// Enable Ambience?
#define AMBIENCE_ENABLE 0

// Ambience sounds task
#define TASK_AMB 3256

public plugin_init()
{
	// Plugin registeration.
	register_plugin("[ZP] Nightmare Mode","1.1", "@bdul! | [P]erfec[T] [S]cr[@]s[H]")
	
	// Register some cvars
	// Edit these according to your liking
	cvar_minplayers = register_cvar("zp_night_minplayers", "2")
	cvar_sniperhp = register_cvar("zp_night_sniper_hp", "1.5")
	cvar_assahp = register_cvar("zp_night_assassin_hp", "1.0")
	cvar_survhp = register_cvar("zp_night_survivor_hp", "1.0")
	cvar_nemhp = register_cvar("zp_night_nemesis_hp", "0.3")
	cvar_ratio = register_cvar("zp_night_inf_ratio", "0.5")
	
	// Get maxplayers
	g_maxplayers = get_maxplayers()
	
	// Hud stuff
	g_msg_sync = CreateHudSyncObj()
}

// Game modes MUST be registered in plugin precache ONLY
public plugin_precache()
{
	if(!zp_is_special_class_enable(GET_ZOMBIE, NEMESIS) || !zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN)
	|| !zp_is_special_class_enable(GET_HUMAN, SURVIVOR) || !zp_is_special_class_enable(GET_HUMAN, SNIPER)) {
		set_fail_state("[ZPSp Nightmare mode] Some special class (Nemesis/Survivor/Sniper/Assassin) are disable")
		return;
	}

	// Read the access flag
	new user_access[40]
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE NIGHTMARE", user_access, charsmax(user_access)))
	{
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", "START MODE NIGHTMARE", "a")
		formatex(user_access, charsmax(user_access), "a")
	}
	
	new access_flag = read_flags(user_access)
	new i
	
	g_sound_night = ArrayCreate(64, 1)
	g_sound_amb_night = ArrayCreate(64, 1)
	g_sound_amb_night_dur = ArrayCreate(64, 1)
	
	// Load from external file
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND NIGHTMARE", g_sound_night)
	
	// Precache the play sounds
	if (ArraySize(g_sound_night) == 0)
	{
		for (i = 0; i < sizeof sound_nightmare; i++)
			ArrayPushString(g_sound_night, sound_nightmare[i])
		
		// Save to external file
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "ROUND NIGHTMARE", g_sound_night)
	}
	
	// Precache sounds
	new sound[100]
	for (i = 0; i < ArraySize(g_sound_night); i++)
	{
		ArrayGetString(g_sound_night, i, sound, charsmax(sound))
		precache_ambience(sound)
	}
	
	// Ambience Sounds
	g_ambience_sounds = AMBIENCE_ENABLE
	if(!amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "NIGHTMARE ENABLE", g_ambience_sounds))
		amx_save_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "NIGHTMARE ENABLE", g_ambience_sounds)
	
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "NIGHTMARE SOUNDS", g_sound_amb_night)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "NIGHTMARE DURATIONS", g_sound_amb_night_dur)
	
	
	// Save to external file
	if (ArraySize(g_sound_amb_night) == 0)
	{
		for (i = 0; i < sizeof ambience_night_sound; i++)
			ArrayPushString(g_sound_amb_night, ambience_night_sound[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "NIGHTMARE SOUNDS", g_sound_amb_night)
	}
	
	if (ArraySize(g_sound_amb_night_dur) == 0)
	{
		for (i = 0; i < sizeof ambience_night_dur; i++)
			ArrayPushString(g_sound_amb_night_dur, ambience_night_dur[i])
		
		amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", "NIGHTMARE DURATIONS", g_sound_amb_night_dur)
	}
	
	// Ambience Sounds
	new buffer[250]
	if (g_ambience_sounds) {
		for (i = 0; i < ArraySize(g_sound_amb_night); i++) {
			ArrayGetString(g_sound_amb_night, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
	}
	
	// Register our game mode
	g_gameid = zpsp_register_gamemode("Nightmare", access_flag, g_chance, 0, ZP_DM_BALANCE)
}

public plugin_natives() {
	register_native("zp_is_nightmare_round", "native_is_nightmare_round", 1)
}

// Player spawn post
public zp_player_spawn_post(id)
{
	// Check for current mode
	static g_random
	if(zp_get_current_mode() == g_gameid)
	{
		// Randonize
		g_random = random_num(0, 1)

		// Check if the player is a zombie
		if(zp_get_alive_specials(GET_ZOMBIE) < zp_get_alive_specials(GET_HUMAN))
		{
			// Transform user in Assassin/Nemesis
			zp_make_user_special(id, g_random ? NEMESIS : ASSASSIN , GET_ZOMBIE) 

			// Seting Nemesis/Assassin Health
			set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_nemhp : cvar_assahp))) 
		}
		else
		{
			// Transform user in Sniper/Survivor 
			zp_make_user_special(id, g_random ? SNIPER : SURVIVOR , GET_HUMAN) 

			// Seting Sniper/Survivor Health
			set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_sniperhp : cvar_survhp)))
		}
	}
}

public zp_game_mode_selected_pre(id, game)
{
	if(game != g_gameid)
		return PLUGIN_CONTINUE;

	if(!zp_is_special_class_enable(GET_ZOMBIE, NEMESIS) || !zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN)
	|| !zp_is_special_class_enable(GET_HUMAN, SURVIVOR) || !zp_is_special_class_enable(GET_HUMAN, SNIPER))
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
			return ZP_PLUGIN_HANDLED;

		if(!zp_is_special_class_enable(GET_ZOMBIE, NEMESIS) || !zp_is_special_class_enable(GET_ZOMBIE, ASSASSIN)
		|| !zp_is_special_class_enable(GET_HUMAN, SURVIVOR) || !zp_is_special_class_enable(GET_HUMAN, SNIPER))
			return ZP_PLUGIN_HANDLED;

		// Start our new mode
		start_nightmare_mode()
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
		set_hudmessage(255, 0, 100, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_msg_sync, "Nightmare Mode !!!")
		
		// Play the starting sound
		static sound[100]
		ArrayGetString(g_sound_night, random_num(0, ArraySize(g_sound_night) - 1), sound, charsmax(sound))
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
		start_nightmare_mode()
	
	// Make the compiler happy again =)
	return PLUGIN_CONTINUE
}

// This function contains the whole code behind this game mode
start_nightmare_mode()
{
	// Create and initialize some important vars
	static i_max_sp_zombies, id, i_alive, g_random
	i_alive = zp_get_alive_players()
	id = 0
	
	// Get the no of players we have to turn into assassins/nemesis
	i_max_sp_zombies = floatround(i_alive * get_pcvar_float(cvar_ratio), floatround_ceil)
	
	// Randomly turn players into Assassins
	while (zp_get_alive_specials(GET_ZOMBIE) < i_max_sp_zombies)
	{
		// Keep looping through all players
		if ((++id) > g_maxplayers) id = 1
		
		// Random chance
		if (is_user_alive(id) && random_num(1, 5) == 1)
		{
			// Randonize
			g_random = random_num(0, 1)

			// Transform user in Assassin/Nemesis
			zp_make_user_special(id, g_random ? NEMESIS : ASSASSIN , GET_ZOMBIE) 

			// Seting Nemesis/Assassin Health
			set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_nemhp : cvar_assahp))) 
		}
	}
	
	// Turn the remaining players into snipers/survivors
	for (id = 1; id <= g_maxplayers; id++)
	{
		// Only those of them who are alive and are not assassins/nemesis
		if (is_user_alive(id) && !zp_get_zombie_special_class(id))
		{
			// Randonize
			g_random = random_num(0, 1)

			// Transform user in Sniper/Survivor 
			zp_make_user_special(id, g_random ? SNIPER : SURVIVOR , GET_HUMAN) 

			// Seting Sniper/Survivor Health
			set_user_health(id, floatround(get_user_health(id) * get_pcvar_float(g_random ? cvar_sniperhp : cvar_survhp)))
		}
	}
}

public start_ambience_sounds()
{
	if (!g_ambience_sounds)
		return;
	
	// Variables
	static amb_sound[64], sound,  str_dur[20]
	
	// Select our ambience sound
	sound = random_num(0, ArraySize(g_sound_amb_night)-1)

	ArrayGetString(g_sound_amb_night, sound, amb_sound, charsmax(amb_sound))
	ArrayGetString(g_sound_amb_night_dur, sound, str_dur, charsmax(str_dur))
	
	zp_play_sound(0, amb_sound)
	
	// Start the ambience sounds
	set_task(str_to_float(str_dur), "start_ambience_sounds", TASK_AMB)
}
public zp_round_ended(winteam) {
	remove_task(TASK_AMB) // Stop ambience sounds on round end
}

stock zp_get_alive_specials(user_class)
{
	static special, id
	special = 0
	
	for (id = 1; id <= g_maxplayers; id++) {
		if(is_user_alive(id) && (zp_get_zombie_special_class(id) && user_class == GET_ZOMBIE 
		|| zp_get_human_special_class(id) && user_class == GET_HUMAN)) 
			special++
	}
	return special;
}

public native_is_nightmare_round() {
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
