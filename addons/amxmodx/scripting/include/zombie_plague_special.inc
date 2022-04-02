#if defined _zombie_special_new_included
	#endinput
#endif
#define _zombie_special_new_included

#include <zpsp_const>

/**
 * Returns whether a player is a zombie.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_zombie(id);

/**
 * Returns whether a player is a nemesis.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_nemesis(id);

/**
 * Returns whether a player is a survivor.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_survivor(id);

/**
 * Returns whether a player is the first zombie.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_first_zombie(id);

/**
 * Returns whether a player is the last zombie.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_last_zombie(id);

/**
 * Returns whether a player is the last human.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_last_human(id);

/**
 * Returns a player's current zombie class ID.
 *
 * @param id		Player index.
 * @return		Internal zombie class ID, or -1 if not yet chosen.
 */
native zp_get_user_zombie_class(id);

/**
 * Returns a player's next zombie class ID (for the next infection).
 *
 * @param id	Player index.
 * @return		Internal zombie class ID, or -1 if not yet chosen.
 */
native zp_get_user_next_class(id);

/**
 * Sets a player's next zombie class ID (for the next infection).
 *
 * @param id		Player index.
 * @param classid	A valid zombie class ID.
 * @return			True on success, false otherwise.
 */
native zp_set_user_zombie_class(id, classid);

/**
 * Returns a player's ammo pack count.
 *
 * @param id	Player index.
 * @return		Number of ammo packs owned.
 */
native zp_get_user_ammo_packs(id);

/**
 * Sets a player's ammo pack count.
 *
 * @param id		Player index.
 * @param amount	New quantity of ammo packs owned.
 */
native zp_set_user_ammo_packs(id, amount);

/**
 * Returns the default maximum health of a zombie.
 *
 * @note Takes into account first zombie's HP multiplier.
 *
 * @param id	Player index.
 * @return		Maximum amount of health points, or -1 if not a normal zombie.
 */
native zp_get_zombie_maxhealth(id);

/**
 * Returns a player's custom flashlight batteries charge.
 *
 * @param id	Player index.
 * @return		Charge percent (0 to 100).
 */
native zp_get_user_batteries(id);

/**
 * Sets a player's custom flashlight batteries charge.
 *
 * @param id		Player index.
 * @param value		New charge percent (0 to 100).
 */
native zp_set_user_batteries(id, charge);

/**
 * Returns whether a player has night vision.
 *
 * @param id		Player index.
 * @return			2 if it has enable, 1 if it has but are disable, 0 otherwise.
 */
native zp_get_user_nightvision(id);

/**
 * Sets whether a player has night vision.
 *
 * @param id		Player index.
 * @param set		True to give, false for removing it.
 */
native zp_set_user_nightvision(id, set);

/**
 * Forces a player to become a zombie.
 *
 * @note Unavailable for last default/special human.
 *
 * @param id		Player index to be infected.
 * @param infector	Player index who infected him (optional).
 * @param silent	If set, there will be no HUD messages or infection sounds.
 * @param rewards	Whether to show DeathMsg and reward frags, hp, and ammo packs to infector.
 * @return			True on success, false otherwise.
 */
native zp_infect_user(id, infector = 0, silent = 0, rewards = 0);

/**
 * Forces a player to become a human.
 *
 * @note Unavailable for last default/special zombie
 *
 * @param id		Player index to be cured.
 * @param silent	If set, there will be no HUD messages or antidote sounds.
 * @param attacker	Give rewards for possible attacker
 * @return			True on success, false otherwise.
 */
native zp_disinfect_user(id, silent = 0, attacker = 0);

/**
 * Forces a player to become a nemesis.
 *
 * @note Unavailable for last default/special human
 *
 * @param id	Player index to turn into nemesis.
 * @return		True on success, false otherwise.
 */
native zp_make_user_nemesis(id);

/**
 * Forces a player to become a survivor.
 *
 * @note Unavailable for last zombie/nemesis.
 *
 * @param id		Player index to turn into survivor.
 * @return		True on success, false otherwise.
 */
native zp_make_user_survivor(id);

/**
 * Respawns a player into a specific team.
 *
 * @param id		Player index to be respawned.
 * @param team		Team to respawn the player into (ZP_TEAM_ZOMBIE or ZP_TEAM_HUMAN).
 * @return		True on success, false otherwise.
 */
native zp_respawn_user(id, team);

/**
 * Forces a player to buy an extra item.
 *
 * @param id			Player index.
 * @param itemid		A valid extra item ID.
 * @param ignorecost	If set, item's cost won't be deduced from player.
 * @return				True on success, false otherwise.
 * @error				If Extra Item index are invalid
 */
native zp_force_buy_extra_item(id, itemid, ignorecost = 0);

/**
 * Returns whether a player is a sniper.
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_sniper(id);

/**
 * Forces a player to become a sniper.
 *
 * @note Unavailable for last zombie/special zombie.
 *
 * @param id		Player index to turn into sniper.
 * @return		True on success, false otherwise.
 */
native zp_make_user_sniper(id);

/**
 * Returns whether a player is an assassin.
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_assassin(id);


/**
 * Returns whether a player is an predator.
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_predator(id);

/**
 * Returns whether a player is an bombardier.
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_bombardier(id);

/**
 * Returns whether a player is an dragon.
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_dragon(id);

/**
 * Forces a player to become a assassin.
 *
 * @note Unavailable for last human/survivor/sniper.
 *
 * @param id		Player index to turn into assassin.
 * @return		True on success, false otherwise.
 */
native zp_make_user_assassin(id);

/**
 * Forces a player to become a predator.
 *
 * @note Unavailable for last human/survivor/sniper.
 *
 * @param id		Player index to turn into predator.
 * @return		True on success, false otherwise.
 */
native zp_make_user_predator(id);

/**
 * Forces a player to become a bombardier.
 *
 * @note Unavailable for last human/survivor/sniper.
 *
 * @param id		Player index to turn into bombardier.
 * @return		True on success, false otherwise.
 */
native zp_make_user_bombardier(id);

/**
 * Forces a player to become a dragon.
 *
 * @note Unavailable for last human/survivor/sniper.
 *
 * @param id		Player index to turn into dragon.
 * @return		True on success, false otherwise.
 */
native zp_make_user_dragon(id);

/**
 * Returns whether a player is a sniper.
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_berserker(id);

/**
 * Forces a player to become a berserker.
 *
 * @note Unavailable for last zombie/special zombie.
 *
 * @param id		Player index to turn into berserker.
 * @return		True on success, false otherwise.
 */
native zp_make_user_berserker(id);

