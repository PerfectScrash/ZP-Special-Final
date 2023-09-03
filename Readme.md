## Donate:
- If you want to donate for my works to encourage me to continue with the work feel free to donate
- Donate link: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=A8RJPHR3T8P6Y

# Zombie Plague Special

***Zombie Plague Special is a unofficial version edited in ZPA 1.6.1's core using a stable, improved and optimized code which avoids server crashes and reduce lag. And Some modes are added like Berserker (Knifer), Predator (NightCrawler), Bombardier (From ZP Shade), Wesker (From Zombie Apocalipse), Spy and Dragon.***

* **Game Play Modes:**
	- **Normal Modes:** Simple Infection, Multiple Infection, Swarm Mode, Plague Mode, Armageddon
	- **Special Modes:** Nemesis, Survivor, Assassin, Sniper, Berserker, Predator, Wesker, Bombardier, Spy, Dragon
	- **Custom Modes (If Enable):** Assassin Vs Sniper, Nightmare, Remix
	- **More Custom Modes (If you want):** https://github.com/PerfectScrash/ZP-Special-Mods

* **Special Classes Descriptions:**
	- **Nemesis:** Classic Zombie with more health, glow and aura
	- **Survivor:** Classic Human with a M249 + Unlimited clip
	- **Assassin:** Classic Zombie with a darkness map in your round
	- **Sniper:** Classic Human with a Very Strong AWP can kill a zombie with one bullet
	- **Berserker:** Human with samurai sword like Ninja.
	- **Predator:** Invisible Zombie that when takes shot he returns to be visible again for a few seconds.
	- **Wesker:** From Zombie Apocalipse. Human with Deagle more Damage
	- **Bombardier:** From Zombie Plague Shade. Zombie with infinities kill bombs
	- **Spy:** Human with Simmilar Predator's Habilities and More Damage with M3 Shotgun
	- **Dragon:** Can Fly and Unleash Fire and Ice

* **If you Want to see more ZPSp Gameplay Additions Click Here: https://github.com/PerfectScrash/ZP-Special-Additions**

* **Credits:**
	- **MeRcyLeZZ:** for original zp version
	- **ROKronoS:** for idea of Bombardier Mod
	- **abdul-rehman and ZPA Team:** for zpa version and some special mods
	- **Junin:** For Spy mode Idea
	- **Perfect Scrash:** For Adding New Modes, fix and Optimizing Code

* **Official Link of Mod:**
	https://forums.alliedmods.net/showthread.php?t=260845

*  **Donate:**
	- If you want to donate for my works to encourage me to continue with the work feel free to donate
	- Donate link: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=A8RJPHR3T8P6Y

