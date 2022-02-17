#if defined _zpsp_stocks_included
  #endinput
#endif
#define _zpsp_stocks_included

#define MODE_ARMAGEDDON MODE_LNJ

#define zp_get_user_burning(%1) zp_get_user_burn(%1) // Same thing with 'zp_get_user_burn'
#define zp_teleport_user(%1) zp_do_random_spawn(%1) // Same thing with 'zp_do_random_spawn'
#define zp_get_user_clip_mode(%1) zp_get_user_unlimited_ammo(%1) // Same thing with 'zp_get_user_unlimited_ammo'
#define zp_reset_user_clip_mode(%1) zp_reset_user_unlimited_ammo(%1) // Same thing with 'zp_reset_user_unlimited_ammo'
#define zp_get_default_clip_mode(%1) zp_get_default_unlimited_ammo(%1) // Same thing with 'zp_get_default_unlimited_ammo'

/**
 * Give user unlimited clip
 *
 * @param id	Player Index
 * @return		True if sucess, false otherwise.
 */
 stock zp_give_user_unlimited_clip(id)
	return zp_set_user_unlimited_ammo(id, 2);

/**
 * Give user unlimited ammo
 *
 * @param id	Player Index
 * @return		True if sucess, false otherwise.
 */
 stock zp_give_user_unlimited_ammo(id)
	return zp_set_user_unlimited_ammo(id, 1);

/**
 * Remove user unlimited ammo
 *
 * @param id	Player Index
 * @return		True if sucess, false otherwise.
 */
 stock zp_remove_user_unlimited_ammo(id)
	return zp_set_user_unlimited_ammo(id, 0);

/**
 * Reset user gravity
 *
 * @param id		Player Index
 * @return			True if sucess, false otherwise.
 */
stock zp_reset_user_gravity(id)
	return zp_set_user_gravity(id, -1.0);

/**
 * Give user ammo packs
 *
 * @param id		Player Index
 * @param amount	Ammo pack quantity for give
 * @return			True if sucess, false otherwise.
 */
stock zp_add_user_ammopacks(id, amount) 
	return zp_set_user_ammo_packs(id, zp_get_user_ammo_packs(id)+(amount));

/**
 * Remove user ammo packs
 *
 * @param id		Player Index
 * @param amount	Ammo pack quantity for remove
 * @return			True if sucess, false otherwise.
 */
stock zp_remove_user_ammopacks(id, amount)
	return zp_set_user_ammo_packs(id, zp_get_user_ammo_packs(id)-(amount));

/**
 * Give user infection bomb
 *
 * @param id	Player Index
 * @return		True if sucess, false otherwise.
 */
stock zp_give_user_infbomb(id) 
	return zp_set_user_infectnade(id, 1);

/**
 * Remove user infection bomb
 *
 * @param id	Player Index
 * @return		True if sucess, false otherwise.
 */
stock zp_remove_user_infbomb(id) 
	return zp_set_user_infectnade(id, 0);

/**
 * Give user Zombie Madness
 *
 * @param id	Player Index
 * @return		True if sucess, false otherwise.
 */
stock zp_give_user_madness(id, Float:Duration = -1.0) 
	return zp_set_user_madness(id, 1, Duration);

/**
 * Remove user Zombie Madness
 *
 * @param id	Player Index
 * @return		True if sucess, false otherwise.
 */
stock zp_remove_user_madness(id) 
	return zp_set_user_madness(id, 0);

/**
 * Returns whether the current round is a infection mode.
 *
 * @return		True if it is, false otherwise.
 */
stock zp_is_infection_round()
	return (zp_get_current_mode() == MODE_INFECTION);

/**
 * Returns whether the current round is a multi infection mode.
 *
 * @return		True if it is, false otherwise.
 */
stock zp_is_multi_infection_round()
	return (zp_get_current_mode() == MODE_MULTI);

/**
 * Returns whether the current round is a Custom Round.
 *
 * @return		Gamemode index if it is custom round, 0 if not.
 */
stock zp_is_custom_round() {
	static currentmode; currentmode = zp_get_current_mode();
	return (currentmode > MODE_LNJ) ? currentmode : 0;
}

/**
 * Returns whether the current round is a Armageddon (Lnj).
 *
 * @return		True if it is, false otherwise.
 */
stock zp_is_armageddon_round()
	return zp_is_lnj_round();

/**
 * Returns Num of alive players
 *
 * @return	Num of Alive Players
 */