/**
 * Returns whether a player is a sniper.
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_wesker(id);

/**
 * Forces a player to become a wesker.
 *
 * @note Unavailable for last zombie/special zombie.
 *
 * @param id		Player index to turn into wesker.
 * @return		True on success, false otherwise.
 */
native zp_make_user_wesker(id);

/**
 * Returns whether a player is a spy
 *
 * @param id		Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_spy(id);

/**
 * Forces a player to become a spy.
 *
 * @note Unavailable for last zombie/special zombie.
 *
 * @param id		Player index to turn into spy.
 * @return		True on success, false otherwise.
 */
native zp_make_user_spy(id);

/**
 * Returns whether the ZP round has started, i.e. first zombie
 * has been chosen or a game mode has begun.
 *
 * @return		0 - Round not started
 *				1 - Round started
 *				2 - Round starting
 */
native zp_has_round_started();

/**
 * Returns whether the current round is a nemesis round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_nemesis_round();

/**
 * Returns whether the current round is a survivor round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_survivor_round();

/**
 * Returns whether the current round is a swarm round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_swarm_round();

/**
 * Returns whether the current round is a plague round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_plague_round();

/**
 * Returns whether the current round is a Armageddon round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_lnj_round();

/**
 * Returns number of alive zombies.
 *
 * @return		Zombie count.
 */
native zp_get_zombie_count();

/**
 * Returns number of alive humans.
 *
 * @return		Human count.
 */
native zp_get_human_count();

/**
 * Returns number of alive nemesis.
 *
 * @return		Nemesis count.
 */
native zp_get_nemesis_count();

/**
 * Returns number of alive survivors.
 *
 * @return		Survivor count.
 */
native zp_get_survivor_count();

/**
 * Returns whether the current round is a sniper round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_sniper_round();

/**
 * Returns whether the current round is a assassin round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_assassin_round();

/**
 * Returns whether the current round is a predator round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_predator_round();

/**
 * Returns whether the current round is a bombardier round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_bombardier_round();

/**
 * Returns whether the current round is a dragon round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_dragon_round();

/**
 * Returns whether the current round is a berserker round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_berserker_round();

/**
 * Returns whether the current round is a wesker round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_wesker_round();

/**
 * Returns whether the current round is a spy round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_spy_round();

/**
 * Returns number of alive snipers.
 *
 * @return		Sniper count.
 */
native zp_get_sniper_count();

/**
 * Returns number of alive assassins.
 *
 * @return		Assassin count.
 */
native zp_get_assassin_count();

/**
 * Returns number of alive predators.
 *
 * @return		predator count.
 */
native zp_get_predator_count();

/**
 * Returns number of alive bombardiers.
 *
 * @return		bombardier count.
 */
native zp_get_bombardier_count();

/**
 * Returns number of alive dragons.
 *
 * @return		dragon count.
 */
native zp_get_dragon_count();

/**
 * Returns number of alive berserkers.
 *
 * @return		Berserker count.
 */
native zp_get_berserker_count();

/**
 * Returns number of alive weskers.
 *
 * @return		wesker count.
 */
native zp_get_wesker_count();

/**
 * Returns number of alive spys.
 *
 * @return		spy count.
 */
native zp_get_spy_count();

/**
 * Returns the current game mode ID
 * 
 * @note For default game modes you can use, for eg. MODE_SWARM,
 * to check if the current round is swarm mode.
 * 
 * @note For custom game modes you must have the custom game
 * mode ID to detect it
 * 
 * @return		Current game mode ID
 */
native zp_get_current_mode();

/**
 * Returns the last game mode ID
 * 
 * @note For default game modes you can use, for eg. MODE_SWARM,
 * to check if the last round is swarm mode.
 * 
 * @note For custom game modes you must have the custom game
 * mode ID to detect it
 * 
 * @return		Current game mode ID
 */
native zp_get_last_mode();

/**
 * Returns an extra item's ID.
 *
 * @param name		Item name to look for.
 * @return		Internal extra item ID, or -1 if not found.
 */
native zp_get_extra_item_id(const name[]);

/**
 * Returns a zombie class' ID.
 *
 * @param name		Class name to look for.
 * @return		Internal zombie class ID, or -1 if not found.
 */
native zp_get_zombie_class_id(const name[]);

/**
 * Registers a custom game mode which will be added to the admin menu of ZP
 * 
 * @note The returned game mode ID can later be used to detect the game mode
 * which is called in zp_round_started_pre. There you can start the game mode
 * externally by using this game mode ID.
 * 
 * @param name 			The game modes name which will also be used by other plugins to identify this game mode
 * @param flags			Access flags required by the admins to start this game mode via the admin menu.
 * @param chance		Chance level of this game mode. (1 in X) The higher the value the lesser the chance that this game mode will be called
 * @param allow			Whether to permit infection or not after a zombie's attack
 * @param dm_mode		Death match mode during this game. Use ZP_DM_NONE to disable respawning during this game mode
 * @param resp_limit	Respawn Limit (Use 0 for unlimited respawn)
 * @param enable_in_ze	Enable Game mode in zombie escape maps (0 - Disable | 1 - Enable)
 * @return				An internal game mode ID or -1 on failure
 * @error				If Game mode name alterady exists
 */
 native zpsp_register_gamemode(const name[], flags, chance, allow, dm_mode, resp_limit=0, enable_in_ze=0, uselang=0, const langkey[]="ITEM_LANG_DEFAULT_KEY");

/**
 * @deprecated This function are update your functions
 */ 
#pragma deprecated Use zpsp_register_gamemode(const name[], flags, chance, allow, dm_mode, resp_limit=0, enable_in_ze=0, uselang=0, const langkey[]="ITEM_LANG_DEFAULT_KEY") instead.
native zp_register_game_mode(const name[], flags, chance, allow, dm_mode);

/**
 * Registers a custom item which will be added to the extra items menu of ZP.
 *
 * @note The returned extra item ID can be later used to catch item
 * purchase events for the zp_extra_item_selected() forward.
 *
 * @note ZP_TEAM_NEMESIS, ZP_TEAM_SURVIVOR, ZP_TEAM_ASSASSIN, ZP_TEAM_SNIPER and ZP_TEAM_BERSERKER
 * can be used to make an item available to Nemesis,
 * Survivors, Assassins, Snipers and Berserkers.
 *
 * @param name		Caption to display on the menu.
 * @param cost		Ammo packs to be deducted on purchase.
 * @param teams		Bitsum of teams it should be available for.
 * @return		An internal extra item ID, or -1 on failure.
 * @error			If Extra Item name alterady exists
 */
