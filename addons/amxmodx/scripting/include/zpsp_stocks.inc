#if defined _zpsp_stocks_included
  #endinput
#endif
#define _zpsp_stocks_included

stock zp_is_infection_round()
	return (zp_get_current_mode() == MODE_INFECTION);

stock zp_is_multi_infection_round()
	return (zp_get_current_mode() == MODE_MULTI);

stock zp_is_custom_round()
	return (zp_get_current_mode() > MODE_LNJ);

stock zp_is_armageddon_round()
	return zp_is_lnj_round();

stock zp_get_alive_players() {
	static i_alive, id
	i_alive = 0
	
	for (id = 1; id <= ZP_MAX_PLAYERS; id++) {
		if(is_user_alive(id))
			i_alive++
	}
	return i_alive;
}

// Plays a sound on clients
stock zp_play_sound(id, const sound[])
{
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
}

// Prints a colored message to target (use 0 for everyone)
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
}
#else
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