* **Change Log:**

	* **1.0:**
		- First Post

	* **2.0:**
		- Removed Another mods (Dragon/Padre/Chuck Noris)
		- Added New Natives and Forwards
		- Fixed Bug of Of Special Zombies using zombie classes's skills
		- Optmizied code
		- Removed .ini of extra itens and zombie classes
		- Added p_  model for Special Humans
		- Added Wesker & Bombardier Mod

	* **2.0 Fix:**
		- Fixed Berserker Knife Model

	* **2.1:**
		- Fixed Ambiences Sounds
		- Added native zp_get_last_mode()

	* **2.2:**
		- Added Spy Mode
		- Re-added Dragon Mode
		- Fixed Lang
		- Optimized code
		- Fixed Small Bug off Predator's Power when Handle Models Separate is enable
		- Fixed Predator's Glow cvar

	* **2.3:**
		- Added New Natives
		- Fixed Small bug on Open zombie class after infection
		- Added Bot Suppot of Dragon Skills (Unleash Fire & Ice Only, Fly is not possible)
		- Etc

	* **2.4:**
		- Added New Natives
		- Fixed Bot Extra Item Support
		- Readded .ini for zombie classes and extra itens (This file is auto create)
		- Added Some Cvars
		- Etc

	* **2.4.1:**
		- Optimized Code
		- Added cvar "zp_choose_zclass_instantanly"
		- Added native lost on include (zp_override_user_model)
		- You can turn off the special class (Nemesis/Survivor/Sniper/Etc..) you want if you have not liked

	* **2.5:**
		- Optimized Code
		- Added .ini file of Custom Game Modes
		- Added Bot Suppot for Bombardier Grenade
		- Etc

	* **3.0:**
		- Optimized Code
		- Fixed Fog
		- Fixed Knockback
		- Added Some Natives (zp_register_human_special/zp_register_zombie_special/Etc)
		- Etc

	* **3.0 Fix:**
		- Fixed Make Custom Zombie Special Menu

	* **3.1:**
		- Fixed AnthRax Hud style
		- Fixed Bug of Predator and Spy not turn invisible to those who play in Software Mode
		- Fixed Choose Zombie Class instantanly
		- Fixed Some Error Logs
		- Added Native (zp_get_special_class_name)

	* **3.2:**
		- Fixed Choose Zombie Class instantanly when frozen
		- Fixed Zombie class save when have some characters
		- Fixed zombie pain free
		- Added Some Natives (zp_get_special_class_id/zp_get_zombie_class_realname)
		- Fixed custom special class's rounds

	* **3.3:**
		- Added 4.3 fix 5a's all contains and fixes

	* **3.4:**
		- Fixed cvar "zp_surv_damage_multi"
		- Added New Natives
		- Added Cvars for turn on/off frozing Nemesis/Assassin/Predator/Bombardier/Dragon
		- Added Configuration for turn on/off frozing Custom Special Zombies
		- Removed cvar "zp_random_weapons" because are changed for "zp_random_primary" and "zp_random_secondary" (Like ZP 5.0)

	* **3.5:**
		- Added Zombie Escape Map Suport
		- Fix Bug on Custom Special Classes Game modes not start when have one people on server
		- Added Natives: (zp_is_escape_map | zp_do_random_spawn)
		- Added More New Cvars
		- Fixed Small Bug on precache ambience sounds
		- Fixed Bombardier Grenade when infection bomb is disable
		- Added p_ & w_ model for Grenades

	* **3.5 Fix:**
		- Removed Block use button before round begins (Reason: Some maps have button for open door on start)
		- Fixed Native zp_get_user_next_class

	* **4.0:**
		- Fixed T Model Precache
		- Added Configuration for enable/disable Special Classes (Custom and Normal)
		- Fixed native ze_is_escape_map
		- Fixed Log Error when player die before round begins
		- Readed cvar for change nvsion color
		- Added cvar for disable/enable for peoples change nvision color in personal menu
		- Fixed cvar for change flashlight color
		- Added cvar for disable/enable for peoples change flashlight color in personal menu
		- Added one Hud Style: Under Radar, Center AnthRax
		- Added cvar zp_zombie_escape_fail for zombies scoring when time up and humans not escaped in escape maps
		- Added configuration: "VIP ZOMBIE" for change vip zombie model
		- Added configuration: "ENABLE END ROUND SOUNDS" for enable/disable end round sounds
		- Added More Forwards for you custonomize more easily
		- Updated zombie_plague_special.ini and zombie_plague_special.cfg (Need Change when you update 3.5 to 4.0 for prevent bugs)
		- Lang Updated (Need Change when you update 3.5 to 4.0 for prevent bugs)

	* **4.1:**
		- Fixed Start Modes Menu
		- Fixed Forwards
		- Added Multimodels Suport in .ini files
		- ZP main menu title can change now from lang [Lang Updated (Need Change when you update 4.0 or bellow to 4.1 for prevent bugs)]
		- Added Escape Support for Cvar "zp_human_armor_protect"
		- Fixed a Small Bug with choose class instantanly when dead
		- Added Block Trigger Hurt Kill Damage before Round Starts and when round end (Essentials for Zombie Escape Maps)
		- Fixed MP3 Precache
	* **4.2:**
		- Added Native: zp_reload_csdm_respawn()
		- Added Native: zp_set_lighting(const light[])
		- Added Native: zp_reset_lighting()
		- Added Native: zp_get_random_player(const team = 0)
		- Added Native: zp_is_user_stuck(id)
		- Added Forward: zp_infected_by_bomb_pre(victim, attacker)
		- Added Forward: zp_infected_by_bomb_post(victim, attacker)
		- Added Forward: zp_user_unstuck_pre(id)
		- Added Forward: zp_user_unstuck_post(id)
		- Added Native: zp_register_weapon(const name[], wpn_type)
		- Added Native: zp_weapon_menu_textadd(const text[])
		- Added Native: zp_get_weapon_realname(wpn_type, weaponid, name[], len)
		- Added Native: zp_get_weapon_name(wpn_type, weaponid, name[], len)
		- Added Native: zp_set_weapon_name(wpn_type, weaponid, name[])
		- Added Native: zp_weapon_is_custom(wpn_type, weaponid)
		- Added Native: zp_weapon_count(wpn_type, skip_def_custom)
		- Added Native: zp_set_model_param(const string[])
		- Added Forward: zp_weapon_selected_pre(id, wpn_type, weaponid)
		- Added Forward: zp_weapon_selected_post(id, wpn_type, weaponid)
		- Added Free Nightvision for Human Special Class (Disable with cvar)
		- Removed "zp_nvg_give" cvar for add cvar for each class
		- Trigger hurt kill before round starts now teleport player to spawn
		- Fixed Log Files
		- Fixed small bug in forward zp_user_model_change_pre/zp_user_model_change_post (In override native)
		- Log files are created now with date on name (Example: zombie_plague_special_21-06-2018.txt)
		- Fixed Admin Menu Small Bugs
		- Fixed Dragon Frost Skill Bug
		- Added Start Special Class modes itens (Nemesis/Assassin/Survivor/etc) in Start modes menu
		- Improved Code
		- .cfg update [Need Change for prevent possible bugs]
		- Lang updated (For menu itens) [Need Change for prevent possible bugs]

	* **4.3**
		- Fixed Native: zp_get_special_class_id
		- Fixed Native: zp_get_zombie_class_realname
		- Fixed Native: zp_get_extra_item_realname
		- Fixed Native: zp_make_user_special
		- Fixed Native: zp_get_gamemode_id
		- Fixed Native: zp_get_extra_item_realname
		- Fixed Native: zp_get_random_player
		- Fixed Zombie armor damage.
		- Removed Replace Chars when you register some item/class/gamemode/special class/weapon with [ or ] chars (Update your amx_settings for prevent bugs)
		- Added Native: zp_start_game_mod(gameid)
		- Added Native: zp_set_next_game_mode(gameid)
		- Added Native: zp_is_special_class_enable(is_zm, classid)
		- Added Native: zp_is_gamemode_enable(modeid)
		- Added Cvar: zp_zombie_idle_sound
		- Added Separate Grenade Configuration [Update your zombie_plague_special.ini file for prevent bugs]
		- Fixed Escape support for external gamemodes when enable gamemode only in escape map
		- Changed Swarm chossing player system to same system of multi infection (Before are chossing by Team now its randomly)
		- Added Cvar: zp_swarm_ratio
		- Added Escape support for enable/disable internal gamemodes in a certain modes
		- .cfg update [Need Change for prevent possible bugs]
		- Optmized Code

	* **4.3 [Fix]:**
		- Fixed small bug with extra item grenades (Like antidote bomb, jump bomb, etc)

	* **4.4 Beta:**
		- Fixed Plague Mod
		- Added ZP_CHAT_TAG in lang (You can change chat tag now) [Lang updated: update lang for prevent bugs]
		- Fixed Server Crash when "zp_human_damage_reward"/"zp_zombie_damage_reward" are disable
		- Now Ammo Pack by Damage dealth are now works like in zp 5.0
		- Added Cvar "zp_ammopack_damage"
		- Changed Native "zp_set_extra_damage"
		- Fixed Native in include: "zp_get_special_class_name"
		- Fixed Trigger Hurt kill

		- **Beta Update 1/3/20**
			- Fixed painfree/knockback
			- Added Support to change roundtime in zombie_plague_special.ini

		- **Beta Update 25/3/20**
			- Added Respawn limit cvars by gamemode (Same with custom gamemodes but you can change only in zpsp_gamemodes.ini)
			- Added Native: zpsp_register_gamemode(const name[], flags, chance, allow, dm_mode, resp_limit=0, enable_in_ze=0)
			- Added Custom Death sound for Normal/Special Zombie Classes (Now you can change in .ini files for any class)
			- Added Pain Sounds for specific zombie class (You can change in zpsp_zombieclasses.ini)
			- Added Native: zp_get_custom_extra_start()

		- **Beta Update 15/06/20**
			- Fixed Not Precached Sound '0'
			- Added Fade Nightvision Mode (Can change by cvar "zp_nvg_custom")
			- Added Cvar: "zp_nvg_fade_alpha"
			- Added Madness delay (After Use)
			- Added Cvar: "zp_extra_madness_use_delay"

		- **Beta Update: 05/12/20 (Final Beta - If dont have bugs consider Official 4.4 version)**
			- Fixed Bug when joins spec before round begins
			- Added Human Speed by Weapon Weight (Weapon Speed Multi - You can change in zombie_plague_special.ini) [Only For Normal Humans]
			- Added Cvar: "zp_human_wpn_weight_enable"
			- Added Lang Option for Extra Item Name, Gamemode Name, Special Class Name, Zombie Class Name/Info, Weapons/Custom Weapons Name. Just edit "zpsp_lang_itens_classes.txt"

		- Fixing 08/12/20:
			- Fixed Armageddon Respawn - Before peoples respawn as human and not survivor
			- Fixed Lang from Additional Extra Weapons (Grenades/AWP/ETC.)

	* **4.5**:
		- REMOVED Amx 1.8.2 SUPORT
		- Fixed trigger_hurt when killing with bugged players (i think).
		- Fixed chat lang bug. (Sometimes appears in [en] language not in players language)
		- Added Native: zp_force_user_class(id, spid, zombie, attacker = 0, sillentmode = 1)
		- Updated Native: zp_set_user_frozen(id, set, Float:Duration = -1.0)
		- Updated Native: zp_set_user_madness(id, set, Float:Duration = -1.0)
		- Updated Native: zp_set_user_burn(id, set, Float:Duration = -1.0)
		- Added Cvars: zp_human_frags_for_disinfect, zp_human_disnfect_reward, zp_green_deathmsg
		- Removed "HANDLE MODELS ON SEPARATE ENT"
		- Removed "MODELCHANGE DELAY"
		- Now models system are using "cstrike" module
		- Added Native: zpsp_override_user_model(id, const model, body=0, skin=0, modelindex=0)
		- Added Player Submodel Support (You can add more player models using only 1 .mdl)
		- Added Player Skin Support (You can use other textures with 1 .mdl)
		- Added Native: zp_set_fw_param_int(int_id, value)
		- Added Many Stocks (Check zpsp_stocks.inc)
		- Fixed bug when you create a custom zombie special with same name with any custom human special
		- Added Human Classes System
		- Added Native: zp_register_human_class(const name[], const info[], hp, armor, speed, Float:gravity, use_lang=0, const name_lang_key[]="ITEM_LANG_DEFAULT_KEY", const info_lang_key[]="ITEM_LANG_DEFAULT_KEY");
		- Added Native: zp_get_user_human_class(id);
		- Added Native: zp_get_next_human_class(id);
		- Added Native: zp_set_user_human_class(id, classid);
		- Added Native: zp_register_hclass_model(classid, player_model[], body=0, skin=0)
		- Added Native: zp_get_human_class_id(const name[])
		- Added Native: zp_get_human_class_info(id, info[], len)
		- Added Native: zp_get_human_class_name(id, name[], len)
		- Added Native: zp_set_human_class_info(id, const info[])
		- Added Native: zp_set_human_class_name(id, const name[])
		- Added Native: zp_get_human_class_realname(id, realname[], len)
		- Added Forward: zp_human_class_choosed_pre(id, classid)
		- Added Forward: zp_human_class_choosed_post(id, classid)
		- Added Native: zp_drop_weapons(id, dropwhat)
		- Added Native: zp_give_item(id, const item[])
		- Added Native: zp_strip_user_weapons(id)
		- Added Native: zp_menu_textadd(const text[])
		- Updated Native: zp_register_weapon(const name[], wpn_type, uselang=0, const langkey[] = "ITEM_LANG_DEFAULT_KEY")
		- Added Cvar: zp_choose_hclass_instantanly
		- Improved "save_custonomization" system
		- Improved model/sound system for any external class
		- Updated Native: zp_disinfect_user(id, silent, attacker)
		- Updated Native: zpsp_register_gamemode(const name[], flags, chance, allow, dm_mode, resp_limit=0, enable_in_ze=0, uselang=0, const langkey[]="ITEM_LANG_DEFAULT_KEY");
		- Added Forward: zp_player_show_hud(id, target, SpHudType:hudtype);
		- Added Native: zp_add_hud_text(const text[]);
		- Added Native: zp_get_user_hud_type(id);
		- Now all natives are using "style 0"
		- Added Native: zp_register_zclass_painsnd(classid, const sound[])
		- Added Native: zp_register_zclass_deathsnd(classid, const sound[])
		- Added Native: zp_register_zmspecial_deathsnd(classid, const sound[])
		- Added Native: zp_register_gamemode_ambience(gamemode, const sound[], Float:Duration, enable=1)
		- Added Native: zp_get_user_default_gravity(id)
		- Added Native: zp_set_user_gravity(id, Float:Gravity)
		- Added Native: zp_set_param_string(const string[])
		- Added Native: zp_get_user_maxhealth(id)
		- Added Native: zp_register_start_gamemode_snd(id, const sound[])
		- ZP main configs are now in a exclusive path (configs/zpsp_configs/...)
		- On amx settings api:
			- Expanded buffer size on filenames
			- Added Directory Support on filenames
		- Added Native: zp_get_hclass_count()
		- Added Native: zp_get_user_unlimited_ammo(id)
		- Added Native: zp_set_user_unlimited_ammo(id, set)
		- Added Native: zp_reset_user_unlimited_ammo(id)
		- Added Native: zp_get_user_knockback(id)
		- Added Native: zp_set_user_knockback(id, Float:amount)
		- Added Native: zp_reset_user_knockback(id)
		- Added Forward: zp_fw_deploy_weapon(id, weaponid)
		- Added Native: zp_get_default_unlimited_ammo(id)
		- Added Native: zp_get_default_knockback(id)
		- Added Native: zp_get_user_default_maxspeed(id)
		- Added Hud Cvars
		- Official Patch V1 (12/03)
			- Fixed bug when you choose gun locked by forward in weapons menu and opens a secondary menu
			- Fixed bug when load/save custom primary/secondary weapons with same name
			- Fixed native zp_get_user_default_gravity(id);
			- Removed useless cvar/function zp toggle
			- Fixed Native: zp_get_user_default_maxspeed
			- Fixed Native: zp_set_user_knockback
			- Fixed weapons menu

	* Fix (18/12/2022):
		- Fixed Invalid Player Error log in Flame_Think

	* Fix (03/02/2023):
		- Fix env_sprite Conflict wth other plugins like Salamander

	* 4.5 Patch v2 (03-09-2023)
		- Removed register_ham_czbot function, now are using "specialbot" param in hamsandwich
		- Added auto Add Setting in .ini for NOOBS
		- Added cvar: "zp_respawn_on_headshoot"
		- Fixed Forward: "zp_fw_deploy_weapon"
		- Fixed Natives: "zp_reset_user_knockback" and "zp_get_default_knockback"
		- Small otimization on code in Admin actions
		- Now flame are in entities now.
		- Fixed Submodel/Skin support
		- Fixed team bug
		- Fixed native zp_set_lighting
		- Fixed Forward zp_model_change_pre
		- Fixed Forward zp_game_mode_selected_pre
		- Fixed Cvar "zp_zombie_armor" thanks MolaMASTER999
		- Fixed some lang mistakes
		- Fixed native zp_set_lighting (Again)
		- Fixed error log when user disconnects with personal menu opened
		- Fixed Zombie Armor when Berserker is attacker