native zp_register_extra_item(const name[], cost, teams);

/**
 * Add Text On Extra Item (Like ZP 5.0)
 *
 * @note Use in 'zp_extra_item_selected_pre' forward
 *
 * @param text		Text to display on the item name.
 * @return			True if sucess, false if not sucess.
 */
native zp_extra_item_textadd(const text[]); 

/**
 * Add Text On Zombie Class menu (Like ZP 5.0)
 *
 * @note Use in 'zp_zombie_class_choosed_pre' forward
 *
 * @param text		Text to display on the zombie class name.
 * @return			True if sucess, false if not sucess.
 */
native zp_zombie_class_textadd(const text[]);

/**
 * Get User Infect bomb
 *
 * @param id		Player Index
 * @return			True if have infection bomb, false if not.
 */
native zp_get_user_infectnade(id);

/**
 * Set User Infect bomb
 *
 * @param id		Player Index
 * @param set		1 - Give user a infection bomb | 0 - Remove user infection bomb
 * @return			True if sucess, false if not.
 */
native zp_set_user_infectnade(id, set); // Give/Remove User Infect bomb

/**
 * Get User Frozen
 *
 * @param id		Player Index
 * @return			True if frozen, false if not.
 */
native zp_get_user_frozen(id);

/**
 * Get User burning
 *
 * @param id		Player Index
 * @return			True if burning, false if not.
 */
native zp_get_user_burn(id);

/**
 * Get User Zombie Madness
 *
 * @param id		Player Index
 * @return			True if have zombie madness, false if not.
 */
native zp_get_user_madness(id);

/**
 * Get User Current Human Special Class
 *
 * @param id		Player Index
 * @return			Special Class index
 */
native zp_get_human_special_class(id);

/**
 * Get User Current Zombie Special Class
 *
 * @param id		Player Index
 * @return			Special Class index
 */
native zp_get_zombie_special_class(id);

/**
 * Sets rendering options of an user (Compatibility with handle models separate ent in older versions).
 *
 * @note For a list of valid rendering effects see the kRenderFx* constants in
 *       amxconst.inc
 * @note For a list of valid rendering modes see the kRender* constants in
 *       amxconst.inc
 *
 * @param index     Player index
 * @param fx        Rendering effect
 * @param r         Red component of rendering color
 * @param g         Green component of rendering color
 * @param b         Blue component of rendering color
 * @param render    Rendering mode
 * @param amount    Rendering amount
 *
 * @return			True if sucess, false otherwise
 */
native zp_set_user_rendering(index, fx = kRenderFxNone, r = 0, g = 0, b = 0, render = kRenderNormal, amount = 0);

/**
 * Reset player Render
 *
 * @param id		Player Index
 * @return			True if sucess, false otherwise
 */
native zp_reset_user_rendering(id);

/**
 * Get user Maxspeed
 *
 * @param id		Player Index
 * @return			Player Maxspeed
 */
native Float:zp_get_user_maxspeed(id);

/**
 * Set user Maxspeed
 *
 * @param id		Player Index
 * @param Speed		New Player Maxspeed
 * @return			True if sucess, false otherwise
 */
native zp_set_user_maxspeed(id, Float:Speed); // Change user Current maxspeed

/**
 * Reset user Maxspeed
 *
 * @param id		Player Index
 * @return			True if sucess, false otherwise
 */
native zp_reset_user_maxspeed(id);

/**
 * Get Player's Model
 *
 * @param itemid	Extra item index
 * @param model		Buffer to copy model name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 */
native zp_get_user_model(id, model[], len);

/**
 * Reset user Model
 *
 * @param id		Player Index
 * @return			True if sucess, false otherwise
 */
native zp_reset_player_model(id);

/**
 * Get Extra Item Price
 *
 * @param itemid	Extra item index
 * @return			Item Price
 * @error			If Extra Item index are invalid
 */
native zp_get_extra_item_cost(itemid);

/**
 * Get Extra Item Name
 *
 * @param itemid	Extra item index
 * @param itemname	Buffer to copy item name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Extra Item index are invalid
 */
native zp_get_extra_item_name(itemid, itemname[], len);

/**
 * Change Extra Item Price
 *
 * @param itemid	Extra item index
 * @param cost		New Price for Extra item
 * @return			True if sucess, false otherwise
 * @error			If Extra Item index are invalid
 */
native zp_set_extra_item_cost(itemid, cost);

/**
 * Change Extra Item Name
 *
 * @param itemid	Extra item index
 * @param newname	New Name for Extra item
 * @return			True if sucess, false otherwise
 * @error			If Extra Item index are invalid
 */
native zp_set_extra_item_name(itemid, const newname[]);	// Change Extra Item Name

/**
 * Change Extra Item Team
 *
 * @param itemid	Extra item index
 * @param team		New Team for Extra item
 * @return			True if sucess, false otherwise
 * @error			If Extra Item index are invalid
 */
native zp_set_extra_item_team(itemid, team); // Change Extra Item Team

/**
 * Get Extra Item Real Name
 *
 * @param itemid	Extra item index
 * @param itemname	Buffer to copy real item name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Extra Item index are invalid
 */
native zp_get_extra_item_realname(itemid, realname[], len);

/**
 * Get Zombie Class Name
 *
 * @param class		Zombie Class index
 * @param name		Buffer to copy zclass name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Zombie Class index are invalid
 */
native zp_get_zombie_class_name(class, name[], len);

/**
 * Get Zombie Class Real Name
 *
 * @param class		Zombie Class index
 * @param name		Buffer to copy zclass real name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Zombie Class index are invalid
 */
native zp_get_zombie_class_realname(class, realname[], len);

/**
 * Get Zombie Class Description
 *
 * @param class		Zombie Class index
 * @param info		Buffer to copy zclass name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Zombie Class index are invalid
 */
native zp_get_zombie_class_info(class, info[], len);

/**
 * Set Zombie Class Description
 *
 * @param class		Zombie Class index
 * @param newinfo	New description
 * @return			True if sucess, false otherwise
 * @error			If Zombie Class index are invalid
 */
native zp_set_zombie_class_info(class, newinfo[]);

/**
 * Set Zombie Class name
 *
 * @param class		Zombie Class index
 * @param newname	New name
 * @return			True if sucess, false otherwise
 * @error			If Zombie Class index are invalid
 */
native zp_set_zombie_class_name(class, newname[]);

/**
 * Get Current mode name
 *
 * @param name		Buffer to copy mode name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 */
native zp_get_current_mode_name(name[], len);

/**
 * Returns whether the ZP round has ended
 *
 * @return	True if ended, false if not ended
 */