stock zp_get_alive_players() {
	static i_alive, id
	i_alive = 0
	
	for (id = 1; id <= MaxClients; id++) {
		if(is_user_alive(id))
			i_alive++
	}
	return i_alive;
}

/**
 * Plays a sound on clients
 *
 * @param id		Player index to play sound (Use 0 for everyone)
 * @param sound		Sound to play
 * @return			True on success, false otherwise.
 */
stock zp_play_sound(id, const sound[]) {
	static buffer[150]
	if(equal(sound[strlen(sound)-4], ".mp3")) {
		if(!equal(sound, "sound/", 6) && !file_exists(sound) && !equal(sound, "media/", 6))
			format(buffer, charsmax(buffer), "sound/%s", sound)
		else
			format(buffer, charsmax(buffer), "%s", sound)
	
		client_cmd(id > 0 ? id : 0, "mp3 play ^"%s^"", buffer)

	}
	else {
		if(equal(sound, "sound/", 6))
			format(buffer, charsmax(buffer), "%s", sound[6])
		else
			format(buffer, charsmax(buffer), "%s", sound)
			
		client_cmd(id > 0 ? id : 0, "spk ^"%s^"", buffer)
	}
	return 1;
}

/**
 * Retrieves the full path of zombie_plague_specia.cfg.
 *
 * @param name  Buffer to copy path to
 * @param len   Maximum buffer size
 *
 * @return      Number of cells written to buffer
 */
stock zp_get_main_cfg_file(name[], len)
{
	static cfgdir[64]
	get_localinfo("amxx_configsdir", cfgdir, charsmax(cfgdir));
	return formatex(name, len, "%s/%s", cfgdir, ZP_CFG_FILE)
}

/**
 * Prints a colored message
 *
 * @param id		Player index to print a colored message to target (use 0 for everyone)
 * @param with_tag	With [ZPSp] tag on print (0 - No | 1 - Yes)
 * @param message	Message to print
 * @param any		Any...
 * @return			True on success, false otherwise.
 */
#if AMXX_VERSION_NUM < 183
stock zp_colored_print(target, with_tag, const message[], any:...) {
	static buffer[512], i, argscount
	argscount = numargs()

	// Format message for player
	vformat(buffer, charsmax(buffer), message, 4)

	if(with_tag) 
		format(buffer, charsmax(buffer), "%L %s", target ? target : LANG_PLAYER, "ZP_CHAT_TAG", buffer)

	replace_all(buffer, charsmax(buffer), "!g","^4");    // green
	replace_all(buffer, charsmax(buffer), "!y","^1");    // normal
	replace_all(buffer, charsmax(buffer), "!t","^3");    // team

	if(!target) { // Send to everyone
		static player
		for(player = 1; player <= ZP_MAX_PLAYERS; player++) {
			if(!is_user_connected(player)) continue; // Not connected
			
			// Remember changed arguments
			static changed[5], changedcount // [5] = max LANG_PLAYER occurencies
			changedcount = 0
			
			for(i = 2; i < argscount; i++) { // Replace LANG_PLAYER with player id
				if(getarg(i) == LANG_PLAYER) {
					setarg(i, 0, player)
					changed[changedcount] = i
					changedcount++
				}
			}			
			// Send it
			message_begin(MSG_ONE_UNRELIABLE, get_user_msgid("SayText"), _, player)
			write_byte(player)
			write_string(buffer)
			message_end()
			
			// Replace back player id's with LANG_PLAYER
			for(i = 0; i < changedcount; i++) setarg(changed[i], 0, LANG_PLAYER)
		}
	}
	else { // Send to specific target		
		// Send it
		message_begin(MSG_ONE, get_user_msgid("SayText"), _, target)
		write_byte(target)
		write_string(buffer)
		message_end()
	}
	return 1;
}
#else
#pragma deprecated Use Default Amx client_print_color
stock zp_colored_print(target, with_tag, const message[], any:...) {
	static szMsg[512];
	vformat(szMsg, charsmax(szMsg), message, 4);
	
	if(with_tag) 
		format(szMsg, charsmax(szMsg), "%L %s", target ? target : LANG_PLAYER, "ZP_CHAT_TAG", szMsg);

	replace_string(szMsg, charsmax(szMsg), "!g", "^4");    // green
	replace_string(szMsg, charsmax(szMsg), "!y", "^1");    // normal
	replace_string(szMsg, charsmax(szMsg), "!t", "^3");    // team
	client_print_color(target, print_team_default, "%s", szMsg)
}
#endif