native zp_has_round_ended();

/**
 * @deprecated This function are update your functions
 */ 
#pragma deprecated Use zp_set_user_extra_damage(victim, attacker, damage, weaponDescription[], dmg_dealth = 0) instead.
native zp_set_extra_damage(victim, attacker, damage, weaponDescription[]); // Set User Extra Damage (Like Superhero Mod);

/**
 * @deprecated This function are update your functions
 */ 
#pragma deprecated Use zpsp_override_user_model(id, const model, body=0, skin=0, modelindex=0)
native zp_override_user_model(id, const newmodel[], modelindex = 0);

/**
 * @deprecated This function are update your functions
 */ 
#pragma deprecated Use zp_set_param_string(const string[])
native zp_set_model_param(const string[]);

/**
 * Registers a custom zombie special class which will be added to the admin menu of ZP.
 *
 * @note The returned special class ID can be later used to identify
 * the class when calling the zp_get_zombie_special_class() natives.
 *
 * @param name			Caption to display on the menu/hud.
 * @param model			Player model to be used.
 * @param knifemodel	Knife model to be used.
 * @param pain_sound	Pain sound to be used
 * @param hp			Initial health points.
 * @param speed			Maximum speed.
 * @param gravity		Gravity multiplier.
 * @param flags			Acess Flag to convert
 * @param knockback		Knockback multiplier.
 * @param aura_radius	Aura Radius Size.
 * @param glow			Have Glow?
 * @param r				
 * @param g				Special Class Aura/Nvision/Glow RGB Color
 * @param b				
 * @return				An internal special class ID, or -1 on failure.
 * @error				If Special Class name alterady exists
 */
native zp_register_zombie_special(const name[], const model[], const knifemodel[], const pain_sound[], hp, speed, Float:gravity, flags, Float:knockback, aura_radius, glow, r, g, b);


/**
 * Registers a custom human special class which will be added to the admin menu of ZP.
 *
 * @note The returned special class ID can be later used to identify
 * the class when calling the zp_get_human_special_class() natives.
 *
 * @param name			Caption to display on the menu/hud.
 * @param model			Player model to be used.
 * @param hp			Initial health points.
 * @param speed			Maximum speed.
 * @param gravity		Gravity multiplier.
 * @param flags			Acess Flag to convert
 * @param clip_type		0 - Normal Clip | 1 - Unlimited Ammo | 2 - Unlimited Clip
 * @param aura_radius	Aura Radius Size.
 * @param glow			Have Glow?
 * @param r				
 * @param g				Special Class Aura/Nvision/Glow RGB Color
 * @param b				
 * @return				An internal special class ID, or -1 on failure.
 * @error				If Special Class name alterady exists
 */
native zp_register_human_special(const name[], const model[], hp, speed, Float:gravity, flags, clip_type, aura_radius, glow, r, g, b);

/**
 * Make player an X special class
 * 
 * @note Recomended to make custom specials classes in external plugins
 *
 * @param id		Player index
 * @param spid		Special Class Index
 * @param zombie	Is Zombie Special Class or Human Special Class (0 - Human | 1 - Zombie)
 * @return			True if sucess, false otherwise
 * @error				If Special Class index are invalid
 */
native zp_make_user_special(id, spid, zombie); 

/**
 * Get players an X special class
 * 
 * @note Recomended to get alive custom specials classes in external plugins
 *
 * @param zombie		Is Zombie Special Class or Human Special Class (0 - Human | 1 - Zombie)
 * @param specialid		Special Class Index
 * @return				Count of all Players in current special class
 * @error				If Special Class index are invalid
 */
native zp_get_special_count(zombie, specialid);

/**
 * Get Special Class index
 * 
 * @param is_zombie		Is Zombie Special Class or Human Special Class (0 - Human | 1 - Zombie)
 * @param name			Special Class Real Name
 * @return				Index of Special Class
 */
native zp_get_special_class_id(is_zombie, name[]);

/**
 * Forces Start Custom Mod without checks
 * 
 * @note This command are available only for custom modes in external plugins
 * 
 * @param gameid		Custom game mode index
 * @return				True if sucess, false otherwise
 */
native zp_set_custom_game_mod(gameid);

/**
 * Get Gamemode index
 * 
 * @param name			Real name of gamemode
 * @return				Game mode index
 */
native zp_get_gamemode_id(name[]); // Get Game mode index by name

/**
 * Get total of instaled custom special classes 
 * 
 * @param is_zombie		Get count of Zombie Specials or Human Specials (0 - Human | 1 - Zombie)
 * @return				Total instaled special classes
 */
native zp_get_custom_special_count(is_zombie);

/**
 * Get total of instaled custom gamemodes
 * 
 * @return				Total instaled special classes
 */
native zp_get_gamemodes_count(); // Get Registred Custom Game modes count

/**
 * Get total of instaled zombie classes
 * 
 * @return				Total of instaled zclasses 
 */
native zp_get_zclass_count();

/**
 * Get total of instaled extra itens
 * 
 * @return				Total of instaled extra itens
 */
native zp_get_extra_item_count(); // Get Registred Extra Item Count

/**
 * Get Current map is a Zombie Escape's Map
 * 
 * @return				True if yes / false if not
 */
native zp_is_escape_map();

/**
 * Get user Stucks
 * 
 * @param id	Player Index
 * @return		True if yes / false if not
 */
native zp_is_user_stuck(id);

/**
 * Teleport user to Spawn
 * 
 * @param id	Player Index
 * @return				True if sucess / false otherwise
 */
native zp_do_random_spawn(id);

/**
 * Reload repawn files/entitys
 * 
 * @return				True if sucess / false otherwise
 */
native zp_reload_csdm_respawn();

/**
 * Set Current map Lighting
 * 
 * @param light		Light Flag (Example: "a" - Full Darkness, "z" - Full lighting)
 * @return			True if sucess / false otherwise
 */
native zp_set_lighting(const light[]);

/**
 * Reset to default lighting
 * 
 * @return				True if sucess / false otherwise
 */
native zp_reset_lighting();

/**
 * Register Custom Weapon in Weapon Choose Menu
 * 
 * @param name		Weapon Name
 * @param wpn_type	Primary or Secondary
 * @param uselang	Use lang in weapon name
 * @param langkey	Weapon name Lang key in .txt lang file
 * @return			True if sucess / false otherwise
 */
native zp_register_weapon(const name[], wpn_type, uselang=0, const langkey[]="ITEM_LANG_DEFAULT_KEY");

/**
 * Add menu text in weapon menu
 * 
 * @param text		Text
 * @return			True if sucess / false otherwise
 */
native zp_weapon_menu_textadd(const text[]);

/**
 * Get Weapon name
 * 
 * @param wpn_type 		Type of Weapon (Primary/Secondary)
 * @param weaponid 		Weapon Index
 * @param name 			Buffer to copy wpn name to
 * @param len	 		Maximum length of buffer
 * @return 				True if sucess / false otherwise
 * @error				If Weapon index are invalid
*/
native zp_get_weapon_name(wpn_type, weaponid, name[], len);

/**
 * Get Weapon real name
 * 
 * @param wpn_type 		Type of Weapon (Primary/Secondary)
 * @param weaponid 		Weapon Index
 * @param name 			Buffer to copy wpn real name to
 * @param len	 		Maximum length of buffer
 * @return 				True if sucess / false otherwise
 * @error				If Weapon index are invalid
*/
native zp_get_weapon_realname(wpn_type, weaponid, name[], len);

/**
 * Change Weapon name
 * 
 * @param wpn_type 		Type of Weapon (Primary/Secondary)
 * @param weaponid 		Weapon Index
 * @param name 			New Name
 * @return 				True if sucess / false otherwise
 * @error				If Weapon index are invalid
*/
native zp_set_weapon_name(wpn_type, weaponid, name[]);

/**
 * Weapon from Weapons menu are internal (from main plugin) or external plugin
 * 
 * @param wpn_type 		Type of Weapon (Primary/Secondary)
 * @param weaponid 		Weapon Index
 * @return 				True if yes / false otherwise
 * @error				If Weapon index are invalid
*/
native zp_weapon_is_custom(wpn_type, weaponid);

/**
 * Get Weapon Count (of type)
 * 
 * @param wpn_type 			Type of Weapon (Primary/Secondary)
 * @param skip_def_custom 	Count what (0 - All Weapons (of Type); | 1 - Only Custom | 2 - Only Default)
 * @return 					Num of weapons from X category
*/
native zp_weapon_count(wpn_type, skip_def_custom);

/**
 * Get Random alive player Index
 * 
 * @param team 		Use (0 - for Both Teams | 1 - for Humans Only | 2 - for Zombies Only);
 * @return 			Random player index
*/
native zp_get_random_player(const team = 0);

/**
 * Set string parameter.
 *
 * @note Can't change param when the some plugin use native 'zp_override_user_model' (only in 'zp_user_model_change_pre' forward).
 * @note You can use only in 'zp_user_model_change_pre' and 'zp_fw_sound_play' forwards only.
 * 
 * @param string 			String
 * @return 					True
*/
native zp_set_param_string(const string[]);

/**
 * Start a Game mode
 *
 * @note Works with any game mode
 * 
 * @param gameid 		Game mode index
 * @param force_start 	Start after Round Started (1-Yes | 0-No)
 * @return 				True if sucess / false otherwise
 * @error				If Gamemode index are invalid
*/
native zp_start_game_mod(gameid, force_start = 0);

/**
 * Set Gamemode for start on next round
 *
 * @param gameid 	Game mode index
 * @return 			True if sucess / false otherwise
 * @error			If Gamemode index are invalid
*/
native zp_set_next_game_mode(gameid); // Start Game mode in a next round

/**
 * Gamemode are enable?
 *
 * @param gameid 	Game mode index
 * @return 			True if yes / false otherwise
 * @error			If Gamemode index are invalid
*/
native zp_is_gamemode_enable(modeid);

/**
 * Special class are enable?
 *
 * @param is_zm 	Is a Zombie Special Class Index? (1 - Yes | 0 - Not)
 * @param classid 	Special Class index
 * @return 			True if yes / false otherwise
 * @error			If Special Class index are invalid
*/
native zp_is_special_class_enable(is_zm, classid);

/**
 * Get Custom Extra Item Start ID
 *
 * @return	Start of Custom Extra item index
*/
native zp_get_custom_extra_start(); // Get Custom Extra Item Start ID

/**
 * Get user Special Class Real Name
 *
 * @param id	Player Index
 * @param name	Buffer to copy real class name to
 * @param len	Maximum length of buffer
 * @return		True if sucess, false otherwise
 */
native zp_get_special_class_name(id, name[], len);

/**
 * Registers a custom item which will be added to the extra items menu of ZP.
 *
 * @note The returned extra item ID can be later used to catch item
 * purchase events for the zp_extra_item_selected() forward.
 *
 * @note zpsp_register_extra_item("Custom Item", 10, "SPY, WESKER, MORPHEUS", 1, "LANG_ITEM_1")
 * can be used to make an item available to Spy, Wesker, Morpheus.
 *
 * @param name		Caption to display on the menu.
 * @param cost		Ammo packs to be deducted on purchase.
 * @param teams		Bitsum of teams it should be available for. (in string
 * @return		An internal extra item ID, or -1 on failure.
 */
native zpsp_register_extra_item(const name[], cost, const teams[], lang_by_key, const szLangKey[]);

/**
 * Like a zp_set_extra_damage native but with damage dealth in function
 *
 * @note zp_set_user_extra_damage(victim, attacker, dmg, "Bazzoka", 1)
 * can be used to damage victim and with damage dealth rewards
 * 
 * @param victim 				Player Index that receive damage
 * @param attacker 				Player Index that attack (and receive rewards)
 * @param damage 				Value of Damage (Not float)
 * @param weaponDescription 	Damage Description (Or Weapon name)
 * @param dmg_dealth			Allow Damage Dealth Reward (1 - Yes, 0 - No)
 * @return 						0 - If damage not seted | 1 - If Success maked damage

*/
native zp_set_user_extra_damage(victim, attacker, damage, weaponDescription[], dmg_dealth = 0); // Set User Extra Damage (Like Superhero Mod);

/**
 * Registers a custom class which will be added to the zombie classes menu of ZP.
 *
 * @note The returned zombie class ID can be later used to identify
 * the class when calling the zp_get_user_zombie_class() natives.
 *
 * @param name		Caption to display on the menu.
 * @param info		Brief description of the class.
 * @param model		Player model to be used.
 * @param clawmodel	Claws model to be used.
 * @param hp		Initial health points.
 * @param speed		Maximum speed.
 * @param gravity	Gravity multiplier.
 * @param knockback	Knockback multiplier.
 * @return			An internal zombie class ID, or -1 on failure.
 * @error			If Zombie Class real Name Alterady Exists
 */
native zp_register_zombie_class(const name[], const info[], const model[], const clawmodel[], hp, speed, Float:gravity, Float:knockback);

/**
* Force user Special Class without checks
*
* @note Special/Normal Rounds will not to be started auto, just setting class only
* @note Can only force in the base class or special class, cant change for other basic zombie class
*
* @param id				Player Index
* @param specialid		Special Class Index
* @param zombie			Is Zombie or Human?
* @param attacker		Attacker Index
* @param sillentmode 	Hide Hud Messages
* @return				True if sucess, false otherwise.
* @error				If Special Class index are invalid
*/
native zp_force_user_class(id, spid, zombie, attacker = 0, sillentmode = 1);

/**
* Set Player Frozen
* 
* @param id			Player Index
* @param set		Use UNSET for unfrost, SET for frost or SET_WITHOUT_IMMUNITY for frost players with frost immunity
* @param Duration	Frost duration, Use -1.0 for default duration
* @return			Return true if frost or unfrost with sucess
*/
native zp_set_user_frozen(id, set, Float:Duration = -1.0);

/**
* Set Player Burning
* 
* @param id			Player Index
* @param set		Use UNSET for unburn, SET for burn or SET_WITHOUT_IMMUNITY for burn players with Burning immunity
* @param Duration	Burning duration, Use -1.0 for default duration
* @return			Return true if burn or unburn with sucess
*/
native zp_set_user_burn(id, set, Float:Duration = -1.0);

/**
* Set Player Model
* 
* @param id				Player Index
* @param model			Player model to be used.
* @param body			Model Body
* @param skin			Model Skin
* @param modelindex		Model Index
* @return				True if sucess / false otherwise
*/
native zpsp_override_user_model(id, const model[], body=0, skin=0, modelindex=0);

/**
* Set Int Parameter on some forwards
* 
* @param int_id		Int Param Index
* @param value		New Value
* @return				1
*/
native zp_set_fw_param_int(int_id, value);

/**
* Set Player Zombie Madness
* 
* @param id			Player Index
* @param set		Use UNSET for remove madness, SET for give zombie madness
* @param Duration	Madness duration, Use -1.0 for default duration
* @return			Return true if frost or unfrost with sucess
*/
native zp_set_user_madness(id, set, Float:Duration = -1.0);

/**
* Drop user weapon from X category
* 
* @param id			Player Index
* @param dropwhat	Primary (WPN_PRIMARY) / Secondary (WPN_SECONDARY)
* @noreturn
*/
native zp_drop_weapons(id, dropwhat = WPN_PRIMARY);

/**
* Give item
* 
* @param id		Player Index
* @param item	Item name (Not Extra Item)
* @param ammo	Give ammunation
* @return		true if sucess / false otherwise
*/
native zp_give_item(id, const item[], ammo=0);

/**
* Strip all user weapons
* 
* @param id		Player Index
* @return		true if sucess / false otherwise
*/
native zp_strip_user_weapons(id);

/**
 * Registers a custom class which will be added to the human classes menu of ZP.
 *
 * @note The returned human class ID can be later used to identify
 * the class when calling the zp_get_user_human_class() natives.
 *
 * @param name				Caption to display on the menu.
 * @param info				Brief description of the class.
 * @param hp				Initial health points. (0 - Use default human health)
 * @param armor				User armor.
 * @param speed				Maximum speed.
 * @param gravity			Gravity multiplier.
 * @param uselang			Use lang in class name/description?
 * @param name_lang_key		Class name Lang key in .txt lang file
 * @param info_lang_key		Class Description Lang key in .txt lang file
 * @return					Human class index.
 * @error					If Human Class real Name Alterady Exists
 */
native zp_register_human_class(const name[], const info[], hp, armor, speed, Float:gravity, use_lang=0, const name_lang_key[]="ITEM_LANG_DEFAULT_KEY", const info_lang_key[]="ITEM_LANG_DEFAULT_KEY");

/**
 * Register a Human class model.
 *
 * @param class				Human Class index
 * @param player_model		Human Class Model
 * @param body				Human Class body
 * @param skin				Human Class skin
 * @return					True if sucess, false otherwise
 * @error					If Human class index are invalid
 */
native zp_register_hclass_model(classid, player_model[], body=0, skin=0);

/**
 * Returns a player's current human class ID.
 *
 * @param id		Player index.
 * @return			Internal human class ID, or -1 if not yet chosen.
 */
native zp_get_user_human_class(id);

/**
 * Returns a player's next human class ID (for the next spawn).
 *
 * @param id	Player index.
 * @return		Internal human class ID, or -1 if not yet chosen.
 */
native zp_get_next_human_class(id);

/**
 * Sets a player's next human class ID (for the next spawn).
 *
 * @param id		Player index.
 * @param classid	A valid human class ID.
 * @return			True on success, false otherwise.
 */
native zp_set_user_human_class(id, classid);

/**
 * Returns a human class' ID.
 *
 * @param name	Class name to look for.
 * @return		Internal human class ID, or -1 if not found.
 */
native zp_get_human_class_id(const name[]);

/**
 * Returns a hud type index.
 *
 * @param id	Player index.
 * @return		Hud index if sucess, -1 otherwise.
 */
native SpHudType:zp_get_user_hud_type(id);

/**
 * Get Human Class Description
 *
 * @param class		Human Class index
 * @param info		Buffer to copy hclass info to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Human Class index are invalid
 */
native zp_get_human_class_info(id, info[], len);

/**
 * Get Human Class name
 *
 * @param class		Human Class index
 * @param name		Buffer to copy hclass name to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Human Class index are invalid
 */
native zp_get_human_class_name(id, name[], len);

/**
 * Get Human Class realname
 *
 * @param class		Human Class index
 * @param realname	Buffer to copy hclass realname to
 * @param len		Maximum length of buffer
 * @return			True if sucess, false otherwise
 * @error			If Human Class index are invalid
 */
native zp_get_human_class_realname(id, realname[], len);

/**
 * Set Human Class Description
 *
 * @param class		Human Class index
 * @param newinfo	New description
 * @return			True if sucess, false otherwise
 * @error			If Human Class index are invalid
 */
native zp_set_human_class_info(class, newinfo[]);

/**
 * Set Human Class name
 *
 * @param class		Human Class index
 * @param newname	New name
 * @return			True if sucess, false otherwise
 * @error			If Human Class index are invalid
 */
native zp_set_human_class_name(class, newname[]);

/**
 * Add Text On main/spec hud
 *
 * @note Use in 'zp_player_show_hud' forward
 *
 * @param text		Text to display on the hud.
 * @return			True if sucess, false if not sucess.
 */
native zp_add_hud_text(const text[]);

/**
 * Register Zombie Class custom pain sound
 *
 * @param classid	Zombie Class index
 * @param sound		Pain sound
 * @return			True if sucess, false otherwise
 * @error			If Zombie Class index are invalid
 */
native zp_register_zclass_painsnd(classid, const sound[]);

/**
 * Register Zombie Class custom death sound
 *
 * @param classid	Zombie Class index
 * @param sound		Death sound
 * @return			True if sucess, false otherwise
 * @error			If Zombie Class index are invalid
 */
native zp_register_zclass_deathsnd(classid, const sound[]);

/**
 * Register Custom Special Zombie custom death sound
 *
 * @param classid	Special Zombie Class index
 * @param sound		Death sound
 * @return			True if sucess, false otherwise
 * @error			If Custom Special Zombie index are invalid
 */
native zp_register_zmspecial_deathsnd(classid, const sound[]);

/**
 * Register Custom Gamemode ambience sound
 *
 * @param gamemode	Gamemode index
 * @param sound		Ambience sound
 * @param Duration	Ambience duration
 * @param enable	Enable by default?
 * @return			True if sucess, false otherwise
 * @error			If gamemode index are invalid
 */
native zp_register_gamemode_ambience(gamemode, const sound[], Float:Duration, enable=1);

/**
 * Register Custom Gamemode round start sound
 *
 * @param gamemode	Gamemode index
 * @param sound		Round start sound
 * @return			True if sucess, false otherwise
 * @error			If gamemode index are invalid
 */
native zp_register_start_gamemode_snd(gamemode, const sound[]);

/**
 * Get user current default gravity
 *
 * @param id	Player index
 * @return		User default gravity
 */
native Float:zp_get_user_default_gravity(id);

/**
 * Change user gravity
 *
 * @param id		Player index
 * @param Gravity	New Gravity (-1.0 to reset a default gravity)
 * @return			True if sucess, false otherwise
 */
native zp_set_user_gravity(id, Float:Gravity);

/**
 * Returns the default maximum health of a current class.
 *
 * @note Takes into account first zombie's HP multiplier, base health from special classes.
 *
 * @param id	Player index.
 * @return		Maximum amount of health points, or -1 otherwise
 */
native zp_get_user_maxhealth(id);

/**
 * Get total of instaled human classes
 * 
 * @return				Total of instaled hclasses 
 */
native zp_get_hclass_count();

/**
 * Add Text On menu (Like ZP 5.0)
 *
 * @param text		Text to display on the zombie class name.
 * @return			True if sucess, false if not sucess.
 */
native zp_menu_textadd(const text[]);

/**
 * User have an unlimited ammo mode.
 *
 * @return			Unlimited ammo mode (0 - Not have | 1 - Unlimited reloads | 2 - Unlimited clip)
 */
native zp_get_user_unlimited_ammo(id);

/**
 * Sets a player's unlimited ammo.
 *
 * @param id		Affected player's index.
 * @param set		0 off
 * 					1 unlimited reloads
 * 					2 unlimited clip
 *
 * @return			True if sucess, false otherwise
 */
native zp_set_user_unlimited_ammo(id, set);

/**
 * Reset user clip mode
 *
 * @return			True if sucess, false otherwise
 */
native zp_reset_user_unlimited_ammo(id);

/**
 * Get user knockback value
 *
 * @return			Knockback value
 */
native Float:zp_get_user_knockback(id);

/**
 * Sets a player's unlimited ammo.
 *
 * @param id		Affected player's index.
 * @param amount	New knockback value
 * @return			True if sucess, false otherwise
 */
native zp_set_user_knockback(id, Float:amount);

/**
 * Reset user knockback value
 *
 * @return			Knockback value
 */
native zp_reset_user_knockback(id);

/**
 * Get user default clip mode
 *
 * @return			Default Clip mode
 */
native zp_get_default_unlimited_ammo(id);

/**
 * Get user default knockback
 *
 * @return			Default Knockback
 */
native Float:zp_get_default_knockback(id);

/**
 * Get user default max speed
 *
 * @return			Default max speed
 */
native Float:zp_get_user_default_maxspeed(id);

/***************************************************
-------------------- Forwards ----------------------
****************************************************/

/**
 * Called when the ZP round starts, i.e. first zombie
 * is chosen or a game mode begins.
 *
 * @param gamemode	Mode which has started.
 * @param id		Affected player's index (if applicable).
 */
forward zp_round_started(gamemode, id);

/**
 * Called before the ZP round starts. This is only 
 * called for custom game modes.
 * 
 * @note The custom game mode id can be used to start
 * the game mode externally
 * 
 * @note returning ZP_PLUGIN_HANDLED will cause the
 * game mode to be blocked and other game modes will
 * be given a chance.
 * 
 * @param gameid	Custom mode id which is called
 */
forward zp_round_started_pre(gameid);

/**
 * Called when the round ends.
 *
 * @param winteam	Team which has won the round.
 */
forward zp_round_ended(winteam);

/**
 * Called when a player gets infected.
 *
 * @param id		Player index who was infected.
 * @param infector	Player index who infected him (if applicable).
 * @param classid	Special class index
 */
forward zp_user_infected_pre(id, infector, classid);
forward zp_user_infected_post(id, infector, classid);

/**
 * Called when a player turns back to human.
 *
 * @param id		Player index who was cured.
 * @param classid	Special Class index.
 * @param attacker 	Attacker index
 */
forward zp_user_humanized_pre(id, classid, attacker);
forward zp_user_humanized_post(id, classid, attacker);

/**
 * Called on a player infect/cure attempt. You can use this to block
 * an infection/humanization by returning ZP_PLUGIN_HANDLED in your plugin.
 *
 * @note Right now this is only available after the ZP round starts, since some
 * situations (like blocking a first zombie's infection) are not yet handled.
 */
forward zp_user_infect_attempt(id, infector, classid);
forward zp_user_humanize_attempt(id, classid, attacker);

/**
 * Called when an admin selects a custom game mode from the ZP admin menu.
 *
 * @note You should trigger the custom game mode here with out any checks
 * @note Use ZP_PLUGIN_HANDLED for block it (in selected pre)
 *
 * @param gameid	Internal custom game mode ID
 * @param id		Player index who selected the game mode
 */
forward zp_game_mode_selected(gameid, id);

/**
 * Called when an admin selects a custom game mode from the ZP admin menu.
 *
 * @note Use ZP_PLUGIN_HANDLED for block it (in selected pre)
 *
 * @param id		Player index who selected the game mode
 * @param gamemode	Internal custom game mode ID
 */
forward zp_game_mode_selected_pre(id, gamemode);

/**
 * Called when a player spawns. This is also called for CZ bots 
 * which are spawning
 *
 * @note You should use this, instead of other spawn forwards,
 * when you want to change some one's class after spawning.
 * 
 * @note If you have used this forward then you must return 
 * ZP_PLUGIN_HANDLED to inform the main plugin that you have used
 * this forward
 *
 * @param id		Player index who has spawned
 * @param resp_zombie	This is passed by the main plugin as 1 if
 * 			the player needs to be spawned as a zombie
 * 			otherwise it is passed as zero
 */
forward zp_player_spawn_post(id, resp_zombie);

/**
 * Called when a player buys an extra item from the ZP menu.
 *
 * @note You can now return ZP_PLUGIN_HANDLED in your plugin to block
 * the purchase and the player will be automatically refunded.
 *
 * @param id		Player index of purchaser.
 * @param itemid	Internal extra item ID.
 */
forward zp_extra_item_selected(id, itemid);

/**
 * Called while player are choosing item
 *
 * @note Use the ZP_PLUGIN_HANDLED for block option (Like ZP 5.0)
 * @note Use the ZP_PLUGIN_SUPERCEDE for block showing item in menu
 * @note Use 'zp_extra_item_textadd' for add a small text description
 *
 * @param id		Player index
 * @param classid	Extra item index
 */
forward zp_extra_item_selected_pre(id, itemid);

/**
 * Called when player gets frozen
 *
 * @note Use the ZP_PLUGIN_HANDLED for block user frozen
 *
 * @param id		Player index
 */
forward zp_user_frozen_pre(id);
forward zp_user_frozen_post(id);

/**
 * Called when player gets burning
 *
 * @note Use the ZP_PLUGIN_HANDLED for block user burn
 *
 * @param id		Player index
 */
forward zp_user_burn_pre(id);
forward zp_user_burn_post(id);

/**
 * Called when a player gets unfrozen (frostnades).
 *
 * @param id		Player index.
 */
forward zp_user_unfrozen(id);

/**
 * Called when a player becomes the last zombie.
 *
 * @note This is called for the first zombie too.
 *
 * @param id		Player index.
 */
forward zp_user_last_zombie(id);

/**
 * Called when a player becomes the last human.
 *
 * @param id		Player index.
 */
forward zp_user_last_human(id);

/**
 * Called when open Zombie Classes menu
 *
 * @note Use the ZP_PLUGIN_HANDLED for block option (Like ZP 5.0)
 * @note Use the ZP_PLUGIN_SUPERCEDE for block showing class in menu
 *
 * @param id		Player index.
 * @param classid	Zombie Class index.
 */
forward zp_zombie_class_choosed_pre(id, classid);
forward zp_zombie_class_choosed_post(id, classid);

/**
 * Called when open Human Classes menu
 *
 * @note Use the ZP_PLUGIN_HANDLED for block option (Like ZP 5.0)
 * @note Use the ZP_PLUGIN_SUPERCEDE for block showing class in menu
 *
 * @param id		Player index.
 * @param classid	Human Class index.
 */
forward zp_human_class_choosed_pre(id, classid);
forward zp_human_class_choosed_post(id, classid);

/**
 * Called when player reset render
 *
 * @note Use the ZP_PLUGIN_SUPERCEDE for block it
 *
 * @param id		Player index.
 */
forward zp_user_rendering_reset_pre(id);
forward zp_user_rendering_reset_post(id);

/**
 * Execute when player change the model
 *
 * @note Use the ZP_PLUGIN_SUPERCEDE for block it
 * @note You can use 'zp_set_model_param' for change model on this forward
 *
 * @param id		Player index.
 */
forward zp_user_model_change_pre(id, model[], body, skin);
forward zp_user_model_change_post(id, model[], body, skin);

/**
 * Called when admin make a player to special class from admin menu
 *
 * @note Use the ZP_PLUGIN_HANDLED for block it
 *
 * @param id		Player index.
 */
forward zp_human_special_choosed_pre(id, specialid);
forward zp_human_special_choosed_post(id, specialid);

/**
 * Called when admin make a player to special class from admin menu
 *
 * @note Use the ZP_PLUGIN_HANDLED for block it
 *
 * @param id		Player index.
 */
forward zp_zombie_special_choosed_pre(id, specialid);
forward zp_zombie_special_choosed_post(id, specialid);

/** 
 * Called when user get infected by bomb function
 * 
 * @note Use ZP_PLUGIN_SUPERCEDE for block it
 * 
 * @param id			Player Index
 * 
*/
forward zp_infected_by_bomb_pre(victim, attacker);
forward zp_infected_by_bomb_post(victim, attacker);

/** 
 * Called when user use Unstuck function (In menu)
 * 
 * @note Use ZP_PLUGIN_HANDLED for block it
 * 
 * @param id			Player Index
 * 
*/
forward zp_user_unstuck_pre(id);
forward zp_user_unstuck_post(id);

/** 
 * Called when user choose weapon in weapons menu
 * 
 * @note Use ZP_PLUGIN_HANDLED for blocking buy this weapon
 * 
 * @param id			Player Index
 * @param wpn_type		Type of Weapon (Primary/Secondary)
 * @param weaponid		Index of Registred Weapon
 * 
*/
forward zp_weapon_selected_pre(id, wpn_type, weaponid);
forward zp_weapon_selected_post(id, wpn_type, weaponid);

/** 
 * Called when show main/spec hud
 * 
 * @note Use ZP_PLUGIN_HANDLED for block show hud
 * 
 * @param id			Player Index
 * @param target		Spec target index
 * @param hudtype		Player hudtype index
 * 
*/
forward zp_player_show_hud(id, target, SpHudType:hudtype);

/** 
 * Called when plays any ambience sound
 * 
 * @note Works only with zp sounds
 * @note Use ZP_PLUGIN_HANDLED for block it
 * @note You can use 'zp_set_param_string'
 * 
 * @param sound			Sound to play
 * @param is_mp3		Is sound an mp3?
 * 
*/
forward zp_fw_sound_play(sound[], is_mp3);

/** 
 * Called when stop all sounds
 * 
 * @note Works only with zp sounds
 * @note Use ZP_PLUGIN_HANDLED for block it
 * 
*/
forward zp_fw_sound_stop();

/** 
 * Called when user deploy an weapon
 * 
 * @note Use ZP_PLUGIN_HANDLED for allow zombie to use this weapon
 * 
*/
forward zp_fw_deploy_weapon(id, weaponid);

// ZP Specials Stocks
#include <zpsp_stocks>
