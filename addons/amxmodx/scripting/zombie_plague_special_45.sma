/*===========================================================================================================================
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// ZOMBIE PLAGUE SPECIAL ///////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	Zombie Plague Special is a unofficial version edited in ZPA 1.6.1's core using a stable,
	improved and optimized code which avoids server crashes and reduce lag.
	And Some modes are added like Berserker (Knifer), Predator (NightCrawler),
	Bombardier (From ZP Shade), Wesker (From Zombie Apocalipse), Spy and Dragon

	Game Play Modes:
		- Normal Modes: Simple Infection, Multiple Infection, Swarm Mode, Plague Mode, Armageddon
		- Special Modes: Nemesis, Survivor, Assassin, Sniper, Berserker, Predator, Wesker, Bombardier, Spy, Dragon
		- Custom Modes (If Enable): Assassin Vs Sniper, Nightmare, Remix
		- More Custom Modes (If you want): https://github.com/PerfectScrash/ZP-Special-Mods

	If you Want to see more ZPSp Gameplay Additions Click Here: https://github.com/PerfectScrash/ZP-Special-Additions

	Special Classes Descriptions:
		- Nemesis: Classic Zombie with more health, glow and aura
		- Survivor: Classic Human with a M249 + Unlimited clip
		- Assassin: Classic Zombie with a darkness map in your round
		- Sniper: Classic Human with a Very Strong AWP can kill a zombie with one bullet
		- Berserker: Human with samurai sword like Ninja.
		- Predator: Invisible Zombie that when takes shot he returns to be visible again for a few seconds.
		- Wesker: From Zombie Apocalipse. Human with Deagle more Damage
		- Bombardier: From Zombie Plague Shade. Zombie with infinities kill bombs
		- Spy: Human with Simmilar Predator's Habilities and More Damage with M3 Shotgun
		- Dragon: Can Fly and Unleash Fire and Ice

	Credits:
		- MeRcyLeZZ- for original zp version
		- ROKronoS: for idea of Bombardier Mod
		- abdul-rehman and ZPA Team: for zpa version and some special mods
		- Junin: For Spy mode Idea
		- Perfect Scrash: For Adding New Modes, fix and Optimizing Code

	Official Link of Mod:
		https://forums.alliedmods.net/showthread.php?t=260845

	Change log:
		* 1.0:
			- First Post
		* 2.0:
			- Removed Another mods (Dragon/Padre/Chuck Noris)
			- Added New Natives and Forwards
			- Fixed Bug of Of Special Zombies using zombie classes's skills
			- Optmizied code
			- Removed .ini of extra itens and zombie classes
			- Added p_  model for Special Humans
			- Added Wesker & Bombardier Mod
		* 2.0 Fix:
			- Fixed Berserker Knife Model
		* 2.1:
			- Fixed Ambiences Sounds
			- Added native zp_get_last_mode()
		* 2.2:
			- Added Spy Mode
			- Re-added Dragon Mode
			- Fixed Lang
			- Optimized code
			- Fixed Small Bug off Predator's Power when Handle Models Separate is enable
			- Fixed Predator's Glow cvar
		* 2.3:
			- Added New Natives
			- Fixed Small bug on Open zombie class after infection
			- Added Bot Suppot of Dragon Skills (Unleash Fire & Ice Only not for Fly)
			- Etc
		* 2.4:
			- Added New Natives
			- Fixed Bot Extra Item Support
			- Readded .ini for zombie classes and extra itens (This file is auto create)
			- Added Some Cvars
			- Etc.
		* 2.4.1:
			- Optimized Code
			- Added cvar "zp_choose_zclass_instantanly"
			- You can turn off the special class (Nemesis/Survivor/Sniper/Etc..) you want if you have not liked
			- Added native lost on include (zp_override_user_model)
			- Etc
		* 2.5:
			- Optimized Code
			- Added .ini file of Custom Game Modes
			- Added Bot Suppot for Bombardier Grenade
			- Etc
		* 3.0:
			- Optimized Code
			- Fixed Fog
			- Fixed Knockback
			- Added Some Natives (zp_register_human_special/zp_register_zombie_special/Etc)
			- Etc

		* 3.0 Fix:
			- Fixed Make Custom Zombie Special Menu
		* 3.1:
			- Fixed AnthRax Hud style
			- Fixed Bug of Predator and Spy not turn invisible to those who play in Software Mode
			- Fixed Choose Zombie Class instantanly
			- Fixed Some Error Logs
			- Added Native (zp_get_special_class_name)
		* 3.2:
			- Fixed Choose Zombie Class instantanly when frozen
			- Fixed Zombie class save when have some characters
			- Fixed zombie pain free
			- Added Some Natives (zp_get_special_class_id/zp_get_zombie_class_realname)
			- Fixed custom special class's rounds
		* 3.3:
			- Added 4.3 fix 5a's all contains and fixes

		* 3.4:
			- Fixed cvar "zp_surv_damage_multi"
			- Added New Natives
			- Added Cvars for turn on/off frozing Nemesis/Assassin/Predator/Bombardier/Dragon
			- Added Configuration for turn on/off frozing Custom Special Zombies
			- Removed cvar "zp_random_weapons" because are changed for "zp_random_primary" and "zp_random_secondary" (Like ZP 5.0)
		* 3.5:
			- Added Zombie Escape Map Suport
			- Fix Bug on Custom Special Classes Game modes not start when have one people on server
			- Added Natives: (zp_is_escape_map | zp_do_random_spawn)
			- Added More New Cvars
			- Fixed Small Bug on precache ambience sounds
			- Fixed Bombardier Grenade when infection bomb is disable
			- Added p_ & w_ model for Grenades
		* 3.5 Fix:
			- Removed Block use button before round begins (Reason: Some maps have button for open door on start)
			- Fixed Native zp_get_user_next_class
		* 4.0:
			- Fixed T Model Precache
			- Added Configuration for enable/disable Special Classes (Custom and Normal)
			- Fixed native ze_is_escape_map
			- Fixed Log Error when player die before round begins
			- Readed cvar for change nvsion color
			- Added cvar for disable/enable for peoples change nvision color in personal menu
			- Fixed cvar for change flashlight color
			- Added cvar for disable/enable for peoples change flashlight color in personal menu
			- Added one Hud Style: Under Radar
			- Added cvar zp_zombie_escape_fail for zombies scoring when time up and humans not escaped in escape maps
			- Added configuration: "VIP ZOMBIE" for change vip zombie model
			- Added configuration: "ENABLE END ROUND SOUNDS" for enable/disable end round sounds
			- Added More Forwards for you custonomize more easily
			- Updated zombie_plague_special.ini and .cfg (Need Change when you update 3.5 to 4.0 for prevent bugs)
			- Lang Updated (Need Change when you update 3.5 to 4.0 for prevent bugs)

		* 4.1:
			- Fixed Start Modes Menu
			- Fixed Forwards
			- Added Multimodels Suport in .ini files
			- ZP main menu title can change now from lang [Lang Updated (Need Change when you update 4.0 or bellow to 4.1 for prevent bugs)]
			- Added Escape Support for Cvar "zp_human_armor_protect"
			- Fixed a Small Bug with choose class instantanly when dead
			- Added Block Trigger Hurt Kill Damage before Round Starts and when round end (Essentials for Zombie Escape Maps)
			- Fixed MP3 Precache

		* 4.2:
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

		* 4.3
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
			- Added Separate Grenade Configuration
			- Fixed Escape support for external gamemodes when enable gamemode only in escape map
			- Changed Swarm chossing player system to same system of multi infection (Before are chossing by Team now its randomly)
			- Added Cvar: zp_swarm_ratio
			- Added Escape support for enable/disable internal gamemodes in a certain modes
			- Optmized Code

		* 4.3 [Fix]:
			- Fixed small bug with extra item grenades (Like antidote bomb, jump bomb, etc)

		* 4.4 Beta:
			- Fixed Plague Mod
			- Added ZP_CHAT_TAG in lang (You can change chat tag now) [Lang updated: update lang for prevent bugs]
			- Fixed Server Crash when "zp_human_damage_reward"/"zp_zombie_damage_reward" are disable
			- Now Ammo Pack by Damage dealth are now works like in zp 5.0
			- Added Cvar "zp_ammopack_damage"
			- Changed Native "zp_set_extra_damage"
			- Fixed Native in include: "zp_get_special_class_name"
			- Fixed Trigger Hurt kill

		--- Beta Update 1/3/20
			- Fixed painfree/knockback
			- Added Support to change roundtime in zombie_plague_special.ini

		--- Beta Update 25/3/20
			- Added Respawn limit cvars by gamemode (Same with custom gamemodes but you can change only in zpsp_gamemodes.ini)
			- Added Native: zpsp_register_gamemode(const name[], flags, chance, allow, dm_mode, resp_limit=0, enable_in_ze=0)
			- Added Custom Death sound for Normal/Special Zombie Classes (Now you can change in .ini files for any class)
			- Added Pain Sounds for specific zombie class (You can change in zpsp_zombieclasses.ini)
			- Added Native: zp_get_custom_extra_start()

		--- Beta Update 15/06/20
			- Fixed Not Precached Sound '0'
			- Added Fade Nightvision Mode (Can change by cvar "zp_nvg_custom")
			- Added Cvar: "zp_nvg_fade_alpha"
			- Added Madness delay (After Use)
			- Added Cvar: "zp_extra_madness_use_delay"

		--- Beta Update: 05/12/20 (Final Beta)
			- Fixed Bug when joins spec before round begins
			- Added Human Speed by Weapon Weight (Weapon Speed Multi - You can change in zombie_plague_special.ini) [Only For Normal Humans]
			- Added Cvar: "zp_human_wpn_weight_enable"
			- Added Lang Option for Extra Item Name, Gamemode Name, Special Class Name, Zombie Class Name/Info, Weapons/Custom Weapons Name. Just edit "zpsp_lang_itens_classes.txt"

		-- Fixing 08/12/20:
			- Fixed Armageddon Respawn - Before peoples respawn as human and not survivor
			- Fixed Lang from Additional Extra Weapons (Grenades/AWP/ETC.)

		* 4.5:
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
			- Added Native: zp_give_item(id, const item[], ammo=0)
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

			-- Official Patch V1 (12/03)
				- Fixed bug when you choose gun locked by forward in weapons menu and opens a secondary menu
				- Fixed bug when load/save custom primary/secondary weapons with same name
				- Fixed native zp_get_user_default_gravity(id);
				- Removed useless cvar/function zp toggle
				- Fixed Native: zp_get_user_default_maxspeed
				- Fixed Native: zp_set_user_knockback
				- Fixed weapons menu

			-- Patch v2 (03-09-2023)
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


============================================================================================================================*/

/*================================================================================
 [Plugin Info]
=================================================================================*/
#define PLUGIN "Zombie Plague Special"
#define VERSION "4.5"
#define AUTHOR "MeRcyLeZZ | @bdul! | [P]erfect [S]crash"

/*================================================================================
 [Plugin Customization]
=================================================================================*/
new const ZP_CUSTOMIZATION_FILE[] = "zpsp_configs/zombie_plague_special.ini";
new const ZP_ZOMBIECLASSES_FILE[] = "zpsp_configs/zpsp_zombieclasses.ini";
new const ZP_EXTRAITEMS_FILE[] = "zpsp_configs/zpsp_extraitems.ini";
new const ZP_CUSTOM_GM_FILE[] = "zpsp_configs/zpsp_gamemodes.ini";
new const ZP_SPECIAL_CLASSES_FILE[] = "zpsp_configs/zpsp_special_classes.ini";
new const ZP_WEAPONS_FILE[] = "zpsp_configs/zpsp_custom_weapons.ini";
new const ZP_HUMANCLASSES_FILE[] = "zpsp_configs/zpsp_humanclasses.ini"
new const ZP_CFG_FILE[] = "zpsp_configs/zombie_plague_special.cfg"

// Limiters for stuff not worth making dynamic arrays out of (increase if needed)
const MAX_CSDM_SPAWNS = 128;
const MAX_STATS_SAVED = 64;

/*================================================================================
 Customization ends here! Yes, that's it. Editing anything beyond
 here is not officially supported. Proceed at your own risk...
=================================================================================*/

#include <amxmodx>
#include <amxmisc>
#include <cstrike>
#include <fakemeta>
#include <hamsandwich>
#include <xs>
#include <amx_settings_api>

/*================================================================================
 [Constants, Offsets, Macros]
=================================================================================*/

new const mode_langs[][] = {
	"MODE_NONE",
	"MODE_INFECTION",
	"CLASS_NEMESIS",
	"CLASS_ASSASSIN",
	"CLASS_PREDATOR",
	"CLASS_BOMBARDIER",
	"CLASS_DRAGON",
	"CLASS_SURVIVOR",
	"CLASS_SNIPER",
	"CLASS_BERSERKER",
	"CLASS_WESKER",
	"CLASS_SPY",
	"MODE_SWARM",
	"MODE_MULTI",
	"MODE_PLAGUE",
	"MODE_LNJ",
	"MODE_UNDEFNIED"
};

new const hm_special_class_langs[][] = { "CLASS_HUMAN", "CLASS_SURVIVOR", "CLASS_SNIPER", "CLASS_BERSERKER", "CLASS_WESKER", "CLASS_SPY", "NONE" };
new const zm_special_class_langs[][] = { "CLASS_ZOMBIE", "CLASS_NEMESIS", "CLASS_ASSASSIN", "CLASS_PREDATOR", "CLASS_BOMBARDIER", "CLASS_DRAGON", "NONE" };

enum { // Access flags
	ACCESS_ADMIN_MENU = 0,
	ACCESS_MODE_INFECTION,
	ACCESS_MODE_NEMESIS,
	ACCESS_MODE_ASSASSIN,
	ACCESS_MODE_PREDATOR,
	ACCESS_MODE_BOMBARDIER,
	ACCESS_MODE_DRAGON,
	ACCESS_MODE_SURVIVOR,
	ACCESS_MODE_SNIPER,
	ACCESS_MODE_BERSERKER,
	ACCESS_MODE_WESKER,
	ACCESS_MODE_SPY,
	ACCESS_MODE_SWARM,
	ACCESS_MODE_MULTI,
	ACCESS_MODE_PLAGUE,
	ACCESS_MODE_LNJ,
	ACCESS_ADMIN_MENU2,
	ACCESS_ADMIN_MENU3,
	ACCESS_ADMIN_MODELS,
	ACCESS_VIP_MODELS,
	ACCESS_RESPAWN_PLAYERS,
	ACCESS_MAKE_ZOMBIE,
	ACCESS_MAKE_HUMAN,
	ACCESS_MAKE_NEMESIS,
	ACCESS_MAKE_SURVIVOR,
	ACCESS_MAKE_SNIPER,
	ACCESS_MAKE_ASSASSIN,
	ACCESS_MAKE_BERSERKER,
	ACCESS_MAKE_PREDATOR,
	ACCESS_MAKE_WESKER,
	ACCESS_MAKE_BOMBARDIER,
	ACCESS_MAKE_SPY,
	ACCESS_MAKE_DRAGON,
	MAX_ACCESS_FLAGS
};
enum (+= 100) { // Task offsets
	TASK_TEAM = 2000,
	TASK_SPAWN,
	TASK_BLOOD,
	TASK_AURA,
	TASK_NVISION,
	TASK_FLASH,
	TASK_CHARGE,
	TASK_SHOWHUD,
	TASK_MAKEZOMBIE,
	TASK_WELCOMEMSG,
	TASK_THUNDER_PRE,
	TASK_THUNDER,
	TASK_AMBIENCESOUNDS,
	TASK_MADNESS,
	TASK_BOT_BOMBARDIER
};
// IDs inside tasks
#define ID_TEAM (taskid - TASK_TEAM)
#define ID_SPAWN (taskid - TASK_SPAWN)
#define ID_BLOOD (taskid - TASK_BLOOD)
#define ID_AURA (taskid - TASK_AURA)
#define ID_NVISION (taskid - TASK_NVISION)
#define ID_FLASH (taskid - TASK_FLASH)
#define ID_CHARGE (taskid - TASK_CHARGE)
#define ID_SHOWHUD (taskid - TASK_SHOWHUD)

#define REFILL_WEAPONID args[0] // BP Ammo Refill task

// For weapon buy menu handlers
#define WPN_STARTID g_menu_data[id][1]
#define WPN_SELECTION (g_menu_data[id][1]+key)
#define WPN_AUTO_ON g_menu_data[id][2]
#define WPN_AUTO_PRI g_menu_data[id][3]
#define WPN_AUTO_SEC g_menu_data[id][4]
#define WPN_TYPE g_menu_data[id][12]

// For remembering menu pages
#define MENU_PAGE_ZCLASS g_menu_data[id][5]
#define MENU_PAGE_EXTRAS g_menu_data[id][6]
#define MENU_PAGE_PLAYERS g_menu_data[id][7]
#define MENU_PAGE_GAMEMODES g_menu_data[id][8]
#define MENU_PAGE_SPECIAL_CLASS g_menu_data[id][9]
#define MENU_PAGE_CUSTOM_SP_Z g_menu_data[id][10]
#define MENU_PAGE_CUSTOM_SP_H g_menu_data[id][11]
#define MENU_PAGE_START_MODES g_menu_data[id][13]
#define MENU_PAGE_HCLASS g_menu_data[id][14]

#define PL_ACTION g_menu_data[id][0] // For player list menu handlers
#define fixAmxMenu(%1) if(pev_valid(%1) == PDATA_SAFE) set_pdata_int(%1, OFFSET_CSMENUCODE, 0, OFFSET_LINUX)

#define EXTRAS_CUSTOM_STARTID (EXTRA_WEAPONS_STARTID + ArraySize(g_extraweapon_names)) // For extra items menu handlers

// Menu selections
const MENU_KEY_AUTOSELECT = 7;
const MENU_KEY_BACK = 7;
const MENU_KEY_NEXT = 8;
const MENU_KEY_EXIT = 9;

enum { EXTRA_NVISION = 0, EXTRA_ANTIDOTE, EXTRA_MADNESS, EXTRA_INFBOMB, EXTRA_WEAPONS_STARTID } // Hard coded extra items
new const MODE_SET = 1; // Game mode settings;

enum { // Game modes
	MODE_NONE = 0,
	MODE_INFECTION,
	MODE_NEMESIS,
	MODE_ASSASSIN,
	MODE_PREDATOR,
	MODE_BOMBARDIER,
	MODE_DRAGON,
	MODE_SURVIVOR,
	MODE_SNIPER,
	MODE_BERSERKER,
	MODE_WESKER,
	MODE_SPY,
	MODE_SWARM,
	MODE_MULTI,
	MODE_PLAGUE,
	MODE_LNJ,
	MAX_GAME_MODES
};
// ZP Teams
const ZP_TEAM_NO_ONE = 0;
const ZP_TEAM_ANY = 0;
const ZP_TEAM_ZOMBIE_SPECIAL = -1;
const ZP_TEAM_HUMAN_SPECIAL = -2;
const ZP_TEAM_ANY_SPECIAL = -3;
const ZP_TEAM_ALL = -4;
enum {
	TEAM_ZOMBIE = 0,
	TEAM_HUMAN,
	TEAM_NEMESIS,
	TEAM_SURVIVOR,
	TEAM_SNIPER,
	TEAM_ASSASSIN,
	TEAM_PREDATOR,
	TEAM_BERSERKER,
	TEAM_WESKER,
	TEAM_BOMBARDIER,
	TEAM_SPY,
	TEAM_DRAGON,
	MAX_TEAMS
};
#define GetTeamIndex(%1) (1<<ArrayGetCell(ZP_TEAM_INDEX, %1))
#define IsTeam(%1,%2) (%1 & (1<<ArrayGetCell(ZP_TEAM_INDEX, %2)))
new Array:ZP_TEAM_NAMES, Array:ZP_TEAM_INDEX, Array:iTeamIndexHm, Array:iTeamIndexZm;

const NULL_CLASS = -1; // Zombie classes

// Deathmatch
enum { ZP_DM_NONE = 0, ZP_DM_HUMAN, ZP_DM_ZOMBIE, ZP_DM_RANDOM, ZP_DM_BALANCE }
#define RespawnAsZombie(%1) (%1 == ZP_DM_ZOMBIE || (%1 == ZP_DM_RANDOM && random_num(0, 1)) || (%1 == ZP_DM_BALANCE && (fnGetZombies() < (fnGetAlive()/2))))

// HUD messages
const Float:HUD_EVENT_X = -1.0;
const Float:HUD_EVENT_Y = 0.17;
const Float:HUD_INFECT_X = 0.05;
const Float:HUD_INFECT_Y = 0.45;
const Float:HUD_SPECT_X = -1.0;
const Float:HUD_SPECT_Y = 0.8;
const Float:HUD_STATS_X = 0.78;
const Float:HUD_STATS_Y = 0.18;

new Ham:Ham_Player_ResetMaxSpeed = Ham_Item_PreFrame; // Hack to be able to use Ham_Player_ResetMaxSpeed (by joaquimandrade)

// CS Player PData Offsets (win32)
const PDATA_SAFE = 2;
const OFFSET_PAINSHOCK = 108; // ConnorMcLeod;
const OFFSET_CSTEAMS = 114;
const OFFSET_CSMONEY = 115;
const OFFSET_CSMENUCODE = 205;
const OFFSET_FLASHLIGHT_BATTERY = 244;
const OFFSET_CSDEATHS = 444;

const OFFSET_ACTIVE_ITEM = 373; // CS Player CBase Offsets (win32)
const OFFSET_WEAPONOWNER = 41; // CS Weapon CBase Offsets (win32)
const OFFSET_LASTHITGROUP = 75; // CS Player CBase Offsets (win32)

// Linux diff's
const OFFSET_LINUX = 5; // offsets 5 higher in Linux builds
const OFFSET_LINUX_WEAPONS = 4; // weapon offsets are only 4 steps higher on Linux

enum { // CS Teams
	FM_CS_TEAM_UNASSIGNED = 0,
	FM_CS_TEAM_T,
	FM_CS_TEAM_CT,
	FM_CS_TEAM_SPECTATOR
};
new const CS_TEAM_NAMES[][] = { "UNASSIGNED", "TERRORIST", "CT", "SPECTATOR" };

// Some constants
const HIDE_MONEY = (1<<5);
const UNIT_SECOND = (1<<12);
const DMG_HEGRENADE = (1<<24);
const IMPULSE_FLASHLIGHT = 100;
const USE_USING = 2;
const USE_STOPPED = 0;
const STEPTIME_SILENT = 999;
const BREAK_GLASS = 0x01;
const FFADE_IN = 0x0000;
const FFADE_STAYOUT = 0x0004;
const PEV_SPEC_TARGET = pev_iuser2;

// Max BP ammo for weapons
new const MAXBPAMMO[] = { -1, 52, -1, 90, 1, 32, 1, 100, 90, 1, 120, 100, 100, 90, 90, 90, 100, 120, 30, 120, 200, 32, 90, 120, 90, 2, 35, 90, 90, -1, 100 };

// Max Clip for weapons;
new const MAXCLIP[] = { -1, 13, -1, 10, -1, 7, -1, 30, 30, -1, 30, 20, 25, 30, 35, 25, 12, 20, 10, 30, 100, 8, 30, 30, 20, -1, 7, 30, 30, -1, 50 };

// Amount of ammo to give when buying additional clips for weapons;
new const BUYAMMO[] = { -1, 13, -1, 30, -1, 8, -1, 12, 30, -1, 30, 50, 12, 30, 30, 30, 12, 30, 10, 30, 30, 8, 30, 30, 30, -1, 7, 30, 30, -1, 50 };

// Ammo IDs for weapons;
new const AMMOID[] = { -1, 9, -1, 2, 12, 5, 14, 6, 4, 13, 10, 7, 6, 4, 4, 4, 6, 10, 1, 10, 3, 5, 4, 10, 2, 11, 8, 4, 2, -1, 7 };

// Ammo Type Names for weapons
new const AMMOTYPE[][] = { "", "357sig", "", "762nato", "", "buckshot", "", "45acp", "556nato", "", "9mm", "57mm", "45acp", "556nato", "556nato", "556nato",
"45acp", "9mm", "338magnum", "9mm", "556natobox", "buckshot", "556nato", "9mm", "762nato", "", "50ae", "556nato", "762nato", "", "57mm" };

// Weapon IDs for ammo types
new const AMMOWEAPON[] = { 0, CSW_AWP, CSW_SCOUT, CSW_M249, CSW_AUG, CSW_XM1014, CSW_MAC10, CSW_FIVESEVEN, CSW_DEAGLE, CSW_P228, CSW_ELITE, CSW_FLASHBANG, CSW_HEGRENADE, CSW_SMOKEGRENADE, CSW_C4 };

// Primary and Secondary Weapon Names
new const WEAPONNAMES[][] = { "", "P228 Compact", "", "Schmidt Scout", "", "XM1014 M4", "", "Ingram MAC-10", "Steyr AUG A1", "", "Dual Elite Berettas", "FiveseveN", "UMP 45",
"SG-550 Auto-Sniper", "IMI Galil", "Famas", "USP .45 ACP Tactical", "Glock 18C", "AWP Magnum Sniper", "MP5 Navy", "M249 for Machinegun", "M3 Super 90", "M4A1 Carbine",
"Schmidt TMP", "G3SG1 Auto-Sniper", "", "Desert Eagle .50 AE", "SG-552 Commando", "AK-47 Kalashnikov", "Knife", "ES P90" };

// Weapon entity names
new const WEAPONENTNAMES[][] = { "", "weapon_p228", "", "weapon_scout", "weapon_hegrenade", "weapon_xm1014", "weapon_c4", "weapon_mac10", "weapon_aug", "weapon_smokegrenade",
"weapon_elite", "weapon_fiveseven", "weapon_ump45", "weapon_sg550", "weapon_galil", "weapon_famas", "weapon_usp", "weapon_glock18", "weapon_awp", "weapon_mp5navy", "weapon_m249",
"weapon_m3", "weapon_m4a1", "weapon_tmp", "weapon_g3sg1", "weapon_flashbang", "weapon_deagle", "weapon_sg552", "weapon_ak47", "weapon_knife", "weapon_p90" };

// Weapon Lang Keys
new const WPN_LANG_KEYS[][] = { "", "WPN_P228", "", "WPN_SCOUT", "", "WPN_XM1014", "", "WPN_MAC10", "WPN_AUG", "", "WPN_ELITE", "WPN_FIVESEVEN", "WPN_UMP45", "WPN_SG550", "WPN_GALIL", "WPN_FAMAS", "WPN_USP",
"WPN_GLOCK18", "WPN_AWP", "WPN_MP5", "WPN_M249", "WPN_M3", "WPN_M4A1", "WPN_TMP", "WPN_G3SG1", "", "WPN_DEAGLE", "WPN_SG552", "WPN_AK47", "WPN_KNIFE", "WPN_P90" };

new const cs_sounds[][] = { "items/flashlight1.wav", "items/9mmclip1.wav", "player/bhit_helmet-1.wav" }; // CS sounds;

// Stationary entities
new const stationary_entities[][] = { "func_tank", "func_tankmortar", "func_tankrocket", "func_tanklaser" }

new Float:NADE_EXPLOSION_RADIUS; // Explosion radius for custom grenades;
const PEV_ADDITIONAL_AMMO = pev_iuser1; // HACK: pev_ field used to store additional ammo on weapons;

// HACK: pev_ field used to store custom nade types and their values
const PEV_NADE_TYPE = pev_flTimeStepSound;
const NADE_TYPE_INFECTION = 1111;
const NADE_TYPE_NAPALM = 2222;
const NADE_TYPE_FROST = 3333;
const NADE_TYPE_FLARE = 4444;
const PEV_FLARE_COLOR = pev_punchangle;
const PEV_FLARE_DURATION = pev_flSwimTime;

enum { FIRE = 0, FROST, FLARE, INFECTION_BOMB, MAX_GRENADES }; // Grenade Index

// Weapon bitsums
const PRIMARY_WEAPONS_BIT_SUM = (1<<CSW_SCOUT)|(1<<CSW_XM1014)|(1<<CSW_MAC10)|(1<<CSW_AUG)|(1<<CSW_UMP45)|(1<<CSW_SG550)|(1<<CSW_GALIL)|(1<<CSW_FAMAS)|(1<<CSW_AWP)|(1<<CSW_MP5NAVY)|(1<<CSW_M249)|(1<<CSW_M3)|(1<<CSW_M4A1)|(1<<CSW_TMP)|(1<<CSW_G3SG1)|(1<<CSW_SG552)|(1<<CSW_AK47)|(1<<CSW_P90);
const SECONDARY_WEAPONS_BIT_SUM = (1<<CSW_P228)|(1<<CSW_ELITE)|(1<<CSW_FIVESEVEN)|(1<<CSW_USP)|(1<<CSW_GLOCK18)|(1<<CSW_DEAGLE);

// Allowed weapons for zombies (added grenades/bomb for sub-plugin support, since they shouldn't be getting them anyway)
const ZOMBIE_ALLOWED_WEAPONS_BITSUM = (1<<CSW_KNIFE)|(1<<CSW_HEGRENADE)|(1<<CSW_FLASHBANG)|(1<<CSW_SMOKEGRENADE)|(1<<CSW_C4);

// Menu keys
const KEYSMENU = MENU_KEY_1|MENU_KEY_2|MENU_KEY_3|MENU_KEY_4|MENU_KEY_5|MENU_KEY_6|MENU_KEY_7|MENU_KEY_8|MENU_KEY_9|MENU_KEY_0;

enum { // Ambience Sounds
	AMBIENCE_SOUNDS_INFECTION = 0,
	AMBIENCE_SOUNDS_NEMESIS,
	AMBIENCE_SOUNDS_ASSASSIN,
	AMBIENCE_SOUNDS_PREDATOR,
	AMBIENCE_SOUNDS_BOMBARDIER,
	AMBIENCE_SOUNDS_DRAGON,
	AMBIENCE_SOUNDS_SURVIVOR,
	AMBIENCE_SOUNDS_SNIPER,
	AMBIENCE_SOUNDS_BERSERKER,
	AMBIENCE_SOUNDS_WESKER,
	AMBIENCE_SOUNDS_SPY,
	AMBIENCE_SOUNDS_SWARM,
	AMBIENCE_SOUNDS_MULTI,
	AMBIENCE_SOUNDS_PLAGUE,
	AMBIENCE_SOUNDS_LNJ,
	MAX_AMBIENCE_SOUNDS
};

enum { // Admin menu actions
	ACTION_ZOMBIEFY_HUMANIZE = 0,
	ACTION_MAKE_NEMESIS,
	ACTION_MAKE_SURVIVOR,
	ACTION_MAKE_SNIPER,
	ACTION_MAKE_ASSASSIN,
	ACTION_MAKE_BERSERKER,
	ACTION_MAKE_PREDATOR,
	ACTION_MAKE_WESKER,
	ACTION_MAKE_BOMBARDIER,
	ACTION_MAKE_SPY,
	ACTION_MAKE_DRAGON,
	ACTION_RESPAWN_PLAYER
};

// Special Class Index
enum { NEMESIS = 1, ASSASSIN, PREDATOR, BOMBARDIER, DRAGON, MAX_SPECIALS_ZOMBIES };
enum { SURVIVOR = 1, SNIPER, BERSERKER, WESKER, SPY, MAX_SPECIALS_HUMANS };

// Reduce code with a loop :)
enum _:handActions { act_iszm, act_classid, act_mode_class, act_make_class, act_lang[32] };
new const sp_adm_actions[][handActions] = {
	{ -1, 0, -1, -1, "MENU_ADMIN1" }, // Make Human/Zombie

	{ 1, NEMESIS, ACCESS_MODE_NEMESIS, ACCESS_MAKE_NEMESIS, "MENU_ADMIN2" },
	{ 0, SURVIVOR, ACCESS_MODE_SURVIVOR, ACCESS_MAKE_SURVIVOR, "MENU_ADMIN3" },
	{ 0, SNIPER, ACCESS_MODE_SNIPER, ACCESS_MAKE_SNIPER, "MENU_ADMIN8" },
	{ 1, ASSASSIN, ACCESS_MODE_ASSASSIN, ACCESS_MAKE_ASSASSIN, "MENU_ADMIN9" },
	{ 0, BERSERKER, ACCESS_MODE_BERSERKER, ACCESS_MAKE_BERSERKER, "MENU_ADMIN13" },
	{ 1, PREDATOR, ACCESS_MODE_PREDATOR, ACCESS_MAKE_PREDATOR, "MENU_ADMIN11" },
	{ 0, WESKER, ACCESS_MODE_WESKER, ACCESS_MAKE_WESKER, "MENU_ADMIN14" },
	{ 1, BOMBARDIER, ACCESS_MODE_BOMBARDIER, ACCESS_MAKE_BOMBARDIER, "MENU_ADMIN12" },
	{ 0, SPY, ACCESS_MODE_SPY, ACCESS_MAKE_SPY, "MENU_ADMIN15" },
	{ 1, DRAGON, ACCESS_MODE_DRAGON, ACCESS_MAKE_DRAGON, "MENU_ADMIN16" },

	{ -1, 0, -1, -1, "MENU_ADMIN4" } // Respawn Player
}

// Custom forward return values;
const ZP_PLUGIN_HANDLED = 97;
const ZP_PLUGIN_SUPERCEDE = 98;

/*================================================================================
 [Global Variables]
=================================================================================*/
// Special Class Vars
new Array:g_hm_sp_realname, Array:g_hm_sp_name, Array:g_hm_sp_health, Array:g_hm_sp_speed, Array:g_hm_sp_cliptype,
Array:g_hm_sp_gravity, Array:g_hm_sp_leap, Array:g_hm_sp_leap_f, Array:g_hm_sp_ignorefrag, Array:g_hm_sp_ignoreammo, Array:g_hm_sp_flags,
Array:g_hm_sp_leap_h, Array:g_hm_sp_leap_c, Array:g_hm_sp_respawn, Array:g_hm_sp_painfree,
Array:g_hm_sp_aurarad, Array:g_hm_sp_glow, Array:g_hm_sp_r, Array:g_hm_sp_g, Array:g_hm_sp_b, Array:g_hm_sp_enable, Array:g_hm_sp_nvision,
Array:g_hm_sp_mdl_handle, Array:g_hm_sp_body_handle, Array:g_hm_sp_skin_handle, Array:g_hm_sp_name_by_lang, Array:g_hm_sp_lang_key;
new g_hm_specials_i = MAX_SPECIALS_HUMANS, g_hm_special[33];
#define isCustomSpecialHuman(%1) (!g_zombie[%1] && g_hm_special[%1] >= MAX_SPECIALS_HUMANS)
#define isDefaultSpecialHuman(%1) (!g_zombie[%1] && g_hm_special[%1] > 0 && g_hm_special[%1] < MAX_SPECIALS_HUMANS)
#define isDefaultHuman(%1) (!g_zombie[%1] && g_hm_special[%1] <= 0)

new Array:g_zm_sp_realname, Array:g_zm_sp_name, Array:g_zm_sp_knifemodel, Array:g_zm_sp_health, Array:g_zm_sp_speed, Array:g_zm_sp_knockback,
Array:g_zm_sp_gravity, Array:g_zm_sp_leap, Array:g_zm_sp_leap_f, Array:g_zm_sp_ignorefrag, Array:g_zm_sp_ignoreammo, Array:g_zm_sp_flags, Array:g_zm_sp_painsnd_handle,
Array:g_zm_sp_leap_h, Array:g_zm_sp_leap_c, Array:g_zm_sp_respawn, Array:g_zm_sp_painfree,
Array:g_zm_sp_aurarad, Array:g_zm_sp_glow, Array:g_zm_sp_r, Array:g_zm_sp_g, Array:g_zm_sp_b, Array:g_zm_sp_allow_burn, Array:g_zm_sp_allow_frost, Array:g_zm_sp_enable, Array:g_zm_sp_nvision,
Array:g_zm_sp_mdl_handle, Array:g_zm_sp_body_handle, Array:g_zm_sp_skin_handle, Array:g_zm_sp_deathsnd_handle, Array:g_zm_sp_use_deathsnd, Array:g_zm_sp_name_by_lang, Array:g_zm_sp_lang_key
new g_zm_specials_i = MAX_SPECIALS_ZOMBIES, g_zm_special[33];
#define isCustomSpecialZombie(%1) (g_zombie[%1] && g_zm_special[%1] >= MAX_SPECIALS_ZOMBIES)
#define isDefaultSpecialZombie(%1) (g_zombie[%1] && g_zm_special[%1] > 0 && g_zm_special[%1] < MAX_SPECIALS_ZOMBIES)
#define isDefaultZombie(%1) (g_zombie[%1] && g_zm_special[%1] <= 0)

// Player vars;
new g_hud_type[33], g_hud_color[2][33], g_flashlight_color[33], g_flashlight_rgb[3], g_nv_color[2][33], g_nvrgb[3], g_respawn_count[33];
new g_zombie[33], g_firstzombie[33], g_lastzombie[33], g_lasthuman[33], g_frozen[33], g_burning[33], g_nodamage[33], g_respawn_as_zombie[33], Float:g_frozen_gravity[33], Float:g_buytime[33];
new g_nvision[33], g_nvisionenabled[33], g_nvg_enabled_mode[33], g_zombieclass[33], g_zombieclassnext[33], g_flashlight[33], g_flashbattery[33] = { 100, ... };
new g_canbuy[33], g_ammopacks[33], g_damagedealt[33], how_many_rewards, Float:g_lastleaptime[33], Float:g_lastflashtime[33], g_playermodel[33][32], g_playerbody[33], g_playerskin[33], g_bot_extra_count[33];
new g_menu_data[33][15], Float:g_current_maxspeed[33], g_user_custom_speed[33], g_infammo[33];

// Game vars;
new g_newround, g_endround, g_modestarted, g_allowinfection, g_deathmatchmode, g_currentmode, g_lastmode, g_nextmode;
new g_scorezombies, g_scorehumans, g_gamecommencing, g_spawnCount, g_spawnCount2, Float:g_spawns[MAX_CSDM_SPAWNS][3], Float:g_spawns2[MAX_CSDM_SPAWNS][3];
new g_lights_i, g_lights_cycle[32], g_lights_cycle_len, Float:g_teams_targettime, g_MsgSync[3], g_automate_setting;
new g_trailSpr[MAX_GRENADES], g_ExplodeSpr[MAX_GRENADES], g_GibSpr[MAX_GRENADES], g_RingSpr, g_flameSpr, g_smokeSpr, g_glassSpr, g_modname[32], g_freezetime, g_czero;
new g_fwSpawn, g_fwPrecacheSound, g_infbombcounter, g_antidotecounter, g_madnesscounter, g_arrays_created, g_escape_map;
new g_lastplayerleaving, g_switchingteam, g_buyzone_ent, zm_special_enable[MAX_SPECIALS_ZOMBIES], hm_special_enable[MAX_SPECIALS_HUMANS];
new custom_lighting[5], g_custom_light, g_ForwardParameter[64], g_FW_intParam[10], g_AdditionalHudText[500];
#define CheckAllowed(%1) (%1 == 1 || %1 == 2 && !g_escape_map || %1 >= 3 && g_escape_map) // Check if allowed X function with escape map checks

// Message IDs vars
new g_msgScoreInfo, g_msgNVGToggle, g_msgScoreAttrib, g_msgAmmoPickup, g_msgScreenFade, g_msgDeathMsg, g_msgSetFOV, g_msgFlashlight, g_msgFlashBat,
g_msgTeamInfo, g_msgDamage, g_msgHideWeapon, g_msgCrosshair, g_msgScreenShake, g_msgCurWeapon;

new const FLAME_CLASSNAME[] = "zpsp_flame"

enum { // Forward Enum
	ROUND_START = 0,
	ROUND_START_PRE,
	ROUND_END,
	INFECTED_PRE,
	INFECTED_POST,
	HUMANIZED_PRE,
	HUMANIZED_POST,
	INFECT_ATTEMP,
	HUMANIZE_ATTEMP,
	ITEM_SELECTED_PRE,
	ITEM_SELECTED_POST,
	USER_UNFROZEN,
	USER_LAST_ZOMBIE,
	USER_LAST_HUMAN,
	GAME_MODE_SELECTED,
	PLAYER_SPAWN_POST,
	FROZEN_PRE,
	FROZEN_POST,
	BURN_PRE,
	BURN_POST,
	CLASS_CHOOSED_PRE,
	CLASS_CHOOSED_POST,
	RESET_RENDERING_PRE,
	RESET_RENDERING_POST,
	MODEL_CHANGE_PRE,
	MODEL_CHANGE_POST,
	HM_SP_CHOSSED_PRE,
	ZM_SP_CHOSSED_PRE,
	HM_SP_CHOSSED_POST,
	ZM_SP_CHOSSED_POST,
	GM_SELECTED_PRE,
	INFECTED_BY_BOMB_PRE,
	INFECTED_BY_BOMB_POST,
	UNSTUCK_PRE,
	UNSTUCK_POST,
	WEAPON_SELECTED_PRE,
	WEAPON_SELECTED_POST,
	H_CLASS_CHOOSED_PRE,
	H_CLASS_CHOOSED_POST,
	PLAYER_SHOW_HUD,
	PLAY_SOUND,
	STOP_SOUND,
	DEPLOY_WEAPON,
	MAX_FORWARDS_NUM
};
new g_forwards[MAX_FORWARDS_NUM], g_fwDummyResult;

enum { VIEW_MODEL = 0, PLAYER_MODEL, WORLD_MODEL, MAX_WPN_MDL }; // Weapon Model

#define entity_set_model(%1,%2) engfunc(EngFunc_SetModel, %1, %2)

// Temporary Database vars (used to restore players stats in case they get disconnected)
new db_name[MAX_STATS_SAVED][32], db_ammopacks[MAX_STATS_SAVED], db_zombieclass[MAX_STATS_SAVED], db_humanclass[MAX_STATS_SAVED], db_slot_i;

// Custom Game Modes vars
new Array:g_gm_realname, Array:g_gm_name, Array:g_gm_enable, Array:g_gm_enable_on_ze_map, Array:g_gm_flag, Array:g_gm_chance, Array:g_gm_allow, Array:g_gm_dm, Array:g_gm_respawn_limit, Array:g_gm_name_by_lang, Array:g_gm_lang_key, g_gamemodes_i = MAX_GAME_MODES;
new Array:g_gm_use_amb, Array:g_gm_amb_enable, Array:g_gm_amb_sound_handle, Array:g_gm_amb_duration_handle, Array:g_gm_rstart_snd_handler, Array:g_gm_use_rstart_snd
#define isCustomMode() (g_currentmode >= MAX_GAME_MODES)

// Extra Items vars
new Array:g_extraitem_realname, Array:g_extraitem_name, Array:g_extraitem_cost, Array:g_extraitem_team, g_extraitem_i, g_AdditionalMenuText[32], Array:g_extraitem_name_by_lang, Array:g_extraitem_lang_key;

// Zombie Classes vars
new Array:g_zclass_real_name, Array:g_zclass_name, Array:g_zclass_info, Array:g_zclass_playermodel
new Array:g_zclass_clawmodel, Array:g_zclass_hp, Array:g_zclass_spd, Array:g_zclass_grav, Array:g_zclass_kb, g_zclass_i;
new Array:g_zclass_deathsnd_handle, Array:g_zclass_use_deathsnd, Array:g_zclass_painsnd_handle, Array:g_zclass_use_painsnd;
new Array:g_zclass_lang_enable, Array:g_zclass_name_lang_key, Array:g_zclass_info_lang_key, Array:g_zclass_body, Array:g_zclass_skin;
new Array:g_zclass_mdl_handle, Array:g_zclass_body_handle, Array:g_zclass_skin_handle

// Human Classes Vars
new Array:g_hclass_real_name, Array:g_hclass_name, Array:g_hclass_info, Array:g_hclass_hp, Array:g_hclass_armor, Array:g_hclass_speed, Array:g_hclass_gravity;
new Array:g_hclass_lang_enable, Array:g_hclass_name_lang_key, Array:g_hclass_info_lang_key, g_hclass_i;
new Array:g_hclass_mdl_file, Array:g_hclass_mdl_handle, Array:g_hclass_body_handle, Array:g_hclass_skin_handle
new g_user_hclass[33], g_hclass_next[33]
#define MAX_ARRAY_SOUNDS 20 // Max Array Sounds

// Customization vars
new g_access_flag[MAX_ACCESS_FLAGS], Array:model_human[MAX_SPECIALS_HUMANS], Array:model_human_body[MAX_SPECIALS_HUMANS], Array:model_human_skin[MAX_SPECIALS_HUMANS], Array:model_zm_special[MAX_SPECIALS_ZOMBIES], Array:model_zm_special_body[MAX_SPECIALS_ZOMBIES], Array:model_zm_special_skin[MAX_SPECIALS_ZOMBIES],
Array:model_adm_hm, Array:model_adm_hm_body, Array:model_adm_hm_skin, Array:model_vip_hm, Array:model_vip_hm_body, Array:model_vip_hm_skin, Array:model_adm_zm, Array:model_adm_zm_body, Array:model_adm_zm_skin, Array:model_vip_zm, Array:model_vip_zm_body, Array:model_vip_zm_skin,
g_same_models_for_all, model_vknife_zm_special[MAX_SPECIALS_ZOMBIES][64], model_v_weapon_human[MAX_SPECIALS_HUMANS][64], model_p_weapon_human[MAX_SPECIALS_HUMANS][64], model_grenade_infect[MAX_WPN_MDL][64], model_grenade_bombardier[MAX_WPN_MDL][64], model_grenade_fire[MAX_WPN_MDL][64], model_grenade_frost[MAX_WPN_MDL][64], model_grenade_flare[MAX_WPN_MDL][64],
model_knife_admin_human[MAX_WPN_MDL][64], model_knife_vip_human[MAX_WPN_MDL][64], model_vknife_admin_zombie[64], model_vknife_vip_zombie[64],
Array:sound_win_zombies, Array:sound_win_humans, Array:sound_win_no_one, Array:ar_sound[MAX_ARRAY_SOUNDS],  Array:zombie_pain[MAX_SPECIALS_ZOMBIES], g_ambience_rain,
Array:g_additional_items, Array:g_wpn_is_custom[2], Array:g_wpn_realname[2], Array:g_wpn_name[2], Array:g_wpn_name_by_lang[2], Array:g_wpn_lang_key[2], g_def_wpn_use_lang, g_wpn_i[2], Array:g_wpn_ids[2],
Array:g_extraweapon_names, Array:g_extraweapon_items, Array:g_extraweapon_costs, g_extraweapon_name_by_lang, Array:g_extraweapon_lang_key, g_extra_costs2[EXTRA_WEAPONS_STARTID], g_ambience_snow, g_ambience_fog, g_fog_density[10], g_fog_color[12], g_sky_enable,
Array:g_sky_names, Array:lights_thunder, Array:zombie_decals, Array:g_objective_ents, Array:g_escape_maps, g_set_modelindex_offset, Float:kb_weapon_power[31] = { -1.0, ... }, g_force_consistency, g_choosed_zclass[33], g_choosed_hclass[33], g_enable_end_round_sounds,
g_ambience_sounds[MAX_AMBIENCE_SOUNDS], Array:sound_mod[MAX_GAME_MODES], Array:sound_ambience[MAX_AMBIENCE_SOUNDS], Array:sound_ambience_duration[MAX_AMBIENCE_SOUNDS],
enable_trail[MAX_GRENADES], enable_explode[MAX_GRENADES], enable_gib[MAX_GRENADES], sprite_grenade_trail[MAX_GRENADES][64], sprite_grenade_explode[MAX_GRENADES][64], sprite_grenade_gib[MAX_GRENADES][64],
sprite_grenade_ring[64], sprite_grenade_fire[64], sprite_grenade_smoke[64], sprite_grenade_glass[64], grenade_rgb[MAX_GRENADES][3], Float:weapon_spd_multi[31] = { 1.0, ... };

// CVAR pointers
new cvar_green_dm, cvar_lighting, cvar_zombiefov, cvar_removemoney, cvar_thunder, cvar_deathmatch, cvar_customnvg, cvar_nvg_alpha, cvar_hitzones, cvar_flashsize[2], cvar_ammodamage, cvar_ammodamage_quantity, cvar_zombiearmor, cvar_chosse_instantanly[2],
cvar_flashdrain, cvar_zombiebleeding, cvar_removedoors, cvar_customflash, cvar_randspawn, cvar_ammoinfect, cvar_knockbackpower, cvar_freezeduration, cvar_triggered, cvar_flashcharge,
cvar_firegrenades, cvar_frostgrenades, cvar_logcommands, cvar_spawnprotection, cvar_nvgsize, cvar_flareduration, cvar_zclasses, cvar_hclasses, cvar_extraitems, cvar_showactivity, cvar_warmup, cvar_flashdist, cvar_flarecolor, cvar_fireduration, cvar_firedamage,
cvar_flaregrenades, cvar_knockbackducking, cvar_knockbackdamage, cvar_knockbackzvel, cvar_multiratio, cvar_swarmratio, cvar_flaresize[2], cvar_spawndelay, cvar_extraantidote, cvar_extramadness, cvar_extraantidote_ze, cvar_extramadness_ze,
cvar_extraweapons, cvar_extranvision, cvar_zm_nvggive[MAX_SPECIALS_ZOMBIES], cvar_hm_nvggive[MAX_SPECIALS_HUMANS], cvar_spec_nvggive, cvar_preventconsecutive, cvar_buycustom, cvar_fireslowdown, cvar_sniperfraggore, cvar_nemfraggore, cvar_humansurvive, cvar_antidote_minzms,
cvar_extrainfbomb, cvar_extrainfbomb_ze, cvar_knockback, cvar_ammo_disinfect, cvar_fragsinfect, cvar_frags_disinfect, cvar_ammodamage_zombie, cvar_fragskill, cvar_humanarmor, cvar_zombiesilent, cvar_removedropped, cvar_huddisplay, cvar_allow_buy_no_start,
cvar_plagueratio, cvar_blocksuicide, cvar_knockbackdist, cvar_respawnonheadshot, cvar_respawnonsuicide, cvar_respawnafterlast, cvar_statssave, cvar_adminmodelshuman, cvar_vipmodelshuman,
cvar_adminmodelszombie, cvar_vipmodelszombie, cvar_blockpushables, cvar_respawnworldspawnkill, cvar_madnessduration, cvar_plaguenemnum, cvar_plaguenemhpmulti, cvar_plaguesurvhpmulti,
cvar_survweapon, cvar_plaguesurvnum, cvar_infectionscreenfade, cvar_infectionscreenshake, cvar_infectionsparkle, cvar_infectiontracers, cvar_infectionparticles, cvar_infbomblimit,
cvar_flashshowall, cvar_hudicons, cvar_startammopacks, cvar_random_weapon[2], cvar_buyzonetime, cvar_antidotelimit, cvar_madnesslimit, cvar_madness_use_countdown, g_madness_used[33],
cvar_adminknifemodelshuman, cvar_vipknifemodelshuman, cvar_adminknifemodelszombie, cvar_vipknifemodelszombie, cvar_keephealthondisconnect,
cvar_lnjnemhpmulti, cvar_lnjsurvhpmulti,  cvar_lnjratio, cvar_lnjrespsurv, cvar_lnjrespnem, cvar_frozenhit, cvar_aiminfo, cvar_human_unstuck, cvar_bot_buyitem_interval, cvar_bot_maxitem,
cvar_mod_chance[MAX_GAME_MODES], cvar_mod_minplayers[MAX_GAME_MODES], cvar_mod_enable[MAX_GAME_MODES], cvar_mod_allow_respawn[MAX_GAME_MODES], cvar_respawn_limit[MAX_GAME_MODES],
cvar_leap_hm_allow[MAX_SPECIALS_HUMANS], cvar_leap_hm_cooldown[MAX_SPECIALS_HUMANS], cvar_leap_hm_force[MAX_SPECIALS_HUMANS], cvar_leap_hm_height[MAX_SPECIALS_HUMANS],
cvar_hm_basehp[MAX_SPECIALS_HUMANS], cvar_hm_spd[MAX_SPECIALS_HUMANS], cvar_hm_glow[MAX_SPECIALS_HUMANS], cvar_hm_auraradius[MAX_SPECIALS_HUMANS], cvar_hm_aura[MAX_SPECIALS_HUMANS], cvar_hm_painfree[MAX_SPECIALS_HUMANS],
cvar_hm_respawn[MAX_SPECIALS_HUMANS], cvar_hm_health[MAX_SPECIALS_HUMANS], cvar_hm_ignore_frags[MAX_SPECIALS_HUMANS], cvar_hmgravity[MAX_SPECIALS_HUMANS], cvar_hm_ignore_ammo[MAX_SPECIALS_HUMANS], cvar_hm_damage[MAX_SPECIALS_HUMANS], cvar_hm_infammo[MAX_SPECIALS_HUMANS],
cvar_leap_zm_allow[MAX_SPECIALS_ZOMBIES], cvar_leap_zm_cooldown[MAX_SPECIALS_ZOMBIES], cvar_leap_zm_force[MAX_SPECIALS_ZOMBIES], cvar_leap_zm_height[MAX_SPECIALS_ZOMBIES], cvar_zm_ignore_ammo[MAX_SPECIALS_ZOMBIES],
cvar_zm_spd[MAX_SPECIALS_ZOMBIES], cvar_zm_glow[MAX_SPECIALS_ZOMBIES], cvar_zm_aura[MAX_SPECIALS_ZOMBIES], cvar_zm_auraradius, cvar_zm_painfree[MAX_SPECIALS_ZOMBIES], cvar_zm_damage[MAX_SPECIALS_ZOMBIES],
cvar_zm_respawn[MAX_SPECIALS_ZOMBIES],cvar_zm_basehp[MAX_SPECIALS_ZOMBIES], cvar_zm_health[MAX_SPECIALS_ZOMBIES], cvar_zmgravity[MAX_SPECIALS_ZOMBIES], cvar_zmsp_knockback[MAX_SPECIALS_ZOMBIES], cvar_zm_ignore_frags[MAX_SPECIALS_ZOMBIES],
cvar_zm_allow_frost[MAX_SPECIALS_ZOMBIES], cvar_zm_allow_burn[MAX_SPECIALS_ZOMBIES], cvar_block_zm_use_button, cvar_zombieescapefail, cvar_zm_idle_sound, cvar_hm_allow_weight_spd;
new frostsprite, cvar_dragon_power_distance, cvar_dragon_power_cooldown, cvar_dragon_flyspped, cvar_hud_mode, cvar_hud_hm_rgb[3], cvar_hud_zm_rgb[3], Float:gLastUseCmd[33];

// CVARS with arrays
new cvar_flashcolor[3], cvar_flashcolor2[3], cvar_hm_red[MAX_SPECIALS_HUMANS], cvar_hm_green[MAX_SPECIALS_HUMANS], cvar_hm_blue[MAX_SPECIALS_HUMANS],
cvar_zm_red[MAX_SPECIALS_ZOMBIES], cvar_zm_green[MAX_SPECIALS_ZOMBIES], cvar_zm_blue[MAX_SPECIALS_ZOMBIES], cvar_flashlight_menu, cvar_nvision_menu[2], cvar_zombie_nvsion_rgb[3];

// Cached stuff for players
new g_isconnected[33], g_isalive[33], g_isbot[33], g_currentweapon[33], g_playername[33][32], Float:g_spd[33], Float:g_custom_leap_cooldown[33], Float:g_zombie_knockback[33], g_pl_classname[33][64], g_pl_classname_lang[33];
// #define is_user_valid_connected(%1) (1 <= %1 <= MaxClients && g_isconnected[%1])
// #define is_user_valid_alive(%1) (1 <= %1 <= MaxClients && g_isalive[%1])
#define is_user_valid_connected(%1) (1 <= %1 <= MaxClients && is_user_connected(%1))
#define is_user_valid_alive(%1) (1 <= %1 <= MaxClients && is_user_alive(%1))
#define is_user_valid(%1) (1 <= %1 <= MaxClients)
#define fm_get_user_health(%1) pev(%1, pev_health)

// Cached CVARs
new g_cached_customflash, g_cached_zombiesilent, Float:g_cached_buytime, g_hm_cached_leap[MAX_SPECIALS_HUMANS], Float:g_hm_cached_cooldown[MAX_SPECIALS_HUMANS],
g_zm_cached_leap[MAX_SPECIALS_ZOMBIES], Float:g_zm_cached_cooldown[MAX_SPECIALS_ZOMBIES];

/*================================================================================
 [Natives, Precache and Init]
=================================================================================*/
public plugin_natives() {
	// Player specific natives;
	register_native("zp_get_user_zombie", "native_get_user_zombie");
	register_native("zp_get_user_nemesis", "native_get_user_nemesis");
	register_native("zp_get_user_survivor", "native_get_user_survivor");
	register_native("zp_get_user_first_zombie", "native_get_user_first_zombie");
	register_native("zp_get_user_last_zombie", "native_get_user_last_zombie");
	register_native("zp_get_user_last_human", "native_get_user_last_human");
	register_native("zp_get_user_zombie_class", "native_get_user_zombie_class");
	register_native("zp_get_user_next_class", "native_get_user_next_class");
	register_native("zp_set_user_zombie_class", "native_set_user_zombie_class");
	register_native("zp_get_user_ammo_packs", "native_get_user_ammo_packs");
	register_native("zp_set_user_ammo_packs", "native_set_user_ammo_packs");
	register_native("zp_get_zombie_maxhealth", "native_get_user_maxhealth");
	register_native("zp_get_user_batteries", "native_get_user_batteries");
	register_native("zp_set_user_batteries", "native_set_user_batteries");
	register_native("zp_get_user_nightvision", "native_get_user_nightvision");
	register_native("zp_set_user_nightvision", "native_set_user_nightvision");
	register_native("zp_infect_user", "native_infect_user");
	register_native("zp_disinfect_user", "native_disinfect_user");
	register_native("zp_make_user_nemesis", "native_make_user_nemesis");
	register_native("zp_make_user_survivor", "native_make_user_survivor");
	register_native("zp_respawn_user", "native_respawn_user");
	register_native("zp_force_buy_extra_item", "native_force_buy_extra_item");
	register_native("zp_get_user_sniper", "native_get_user_sniper");
	register_native("zp_make_user_sniper", "native_make_user_sniper");
	register_native("zp_get_user_assassin", "native_get_user_assassin");
	register_native("zp_make_user_assassin", "native_make_user_assassin");
	register_native("zp_get_user_predator", "native_get_user_predator");
	register_native("zp_make_user_predator", "native_make_user_predator");
	register_native("zp_get_user_bombardier", "native_get_user_bombardier");
	register_native("zp_make_user_bombardier", "native_make_user_bombardier");
	register_native("zp_get_user_dragon", "native_get_user_dragon");
	register_native("zp_make_user_dragon", "native_make_user_dragon");
	register_native("zp_get_user_berserker", "native_get_user_berserker");
	register_native("zp_make_user_berserker", "native_make_user_berserker");
	register_native("zp_get_user_wesker", "native_get_user_wesker");
	register_native("zp_make_user_wesker", "native_make_user_wesker");
	register_native("zp_get_user_spy", "native_get_user_spy");
	register_native("zp_make_user_spy", "native_make_user_spy");
	register_native("zp_get_user_model", "native_get_user_model");
	register_native("zp_override_user_model", "native_override_user_model");
	register_native("zp_set_user_model", "native_override_user_model");

	// Round natives;
	register_native("zp_has_round_started", "native_has_round_started");
	register_native("zp_is_nemesis_round", "native_is_nemesis_round");
	register_native("zp_is_survivor_round", "native_is_survivor_round");
	register_native("zp_is_swarm_round", "native_is_swarm_round");
	register_native("zp_is_plague_round", "native_is_plague_round");
	register_native("zp_get_zombie_count", "native_get_zombie_count");
	register_native("zp_get_human_count", "native_get_human_count");
	register_native("zp_get_nemesis_count", "native_get_nemesis_count");
	register_native("zp_get_survivor_count", "native_get_survivor_count");
	register_native("zp_is_sniper_round", "native_is_sniper_round");
	register_native("zp_get_sniper_count", "native_get_sniper_count");
	register_native("zp_is_assassin_round", "native_is_assassin_round");
	register_native("zp_get_assassin_count", "native_get_assassin_count");
	register_native("zp_is_predator_round", "native_is_predator_round");
	register_native("zp_get_predator_count", "native_get_predator_count");
	register_native("zp_is_bombardier_round", "native_is_bombardier_round");
	register_native("zp_get_bombardier_count", "native_get_bombardier_count");
	register_native("zp_is_dragon_round", "native_is_dragon_round");
	register_native("zp_get_dragon_count", "native_get_dragon_count");
	register_native("zp_is_berserker_round", "native_is_berserker_round");
	register_native("zp_get_berserker_count", "native_get_berserker_count");
	register_native("zp_is_wesker_round", "native_is_wesker_round");
	register_native("zp_get_wesker_count", "native_get_wesker_count");
	register_native("zp_is_spy_round", "native_is_spy_round");
	register_native("zp_get_spy_count", "native_get_spy_count");
	register_native("zp_is_lnj_round", "native_is_lnj_round");
	register_native("zp_get_current_mode", "native_get_current_mode");
	register_native("zp_get_last_mode", "native_get_last_mode");

	// External additions natives;
	register_native("zp_register_game_mode", "native_register_gamemode");
	register_native("zp_register_extra_item", "native_register_extra_item");
	register_native("zp_register_zombie_class", "native_register_zombie_class");
	register_native("zp_get_extra_item_id", "native_get_extra_item_id");
	register_native("zp_get_zombie_class_id", "native_get_zombie_class_id");

	// New Natives;
	register_native("zp_get_user_madness", "native_get_user_madness");
	register_native("zp_set_user_madness", "native_set_user_madness");
	register_native("zp_get_user_burn", "native_get_user_burn");
	register_native("zp_set_user_burn", "native_set_user_burn");
	register_native("zp_get_user_frozen", "native_get_user_frozen");
	register_native("zp_set_user_frozen", "native_set_user_frozen");
	register_native("zp_get_user_infectnade", "native_get_user_infectnade");
	register_native("zp_set_user_infectnade", "native_set_user_infectnade");
	register_native("zp_extra_item_textadd", "native_menu_textadd");
	register_native("zp_zombie_class_textadd", "native_menu_textadd");
	register_native("zp_get_human_special_class", "native_get_human_special_class");
	register_native("zp_get_zombie_special_class", "native_get_zombie_special_class");

	// New Natives (2.3 or High Available);
	register_native("zp_set_user_rendering", "native_set_rendering");
	register_native("zp_reset_user_rendering", "native_reset_user_rendering");
	register_native("zp_get_extra_item_cost", "native_get_extra_item_cost");
	register_native("zp_get_extra_item_name", "native_get_extra_item_name");
	register_native("zp_set_user_maxspeed", "native_set_user_maxspeed");
	register_native("zp_get_user_maxspeed", "native_get_user_maxspeed");
	register_native("zp_reset_user_maxspeed", "native_reset_user_maxspeed");

	// New Natives (2.4 or High Available);
	register_native("zp_set_extra_damage", "native_set_extra_damage");
	register_native("zp_set_extra_item_team", "native_set_extra_item_team");
	register_native("zp_set_extra_item_cost", "native_set_extra_item_cost");
	register_native("zp_set_extra_item_name", "native_set_extra_item_name");
	register_native("zp_get_zombie_class_info", "native_get_zombie_class_info");
	register_native("zp_get_zombie_class_name", "native_get_zombie_class_name");
	register_native("zp_set_zombie_class_info", "native_set_zombie_class_info");
	register_native("zp_set_zombie_class_name", "native_set_zombie_class_name");
	register_native("zp_has_round_ended", "native_has_round_ended");
	register_native("zp_get_extra_item_realname", "native_get_extra_item_realname");
	register_native("zp_get_current_mode_name", "native_get_current_mode_name");

	// New Natives (3.0 or High Available);
	register_native("zp_register_human_special", "native_register_human_special");
	register_native("zp_register_zombie_special", "native_register_zombie_special");
	register_native("zp_make_user_special", "native_make_user_special");
	register_native("zp_set_custom_game_mod", "native_set_custom_game_mod");
	register_native("zp_get_special_count", "native_get_special_count");
	register_native("zp_reset_player_model", "native_reset_player_model");

	// New Natives (3.1 or High Available);
	register_native("zp_get_special_class_name", "native_special_class_name");

	// New Natives (3.2 or High Available);
	register_native("zp_get_special_class_id", "native_get_special_class_id");
	register_native("zp_get_zombie_class_realname", "native_get_zclass_realname");

	// New Natives (3.4 or High Available);
	register_native("zp_get_extra_item_count", "native_get_extra_item_count");
	register_native("zp_get_zclass_count", "native_get_zclass_count");
	register_native("zp_get_gamemodes_count", "native_get_gamemodes_count");
	register_native("zp_get_custom_special_count", "native_get_custom_special_count");
	register_native("zp_get_gamemode_id", "native_get_gamemode_id");

	// New Natives (3.5 or High Available);
	register_native("zp_is_escape_map", "native_is_escape_map");
	register_native("zp_do_random_spawn", "native_do_random_spawn");

	// New Natives (4.2 or High Available);
	register_native("zp_reload_csdm_respawn", "native_reload_csdm_respawn");
	register_native("zp_set_lighting", "native_set_lighting");
	register_native("zp_reset_lighting", "native_reset_lighting");
	register_native("zp_is_user_stuck", "native_is_user_stuck");
	register_native("zp_register_weapon", "native_register_weapon");
	register_native("zp_weapon_menu_textadd", "native_menu_textadd");
	register_native("zp_get_weapon_realname", "native_get_weapon_realname");
	register_native("zp_get_weapon_name", "native_get_weapon_name");
	register_native("zp_set_weapon_name", "native_set_weapon_name");
	register_native("zp_weapon_is_custom", "native_weapon_is_custom");
	register_native("zp_weapon_count", "native_weapon_count");
	register_native("zp_get_random_player", "native_get_random_player");
	register_native("zp_set_model_param", "native_set_fw_param_string");

	// New Natives (4.3 or High Available);
	register_native("zp_start_game_mode", "native_start_game_mode");
	register_native("zp_set_next_game_mode", "native_set_next_game_mode");
	register_native("zpsp_register_extra_item", "native_register_extra_item_sp");
	register_native("zp_is_special_class_enable", "native_is_special_class_enable");
	register_native("zp_is_gamemode_enable", "native_is_gamemode_enable");

	// New Natives (4.4 or High Available);
	register_native("zp_set_user_extra_damage", "native_set_extra_damage");
	register_native("zpsp_register_gamemode", "native_register_gamemode");
	register_native("zp_get_custom_extra_start", "native_get_custom_extra_start");

	// New Natives (4.5 or High Available)
	register_native("zp_force_user_class", "native_force_user_class");
	register_native("zpsp_override_user_model", "native_override_user_model2");
	register_native("zp_set_fw_param_int", "native_set_fw_param_int");
	register_native("zp_drop_weapons", "native_drop_weapons");
	register_native("zp_give_item", "native_give_item");
	register_native("zp_strip_user_weapons", "native_strip_user_weapons");
	register_native("zp_register_human_class", "native_register_human_class");
	register_native("zp_register_hclass_model", "native_register_hclass_model");
	register_native("zp_get_user_human_class", "native_get_user_human_class");
	register_native("zp_get_next_human_class", "native_get_next_human_class");
	register_native("zp_set_user_human_class", "native_set_user_human_class");
	register_native("zp_menu_textadd", "native_menu_textadd");
	register_native("zp_get_human_class_id", "native_get_human_class_id");
	register_native("zp_add_hud_text", "native_add_hud_text");
	register_native("zp_get_user_hud_type", "native_get_user_hud_type");
	register_native("zp_get_human_class_info", "native_get_human_class_info");
	register_native("zp_get_human_class_name", "native_get_human_class_name");
	register_native("zp_set_human_class_info", "native_set_human_class_info");
	register_native("zp_set_human_class_name", "native_set_human_class_name");
	register_native("zp_get_human_class_realname", "native_get_hclass_realname");
	register_native("zp_register_zclass_painsnd", "native_register_zclass_painsnd");
	register_native("zp_register_zclass_deathsnd", "native_register_zclass_deathsnd");
	register_native("zp_register_zmspecial_deathsnd", "native_register_zmspecial_deathsnd");
	register_native("zp_register_gamemode_ambience", "native_register_gamemode_ambience");
	register_native("zp_get_user_default_gravity", "native_get_user_default_gravity");
	register_native("zp_set_user_gravity", "native_set_user_gravity");
	register_native("zp_set_param_string", "native_set_fw_param_string");
	register_native("zp_get_user_maxhealth", "native_get_user_maxhealth");
	register_native("zp_register_start_gamemode_snd", "native_register_start_gamemode_snd");
	register_native("zp_get_hclass_count", "native_get_hclass_count");
	register_native("zp_get_user_unlimited_ammo", "native_get_user_unlimited_ammo");
	register_native("zp_set_user_unlimited_ammo", "native_set_user_unlimited_ammo");
	register_native("zp_reset_user_unlimited_ammo", "native_reset_user_unlimited_ammo");
	register_native("zp_get_user_knockback", "native_get_user_knockback");
	register_native("zp_set_user_knockback", "native_set_user_knockback");
	register_native("zp_reset_user_knockback", "native_reset_user_knockback");
	register_native("zp_get_default_unlimited_ammo", "native_get_default_unlimited_ammo");
	register_native("zp_get_default_knockback", "native_get_default_knockback");
	register_native("zp_get_user_default_maxspeed", "native_get_user_default_maxspeed");
}
public plugin_precache() {
	register_plugin(PLUGIN, VERSION, AUTHOR) // Register earlier to show up in plugins list properly after plugin disable/error at loading

	new i, x, buffer[150], buffer2[150]

	// Initialize a few dynamically sized arrays (alright, maybe more than just a few...)
	ZP_TEAM_NAMES = ArrayCreate(32, 1)
	ZP_TEAM_INDEX = ArrayCreate(1, 1)

	for(i = 0; i < MAX_SPECIALS_HUMANS; i++) {
		model_human[i] = ArrayCreate(32, 1)
		model_human_body[i] = ArrayCreate(1, 1)
		model_human_skin[i] = ArrayCreate(1, 1)
	}
	for(i = 0; i < MAX_SPECIALS_ZOMBIES; i++) {
		zombie_pain[i] = ArrayCreate(64, 1)
		if(i > 0) {
			model_zm_special[i] = ArrayCreate(32, 1)
			model_zm_special_body[i] = ArrayCreate(1, 1)
			model_zm_special_skin[i] = ArrayCreate(1, 1)
		}
	}
	for(i = 0; i < MAX_AMBIENCE_SOUNDS; i++) {
		sound_ambience[i] = ArrayCreate(64, 1)
		sound_ambience_duration[i] = ArrayCreate(1, 1)
	}
	for(i = 2; i < MAX_GAME_MODES; i++) sound_mod[i] = ArrayCreate(64, 1);
	for(i = 0; i < MAX_ARRAY_SOUNDS; i++) ar_sound[i] = ArrayCreate(64, 1);

	iTeamIndexHm = ArrayCreate(1, 1);
	iTeamIndexZm = ArrayCreate(1, 1);
	model_adm_hm = ArrayCreate(32, 1);
	model_adm_hm_body = ArrayCreate(1, 1);
	model_adm_hm_skin = ArrayCreate(1, 1);
	model_vip_hm = ArrayCreate(32, 1);
	model_vip_hm_body = ArrayCreate(1, 1);
	model_vip_hm_skin = ArrayCreate(1, 1);
	model_adm_zm = ArrayCreate(32, 1);
	model_adm_zm_body = ArrayCreate(1, 1);
	model_adm_zm_skin = ArrayCreate(1, 1);
	model_vip_zm = ArrayCreate(32, 1);
	model_vip_zm_body = ArrayCreate(1, 1);
	model_vip_zm_skin = ArrayCreate(1, 1);
	sound_win_zombies = ArrayCreate(64, 1);
	sound_win_humans = ArrayCreate(64, 1);
	sound_win_no_one = ArrayCreate(64, 1);
	g_additional_items = ArrayCreate(32, 1);
	g_extraweapon_names = ArrayCreate(32, 1);
	g_extraweapon_items = ArrayCreate(32, 1);
	g_extraweapon_costs = ArrayCreate(1, 1);
	g_extraweapon_lang_key = ArrayCreate(64, 1);
	g_sky_names = ArrayCreate(32, 1);
	lights_thunder = ArrayCreate(32, 1);
	zombie_decals = ArrayCreate(32, 1);
	g_objective_ents = ArrayCreate(32, 1);
	g_escape_maps = ArrayCreate(32, 1);
	g_gm_realname = ArrayCreate(32, 1);
	g_gm_name = ArrayCreate(32, 1);
	g_gm_flag = ArrayCreate(1, 1);
	g_gm_name_by_lang = ArrayCreate(1, 1);
	g_gm_lang_key = ArrayCreate(32, 1);
	g_gm_chance = ArrayCreate(1, 1);
	g_gm_allow = ArrayCreate(1, 1);
	g_gm_dm = ArrayCreate(1, 1);
	g_gm_enable = ArrayCreate(1, 1);
	g_gm_enable_on_ze_map = ArrayCreate(1, 1);
	g_gm_respawn_limit = ArrayCreate(1, 1);
	g_gm_use_amb = ArrayCreate(1, 1);
	g_gm_amb_enable = ArrayCreate(1, 1);
	g_gm_amb_sound_handle = ArrayCreate(1, 1);
	g_gm_amb_duration_handle = ArrayCreate(1, 1);
	g_gm_rstart_snd_handler = ArrayCreate(1, 1);
	g_gm_use_rstart_snd = ArrayCreate(1, 1);
	g_extraitem_name = ArrayCreate(32, 1);
	g_extraitem_realname = ArrayCreate(32, 1);
	g_extraitem_name_by_lang = ArrayCreate(1, 1);
	g_extraitem_lang_key = ArrayCreate(64, 1);
	g_extraitem_cost = ArrayCreate(1, 1);
	g_extraitem_team = ArrayCreate(1, 1);
	g_zclass_real_name = ArrayCreate(32, 1);
	g_zclass_name = ArrayCreate(32, 1);
	g_zclass_info = ArrayCreate(32, 1);
	g_zclass_lang_enable = ArrayCreate(1, 1);
	g_zclass_name_lang_key = ArrayCreate(64, 1);
	g_zclass_info_lang_key = ArrayCreate(64, 1);
	g_zclass_mdl_handle = ArrayCreate(1, 1);
	g_zclass_body_handle = ArrayCreate(1, 1);
	g_zclass_skin_handle = ArrayCreate(1, 1);
	g_zclass_playermodel = ArrayCreate(32, 1);
	g_zclass_body = ArrayCreate(1, 1);
	g_zclass_skin = ArrayCreate(1, 1);
	g_zclass_clawmodel = ArrayCreate(32, 1);
	g_zclass_hp = ArrayCreate(1, 1);
	g_zclass_spd = ArrayCreate(1, 1);
	g_zclass_grav = ArrayCreate(1, 1);
	g_zclass_kb = ArrayCreate(1, 1);
	g_zclass_deathsnd_handle = ArrayCreate(1, 1);
	g_zclass_use_deathsnd = ArrayCreate(1, 1);
	g_zclass_use_painsnd = ArrayCreate(1, 1);
	g_zclass_painsnd_handle = ArrayCreate(1, 1);
	g_hm_sp_realname = ArrayCreate(32, 1);
	g_hm_sp_name = ArrayCreate(32, 1);
	g_hm_sp_mdl_handle = ArrayCreate(32, 1);
	g_hm_sp_body_handle = ArrayCreate(1, 1);
	g_hm_sp_skin_handle = ArrayCreate(1, 1);
	g_hm_sp_health = ArrayCreate(1, 1);
	g_hm_sp_speed = ArrayCreate(1, 1);
	g_hm_sp_gravity = ArrayCreate(1, 1);
	g_hm_sp_flags = ArrayCreate(1, 1);
	g_hm_sp_leap = ArrayCreate(1, 1);
	g_hm_sp_leap_f = ArrayCreate(1, 1);
	g_hm_sp_leap_h = ArrayCreate(1, 1);
	g_hm_sp_leap_c = ArrayCreate(1, 1);
	g_hm_sp_cliptype = ArrayCreate(1, 1);
	g_hm_sp_ignorefrag = ArrayCreate(1, 1);
	g_hm_sp_ignoreammo = ArrayCreate(1, 1);
	g_hm_sp_respawn = ArrayCreate(1, 1);
	g_hm_sp_painfree = ArrayCreate(1, 1);
	g_hm_sp_aurarad = ArrayCreate(1, 1);
	g_hm_sp_glow = ArrayCreate(1, 1);
	g_hm_sp_r = ArrayCreate(1, 1);
	g_hm_sp_g = ArrayCreate(1, 1);
	g_hm_sp_b = ArrayCreate(1, 1);
	g_hm_sp_enable = ArrayCreate(1, 1);
	g_hm_sp_name_by_lang = ArrayCreate(1, 1);
	g_hm_sp_lang_key = ArrayCreate(64, 1);
	g_zm_sp_realname = ArrayCreate(32, 1);
	g_zm_sp_name = ArrayCreate(32, 1);
	g_zm_sp_body_handle = ArrayCreate(1, 1);
	g_zm_sp_mdl_handle = ArrayCreate(1, 1);
	g_zm_sp_skin_handle = ArrayCreate(1, 1);
	g_zm_sp_knifemodel = ArrayCreate(64, 1);
	g_zm_sp_health = ArrayCreate(1, 1);
	g_zm_sp_speed = ArrayCreate(1, 1);
	g_zm_sp_gravity = ArrayCreate(1, 1);
	g_zm_sp_flags = ArrayCreate(1, 1);
	g_zm_sp_leap = ArrayCreate(1, 1);
	g_zm_sp_leap_f = ArrayCreate(1, 1);
	g_zm_sp_leap_h = ArrayCreate(1, 1);
	g_zm_sp_leap_c = ArrayCreate(1, 1);
	g_zm_sp_knockback = ArrayCreate(1, 1);
	g_zm_sp_ignorefrag = ArrayCreate(1, 1);
	g_zm_sp_ignoreammo = ArrayCreate(1, 1);
	g_zm_sp_respawn = ArrayCreate(1, 1);
	g_zm_sp_painfree = ArrayCreate(1, 1);
	g_zm_sp_aurarad = ArrayCreate(1, 1);
	g_zm_sp_glow = ArrayCreate(1, 1);
	g_zm_sp_r = ArrayCreate(1, 1);
	g_zm_sp_g = ArrayCreate(1, 1);
	g_zm_sp_b = ArrayCreate(1, 1);
	g_zm_sp_allow_burn = ArrayCreate(1, 1);
	g_zm_sp_allow_frost = ArrayCreate(1, 1);
	g_zm_sp_enable = ArrayCreate(1, 1);
	g_zm_sp_painsnd_handle = ArrayCreate(1, 1);
	g_zm_sp_deathsnd_handle = ArrayCreate(1, 1);
	g_zm_sp_use_deathsnd = ArrayCreate(1, 1);
	g_zm_sp_name_by_lang = ArrayCreate(1, 1);
	g_zm_sp_lang_key = ArrayCreate(32, 1);
	g_hm_sp_nvision = ArrayCreate(1, 1);
	g_zm_sp_nvision = ArrayCreate(1, 1);
	g_hclass_real_name = ArrayCreate(32, 1);
	g_hclass_name = ArrayCreate(32, 1);
	g_hclass_info = ArrayCreate(64, 1);
	g_hclass_hp = ArrayCreate(1, 1);
	g_hclass_armor = ArrayCreate(1, 1);
	g_hclass_speed = ArrayCreate(1, 1);
	g_hclass_gravity = ArrayCreate(1, 1);
	g_hclass_lang_enable = ArrayCreate(1, 1);
	g_hclass_name_lang_key = ArrayCreate(32, 1);
	g_hclass_info_lang_key = ArrayCreate(64, 1);
	g_hclass_mdl_file = ArrayCreate(1, 1);
	g_hclass_mdl_handle = ArrayCreate(1, 1);
	g_hclass_body_handle = ArrayCreate(1, 1);
	g_hclass_skin_handle = ArrayCreate(1, 1);

	for(i = 0; i < 2; i++) {
		g_wpn_is_custom[i] = ArrayCreate(1, 1);
		g_wpn_realname[i] = ArrayCreate(32, 1);
		g_wpn_name[i] = ArrayCreate(32, 1);
		g_wpn_ids[i] = ArrayCreate(1, 1);
		g_wpn_name_by_lang[i] = ArrayCreate(1, 1);
		g_wpn_lang_key[i] = ArrayCreate(32, 1);
	}

	g_arrays_created = true; // Allow registering stuff now
	load_customization_from_files(); // Load customization data

	new const team_names[][] = { "ZOMBIE", "HUMAN", "NEMESIS", "SURVIVOR", "SNIPER", "ASSASSIN", "BERSERKER", "PREDATOR", "WESKER",
	"BOMBARDIER", "SPY", "DRAGON" };

	for(i = 0; i < sizeof team_names; i++) {
		ArrayPushString(ZP_TEAM_NAMES, team_names[i]);
		ArrayPushCell(ZP_TEAM_INDEX, i);
	}
	ArrayPushCell(iTeamIndexHm, TEAM_HUMAN);
	ArrayPushCell(iTeamIndexHm, TEAM_SURVIVOR);
	ArrayPushCell(iTeamIndexHm, TEAM_SNIPER);
	ArrayPushCell(iTeamIndexHm, TEAM_BERSERKER);
	ArrayPushCell(iTeamIndexHm, TEAM_WESKER);
	ArrayPushCell(iTeamIndexHm, TEAM_SPY);
	ArrayPushCell(iTeamIndexZm, TEAM_ZOMBIE);
	ArrayPushCell(iTeamIndexZm, TEAM_NEMESIS);
	ArrayPushCell(iTeamIndexZm, TEAM_ASSASSIN);
	ArrayPushCell(iTeamIndexZm, TEAM_PREDATOR);
	ArrayPushCell(iTeamIndexZm, TEAM_BOMBARDIER);
	ArrayPushCell(iTeamIndexZm, TEAM_DRAGON);

	// Load up the hard coded extra items
	internal_register_extra_item("NightVision", g_extra_costs2[EXTRA_NVISION], GetTeamIndex(TEAM_HUMAN)|GetTeamIndex(TEAM_ZOMBIE), 0, "");
	internal_register_extra_item("T-Virus Antidote", g_extra_costs2[EXTRA_ANTIDOTE], GetTeamIndex(TEAM_ZOMBIE), 0, "");
	internal_register_extra_item("Zombie Madness", g_extra_costs2[EXTRA_MADNESS], GetTeamIndex(TEAM_ZOMBIE), 0, "");
	internal_register_extra_item("Infection Bomb", g_extra_costs2[EXTRA_INFBOMB], GetTeamIndex(TEAM_ZOMBIE), 0, "");

	// Extra weapons
	for(i = 0; i < ArraySize(g_extraweapon_names); i++) {
		ArrayGetString(g_extraweapon_names, i, buffer, charsmax(buffer))

		if(g_extraweapon_name_by_lang) {
			ArrayGetString(g_extraweapon_lang_key, i, buffer2, charsmax(buffer2))
			remove_quotes(buffer2)
		}
		else buffer2 = ""

		internal_register_extra_item(buffer, ArrayGetCell(g_extraweapon_costs, i), GetTeamIndex(TEAM_HUMAN), g_extraweapon_name_by_lang, buffer2)
	}

	// Custom player models
	for(i = 0; i < ArraySize(model_adm_zm); i++) {
		ArrayGetString(model_adm_zm, i, buffer, charsmax(buffer))
		precache_player_model(buffer)
	}
	for(i = 0; i < ArraySize(model_vip_zm); i++) {
		ArrayGetString(model_vip_zm, i, buffer, charsmax(buffer))
		precache_player_model(buffer)
	}
	for(i = 0; i < ArraySize(model_adm_hm); i++) {
		ArrayGetString(model_adm_hm, i, buffer, charsmax(buffer))
		precache_player_model(buffer)
	}
	for(i = 0; i < ArraySize(model_vip_hm); i++)	{
		ArrayGetString(model_vip_hm, i, buffer, charsmax(buffer))
		precache_player_model(buffer)
	}
	for(x = 1; x < MAX_SPECIALS_ZOMBIES; x++) {
		if(zm_special_enable[x]) {
			for(i = 0; i < ArraySize(model_zm_special[x]); i++) {
				ArrayGetString(model_zm_special[x], i, buffer, charsmax(buffer))
				precache_player_model(buffer)
			}
			engfunc(EngFunc_PrecacheModel, model_vknife_zm_special[x])
			if(x == DRAGON) frostsprite = engfunc(EngFunc_PrecacheModel, "sprites/frost_explode.spr")
		}
	}
	for(x = 0; x < MAX_SPECIALS_HUMANS; x++) {
		if(hm_special_enable[x] || x == 0) {
			for(i = 0; i < ArraySize(model_human[x]); i++) {
				ArrayGetString(model_human[x], i, buffer, charsmax(buffer))
				precache_player_model(buffer)
			}
			engfunc(EngFunc_PrecacheModel, model_v_weapon_human[x])
			engfunc(EngFunc_PrecacheModel, model_p_weapon_human[x])
		}
	}
	// Custom weapon models
	for(i = 0; i < MAX_WPN_MDL; i++) {
		engfunc(EngFunc_PrecacheModel, model_grenade_infect[i])
		engfunc(EngFunc_PrecacheModel, model_grenade_bombardier[i])
		engfunc(EngFunc_PrecacheModel, model_grenade_fire[i])
		engfunc(EngFunc_PrecacheModel, model_grenade_frost[i])
		engfunc(EngFunc_PrecacheModel, model_grenade_flare[i])

		if(i < WORLD_MODEL) {
			engfunc(EngFunc_PrecacheModel, model_knife_admin_human[i])
			engfunc(EngFunc_PrecacheModel, model_knife_vip_human[i])
		}
	}
	engfunc(EngFunc_PrecacheModel, model_vknife_admin_zombie)
	engfunc(EngFunc_PrecacheModel, model_vknife_vip_zombie)

	for(i = 0; i < MAX_GRENADES; i++) { // Custom sprites for grenades
		if(enable_trail[i]) g_trailSpr[i] = engfunc(EngFunc_PrecacheModel, sprite_grenade_trail[i]);
		if(i != FLARE && enable_explode[i]) g_ExplodeSpr[i] = engfunc(EngFunc_PrecacheModel, sprite_grenade_explode[i]);
		if(i != FLARE && enable_gib[i]) g_GibSpr[i] = engfunc(EngFunc_PrecacheModel, sprite_grenade_gib[i]);
	}

	g_RingSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_ring)
	g_flameSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_fire)
	g_smokeSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_smoke)
	g_glassSpr = engfunc(EngFunc_PrecacheModel, sprite_grenade_glass)

	if(g_enable_end_round_sounds) { // Custom sounds
		for(i = 0; i < ArraySize(sound_win_zombies); i++) {
			ArrayGetString(sound_win_zombies, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
		for(i = 0; i < ArraySize(sound_win_humans); i++) {
			ArrayGetString(sound_win_humans, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
		for(i = 0; i < ArraySize(sound_win_no_one); i++) {
			ArrayGetString(sound_win_no_one, i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
	}
	for(x = 0; x < MAX_SPECIALS_ZOMBIES; x++) {
		if(zm_special_enable[x] || x == 0) {
			for(i = 0; i < ArraySize(zombie_pain[x]); i++) {
				ArrayGetString(zombie_pain[x], i, buffer, charsmax(buffer))
				engfunc(EngFunc_PrecacheSound, buffer)
			}
		}
	}
	for(x = 2; x < MAX_GAME_MODES; x++) {
		for(i = 0; i < ArraySize(sound_mod[x]); i++) {
			ArrayGetString(sound_mod[x], i, buffer, charsmax(buffer))
			precache_ambience(buffer)
		}
	}
	for(x = 0; x < MAX_ARRAY_SOUNDS; x++) {
		for(i = 0; i < ArraySize(ar_sound[x]); i++) {
			ArrayGetString(ar_sound[x], i, buffer, charsmax(buffer))
			engfunc(EngFunc_PrecacheSound, buffer)
		}
	}
	for(x = 0; x < MAX_AMBIENCE_SOUNDS; x++) {
		if(g_ambience_sounds[x]) {
			for(i = 0; i < ArraySize(sound_ambience[x]); i++) {
				ArrayGetString(sound_ambience[x], i, buffer, charsmax(buffer))
				precache_ambience(buffer)
			}
		}
	}
	for(i = 0; i < sizeof cs_sounds; i++) engfunc(EngFunc_PrecacheSound, cs_sounds[i]) // CS sounds (just in case)

	new ent
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "hostage_entity"))
	if(pev_valid(ent)) { // Fake Hostage (to force round ending)
		engfunc(EngFunc_SetOrigin, ent, Float:{8192.0,8192.0,8192.0})
		dllfunc(DLLFunc_Spawn, ent)
	}

	if(g_ambience_fog) { // Weather/ambience effects
		ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_fog"))
		if(pev_valid(ent)) {
			fm_set_kvd(ent, "density", g_fog_density, "env_fog")
			fm_set_kvd(ent, "rendercolor", g_fog_color, "env_fog")
		}
	}
	if(g_ambience_rain) engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_rain"))
	if(g_ambience_snow) engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_snow"))

	// Custom buyzone for all players
	g_buyzone_ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "func_buyzone"))
	if(pev_valid(g_buyzone_ent)) {
		dllfunc(DLLFunc_Spawn, g_buyzone_ent)
		set_pev(g_buyzone_ent, pev_solid, SOLID_NOT)
	}

	g_fwSpawn = register_forward(FM_Spawn, "fw_Spawn") // Prevent some entities from spawning
	g_fwPrecacheSound = register_forward(FM_PrecacheSound, "fw_PrecacheSound") // Prevent hostage sounds from being precached
}
public plugin_init() {

	if(!g_zclass_i) set_fail_state("No zombie classes loaded!") // No zombie classes?

	// Print the number of registered Game Modes (if any)
	if(g_gamemodes_i > MAX_GAME_MODES) server_print("[ZP] Total Registered Custom Game Modes: %d", g_gamemodes_i - MAX_GAME_MODES)
	if(g_hm_specials_i > MAX_SPECIALS_HUMANS) server_print("[ZP] Total Registered Custom Special Humans: %d", g_hm_specials_i - MAX_SPECIALS_HUMANS)
	if(g_zm_specials_i > MAX_SPECIALS_ZOMBIES) server_print("[ZP] Total Registered Custom Special Zombies: %d", g_zm_specials_i - MAX_SPECIALS_ZOMBIES)

	if(g_hclass_i) server_print("[ZP] Total Registered Human Classes: %d", g_hclass_i) // Print the number of registered Human Classes
	server_print("[ZP] Total Registered Zombie Classes: %d", g_zclass_i) // Print the number of registered Zombie Classes
	server_print("[ZP] Total Registered Extra Items: %d", g_extraitem_i) // Print the number of registered Extra Items

	new Float:game_roundtime
	if(g_escape_map) {
		game_roundtime = 15.0
		if(!amx_load_setting_float(ZP_CUSTOMIZATION_FILE, "Main Configs", "ZOMBIE ESCAPE ROUNDTIME", game_roundtime))
			amx_save_setting_float(ZP_ZOMBIECLASSES_FILE, "Main Configs", "ZOMBIE ESCAPE ROUNDTIME", game_roundtime) // Backwards compatibility
	}
	else {
		game_roundtime = 5.0
		if(!amx_load_setting_float(ZP_CUSTOMIZATION_FILE, "Main Configs", "ZOMBIE PLAGUE ROUNDTIME", game_roundtime))
			amx_save_setting_float(ZP_ZOMBIECLASSES_FILE, "Main Configs", "ZOMBIE PLAGUE ROUNDTIME", game_roundtime) // Backwards compatibility
	}
	set_cvar_float("mp_roundtime", game_roundtime) // Change Roundtime
	server_print("[ZP] Game Roundtime: %0.2f", game_roundtime)

	register_dictionary("zombie_plague_special.txt") // Language files
	register_dictionary("zpsp_lang_itens_classes.txt") // Language files for itens/classes

	// Events
	register_event("HLTV", "event_round_start", "a", "1=0", "2=0")
	register_event("StatusValue", "event_show_status", "be", "1=2", "2!0")
	register_event("StatusValue", "event_hide_status", "be", "1=1", "2=0")
	register_logevent("logevent_round_start",2, "1=Round_Start")
	register_logevent("logevent_round_end", 2, "1=Round_End")
	register_event("AmmoX", "event_ammo_x", "be")

	for(new i = 0; i < MAX_AMBIENCE_SOUNDS; i++) if(g_ambience_sounds[i]) register_event("30", "event_intermission", "a")

	// HAM Forwards
	RegisterHam(Ham_Spawn, "player", "fw_PlayerSpawn_Post", 1, true)
	RegisterHam(Ham_Killed, "player", "fw_PlayerKilled", 0, true)
	RegisterHam(Ham_Killed, "player", "fw_PlayerKilled_Post", 1, true)
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage", 0, true)
	RegisterHam(Ham_TakeDamage, "player", "fw_TakeDamage_Post", 1, true)
	RegisterHam(Ham_TraceAttack, "player", "fw_TraceAttack", 0, true)
	RegisterHam(Ham_Player_ResetMaxSpeed, "player", "fw_ResetMaxSpeed_Post", 1, true)
	RegisterHam(Ham_AddPlayerItem, "player", "fw_AddPlayerItem", 0, true)

	RegisterHam(Ham_Use, "func_pushable", "fw_UsePushable")
	RegisterHam(Ham_Use, "func_button", "fw_UseButton")
	RegisterHam(Ham_Touch, "weaponbox", "fw_TouchWeapon")
	RegisterHam(Ham_Touch, "armoury_entity", "fw_TouchWeapon")
	RegisterHam(Ham_Touch, "weapon_shield", "fw_TouchWeapon")
	RegisterHam(Ham_Think, "grenade", "fw_ThinkGrenade")
	new i
	for(i = 0; i < sizeof stationary_entities; i++) {
		RegisterHam(Ham_Use, stationary_entities[i], "fw_UseStationary")
		RegisterHam(Ham_Use, stationary_entities[i], "fw_UseStationary_Post", 1)
	}
	for(i = 1; i < sizeof WEAPONENTNAMES; i++)
		if(WEAPONENTNAMES[i][0]) RegisterHam(Ham_Item_Deploy, WEAPONENTNAMES[i], "fw_Item_Deploy_Post", 1)

	// FM Forwards
	register_forward(FM_ClientDisconnect, "fw_ClientDisconnect")
	register_forward(FM_ClientDisconnect, "fw_ClientDisconnect_Post", 1)
	register_forward(FM_ClientKill, "fw_ClientKill")
	register_forward(FM_EmitSound, "fw_EmitSound")
	register_forward(FM_SetClientKeyValue, "fw_SetClientKeyValue")
	register_forward(FM_ClientUserInfoChanged, "fw_ClientUserInfoChanged")
	register_forward(FM_GetGameDescription, "fw_GetGameDescription")
	register_forward(FM_SetModel, "fw_SetModel")
	register_forward(FM_CmdStart, "fw_CmdStart")
	register_forward(FM_PlayerPreThink, "fw_PlayerPreThink")
	unregister_forward(FM_Spawn, g_fwSpawn)
	unregister_forward(FM_PrecacheSound, g_fwPrecacheSound)

	// Client commands
	register_clcmd("nightvision", "clcmd_nightvision")
	register_clcmd("drop", "clcmd_drop")
	register_clcmd("buyammo1", "clcmd_buyammo")
	register_clcmd("buyammo2", "clcmd_buyammo")
	register_clcmd("chooseteam", "clcmd_changeteam")
	register_clcmd("jointeam", "clcmd_changeteam")
	register_clcmd("zp_game_menu", "show_menu_game")

	// Menus
	register_menu("Game Menu", KEYSMENU, "menu_game")
	register_menu("Buy Menu", KEYSMENU, "menu_buy")
	register_menu("Menu3 Admin", KEYSMENU, "menu3_admin")

	// Admin commands
	register_concmd("zp_zombie", "cmd_zombie", _, "<target> - Turn someone into a Zombie", 0)
	register_concmd("zp_human", "cmd_human", _, "<target> - Turn someone back to Human", 0)
	register_concmd("zp_nemesis", "cmd_nemesis", _, "<target> - Turn someone into a Nemesis", 0)
	register_concmd("zp_survivor", "cmd_survivor", _, "<target> - Turn someone into a Survivor", 0)
	register_concmd("zp_respawn", "cmd_respawn", _, "<target> - Respawn someone", 0)
	register_concmd("zp_swarm", "cmd_swarm", _, " - Start Swarm Mode", 0)
	register_concmd("zp_multi", "cmd_multi", _, " - Start Multi Infection", 0)
	register_concmd("zp_plague", "cmd_plague", _, " - Start Plague Mode", 0)
	register_concmd("zp_sniper", "cmd_sniper", _, "<target> - Turn someone into a Sniper", 0)
	register_concmd("zp_assassin", "cmd_assassin", _, "<target> - Turn someone into an Assassin", 0)
	register_concmd("zp_predator", "cmd_predator", _, "<target> - Turn someone into an Predator", 0)
	register_concmd("zp_bombardier", "cmd_bombardier", _, "<target> - Turn someone into an Bombardier", 0)
	register_concmd("zp_berserker", "cmd_berserker", _, "<target> - Turn someone into a Berserker", 0)
	register_concmd("zp_wesker", "cmd_wesker", _, "<target> - Turn someone into a Wesker", 0)
	register_concmd("zp_spy", "cmd_spy", _, "<target> - Turn someone into a Spy", 0)
	register_concmd("zp_dragon", "cmd_dragon", _, "<target> - Turn someone into an Dragon", 0)
	register_concmd("zp_lnj", "cmd_lnj", _, " - Start Apocalypse Mode", 0)

	// Message IDs
	g_msgScoreInfo = get_user_msgid("ScoreInfo")
	g_msgTeamInfo = get_user_msgid("TeamInfo")
	g_msgDeathMsg = get_user_msgid("DeathMsg")
	g_msgScoreAttrib = get_user_msgid("ScoreAttrib")
	g_msgSetFOV = get_user_msgid("SetFOV")
	g_msgScreenFade = get_user_msgid("ScreenFade")
	g_msgScreenShake = get_user_msgid("ScreenShake")
	g_msgNVGToggle = get_user_msgid("NVGToggle")
	g_msgFlashlight = get_user_msgid("Flashlight")
	g_msgFlashBat = get_user_msgid("FlashBat")
	g_msgAmmoPickup = get_user_msgid("AmmoPickup")
	g_msgDamage = get_user_msgid("Damage")
	g_msgHideWeapon = get_user_msgid("HideWeapon")
	g_msgCrosshair = get_user_msgid("Crosshair")
	g_msgCurWeapon = get_user_msgid("CurWeapon")

	// Message hooks
	register_message(g_msgCurWeapon, "message_cur_weapon")
	register_message(get_user_msgid("Money"), "message_money")
	register_message(get_user_msgid("Health"), "message_health")
	register_message(get_user_msgid("Battery"), "message_armor")
	register_message(g_msgFlashBat, "message_flashbat")
	register_message(g_msgScreenFade, "message_screenfade")
	register_message(g_msgNVGToggle, "message_nvgtoggle")
	register_message(get_user_msgid("WeapPickup"), "message_weappickup")
	register_message(g_msgAmmoPickup, "message_ammopickup")
	register_message(get_user_msgid("Scenario"), "message_scenario")
	register_message(get_user_msgid("HostagePos"), "message_hostagepos")
	register_message(get_user_msgid("TextMsg"), "message_textmsg")
	register_message(get_user_msgid("SendAudio"), "message_sendaudio")
	register_message(get_user_msgid("TeamScore"), "message_teamscore")
	register_message(g_msgTeamInfo, "message_teaminfo")

	// CVARS - General Purpose
	cvar_warmup = register_cvar("zp_delay", "10")
	cvar_lighting = register_cvar("zp_lighting", "a")
	cvar_thunder = register_cvar("zp_thunderclap", "90")
	cvar_triggered = register_cvar("zp_triggered_lights", "1")
	cvar_removedoors = register_cvar("zp_remove_doors", "0")
	cvar_blockpushables = register_cvar("zp_blockuse_pushables", "1")
	cvar_blocksuicide = register_cvar("zp_block_suicide", "1")
	cvar_randspawn = register_cvar("zp_random_spawn", "1")
	cvar_respawnworldspawnkill = register_cvar("zp_respawn_on_worldspawn_kill", "1")
	cvar_removedropped = register_cvar("zp_remove_dropped", "0")
	cvar_removemoney = register_cvar("zp_remove_money", "1")
	cvar_buycustom = register_cvar("zp_buy_custom", "1")
	cvar_buyzonetime = register_cvar("zp_buyzone_time", "0.0")
	cvar_random_weapon[0] = register_cvar("zp_random_primary", "0")
	cvar_random_weapon[1] = register_cvar("zp_random_secondary", "0")
	cvar_adminmodelshuman = register_cvar("zp_admin_models_human", "1")
	cvar_adminknifemodelshuman = register_cvar("zp_admin_knife_models_human", "0")
	cvar_vipmodelshuman = register_cvar("zp_vip_models_human", "1")
	cvar_vipknifemodelshuman = register_cvar("zp_vip_knife_models_human", "1")
	cvar_adminmodelszombie = register_cvar("zp_admin_models_zombie", "1")
	cvar_vipmodelszombie = register_cvar("zp_vip_models_zombie", "1")
	cvar_adminknifemodelszombie = register_cvar("zp_admin_knife_models_zombie", "0")
	cvar_vipknifemodelszombie = register_cvar("zp_vip_knife_models_zombie", "0")
	cvar_zclasses = register_cvar("zp_zombie_classes", "1")
	cvar_hclasses = register_cvar("zp_human_classes", "1")
	cvar_statssave = register_cvar("zp_stats_save", "1")
	cvar_startammopacks = register_cvar("zp_starting_ammo_packs", "5")
	cvar_preventconsecutive = register_cvar("zp_prevent_consecutive_modes", "1")
	cvar_keephealthondisconnect = register_cvar("zp_keep_health_on_disconnect", "1")
	cvar_humansurvive = register_cvar("zp_human_survive", "1")
	cvar_zombieescapefail = register_cvar("zp_zombie_escape_fail", "1")
	cvar_aiminfo = register_cvar("zp_aim_info", "1")
	cvar_human_unstuck = register_cvar("zp_allow_human_unstuck", "1")
	cvar_bot_maxitem = register_cvar("zp_bot_max_extra_for_round", "5")
	cvar_bot_buyitem_interval = register_cvar("zp_bot_buy_extra_interval", "20.0")
	cvar_huddisplay = register_cvar("zp_hud_display", "1")
	cvar_allow_buy_no_start = register_cvar("zp_allow_buy_extra_before_start", "1")
	cvar_chosse_instantanly[0] = register_cvar("zp_choose_zclass_instantanly", "1")
	cvar_chosse_instantanly[1] = register_cvar("zp_choose_hclass_instantanly", "1")
	cvar_ammodamage_quantity = register_cvar("zp_ammopack_damage", "1")
	cvar_green_dm = register_cvar("zp_green_deathmsg", "1")
	cvar_hud_mode = register_cvar("zp_default_user_hud", "0")
	cvar_hud_hm_rgb[0] = register_cvar("zp_hm_hud_color_r", "0")
	cvar_hud_hm_rgb[1] = register_cvar("zp_hm_hud_color_g", "100")
	cvar_hud_hm_rgb[2] = register_cvar("zp_hm_hud_color_b", "255")
	cvar_hud_zm_rgb[0] = register_cvar("zp_zm_hud_color_r", "255")
	cvar_hud_zm_rgb[1] = register_cvar("zp_zm_hud_color_g", "255")
	cvar_hud_zm_rgb[2] = register_cvar("zp_zm_hud_color_b", "0")

	// CVARS - Deathmatch
	cvar_deathmatch = register_cvar("zp_deathmatch", "0")
	cvar_spawndelay = register_cvar("zp_spawn_delay", "5")
	cvar_spawnprotection = register_cvar("zp_spawn_protection", "5")
	cvar_respawnonsuicide = register_cvar("zp_respawn_on_suicide", "0")
	cvar_respawnonheadshot = register_cvar("zp_respawn_on_headshoot", "1")
	cvar_respawnafterlast = register_cvar("zp_respawn_after_last_human", "1")
	cvar_zm_respawn[0] = register_cvar("zp_respawn_zombies", "1")
	cvar_hm_respawn[0] = register_cvar("zp_respawn_humans", "1")
	cvar_zm_respawn[NEMESIS] = register_cvar("zp_respawn_nemesis", "1")
	cvar_hm_respawn[SURVIVOR] = register_cvar("zp_respawn_survivors", "1")
	cvar_hm_respawn[SNIPER] = register_cvar("zp_respawn_snipers", "1")
	cvar_zm_respawn[ASSASSIN] = register_cvar("zp_respawn_assassins", "1")
	cvar_zm_respawn[PREDATOR] = register_cvar("zp_respawn_predators", "1")
	cvar_zm_respawn[BOMBARDIER] = register_cvar("zp_respawn_bombardiers", "1")
	cvar_zm_respawn[DRAGON] = register_cvar("zp_respawn_dragons", "1")
	cvar_hm_respawn[BERSERKER] = register_cvar("zp_respawn_berserkers", "1")
	cvar_hm_respawn[WESKER] = register_cvar("zp_respawn_weskers", "1")
	cvar_hm_respawn[SPY] = register_cvar("zp_respawn_spys", "1")
	cvar_lnjrespsurv = register_cvar("zp_lnj_respawn_surv", "0")
	cvar_lnjrespnem = register_cvar("zp_lnj_respawn_nem", "0")

	// Game mode enable Respawns
	cvar_mod_allow_respawn[MODE_INFECTION] = register_cvar("zp_infection_allow_respawn", "1")
	cvar_mod_allow_respawn[MODE_NEMESIS] = register_cvar("zp_nem_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_SURVIVOR] = register_cvar("zp_surv_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_SWARM] = register_cvar("zp_swarm_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_PLAGUE] = register_cvar("zp_plague_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_SNIPER] = register_cvar("zp_sniper_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_ASSASSIN] = register_cvar("zp_assassin_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_PREDATOR] = register_cvar("zp_predator_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_BOMBARDIER] = register_cvar("zp_bombardier_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_DRAGON] = register_cvar("zp_dragon_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_BERSERKER] = register_cvar("zp_berserker_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_WESKER] = register_cvar("zp_wesker_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_SPY] = register_cvar("zp_spy_allow_respawn", "0")
	cvar_mod_allow_respawn[MODE_LNJ] = register_cvar("zp_lnj_allow_respawn", "0")

	// Game mode respawn limit (0 - Unlimited)
	cvar_respawn_limit[MODE_INFECTION] = register_cvar("zp_infection_respawn_limit", "0")
	cvar_respawn_limit[MODE_NEMESIS] = register_cvar("zp_nem_respawn_limit", "0")
	cvar_respawn_limit[MODE_SURVIVOR] = register_cvar("zp_surv_respawn_limit", "0")
	cvar_respawn_limit[MODE_SWARM] = register_cvar("zp_swarm_respawn_limit", "0")
	cvar_respawn_limit[MODE_PLAGUE] = register_cvar("zp_plague_respawn_limit", "0")
	cvar_respawn_limit[MODE_SNIPER] = register_cvar("zp_sniper_respawn_limit", "0")
	cvar_respawn_limit[MODE_ASSASSIN] = register_cvar("zp_assassin_respawn_limit", "0")
	cvar_respawn_limit[MODE_PREDATOR] = register_cvar("zp_predator_respawn_limit", "0")
	cvar_respawn_limit[MODE_BOMBARDIER] = register_cvar("zp_bombardier_respawn_limit", "0")
	cvar_respawn_limit[MODE_DRAGON] = register_cvar("zp_dragon_respawn_limit", "0")
	cvar_respawn_limit[MODE_BERSERKER] = register_cvar("zp_berserker_respawn_limit", "0")
	cvar_respawn_limit[MODE_WESKER] = register_cvar("zp_wesker_respawn_limit", "0")
	cvar_respawn_limit[MODE_SPY] = register_cvar("zp_spy_respawn_limit", "0")
	cvar_respawn_limit[MODE_LNJ] = register_cvar("zp_lnj_respawn_limit", "0")

	// CVARS - Extra Items
	cvar_extraitems = register_cvar("zp_extra_items", "1")
	cvar_extraweapons = register_cvar("zp_extra_weapons", "1")
	cvar_extranvision = register_cvar("zp_extra_nvision", "1")
	cvar_extraantidote = register_cvar("zp_extra_antidote", "1")
	cvar_extraantidote_ze = register_cvar("zp_extra_antidote_allow_escape", "0")
	cvar_antidotelimit = register_cvar("zp_extra_antidote_limit", "999")
	cvar_extramadness = register_cvar("zp_extra_madness", "1")
	cvar_extramadness_ze = register_cvar("zp_extra_madness_allow_escape", "0")
	cvar_madnesslimit = register_cvar("zp_extra_madness_limit", "999")
	cvar_madnessduration = register_cvar("zp_extra_madness_dur", "5.0")
	cvar_extrainfbomb = register_cvar("zp_extra_infbomb", "1")
	cvar_extrainfbomb_ze = register_cvar("zp_extra_infbomb_allow_escape", "0")
	cvar_infbomblimit = register_cvar("zp_extra_infbomb_limit", "999")
	cvar_antidote_minzms = register_cvar("zp_extra_antidote_min_zms", "5")
	cvar_madness_use_countdown = register_cvar("zp_extra_madness_use_delay", "5.0")

	// CVARS - Flashlight and Nightvision
	cvar_zm_nvggive[0] = register_cvar("zp_nvg_give_zombies", "1")
	cvar_zm_nvggive[NEMESIS] = register_cvar("zp_nvg_give_nemesis", "1")
	cvar_zm_nvggive[ASSASSIN] = register_cvar("zp_nvg_give_assassin", "1")
	cvar_zm_nvggive[PREDATOR] = register_cvar("zp_nvg_give_predator", "1")
	cvar_zm_nvggive[BOMBARDIER] = register_cvar("zp_nvg_give_bombardier", "1")
	cvar_zm_nvggive[DRAGON] = register_cvar("zp_nvg_give_dragon", "1")
	cvar_hm_nvggive[0] = register_cvar("zp_nvg_give_humans", "0")
	cvar_hm_nvggive[SURVIVOR] = register_cvar("zp_nvg_give_survivor", "1")
	cvar_hm_nvggive[SNIPER] = register_cvar("zp_nvg_give_sniper", "1")
	cvar_hm_nvggive[BERSERKER] = register_cvar("zp_nvg_give_berserker", "1")
	cvar_hm_nvggive[WESKER] = register_cvar("zp_nvg_give_wesker", "1")
	cvar_hm_nvggive[SPY] = register_cvar("zp_nvg_give_spy", "1")
	cvar_spec_nvggive = register_cvar("zp_nvg_spectator", "1")
	cvar_customnvg = register_cvar("zp_nvg_custom", "1")
	cvar_nvg_alpha = register_cvar("zp_nvg_fade_alpha", "70")
	cvar_nvgsize = register_cvar("zp_nvg_size", "80")
	cvar_zm_red[0] = register_cvar("zp_zombie_madness_color_R", "255")
	cvar_zm_green[0] = register_cvar("zp_zombie_madness_color_G", "0")
	cvar_zm_blue[0] = register_cvar("zp_zombie_madness_color_B", "0")
	cvar_zombie_nvsion_rgb[0] = register_cvar("zp_nvg_color_R", "255")
	cvar_zombie_nvsion_rgb[1] = register_cvar("zp_nvg_color_G", "255")
	cvar_zombie_nvsion_rgb[2] = register_cvar("zp_nvg_color_B", "0")
	cvar_nvision_menu[0] = register_cvar("zp_nvg_hm_personal_menu", "1")
	cvar_nvision_menu[1] = register_cvar("zp_nvg_zm_personal_menu", "1")
	cvar_flashlight_menu = register_cvar("zp_flashlight_personal_menu", "1")
	cvar_hm_red[0] = register_cvar("zp_nvg_hum_color_R", "100")
	cvar_hm_green[0] = register_cvar("zp_nvg_hum_color_G", "100")
	cvar_hm_blue[0] = register_cvar("zp_nvg_hum_color_B", "100")
	cvar_zm_red[NEMESIS] = register_cvar("zp_nem_color_R", "150")
	cvar_zm_green[NEMESIS] = register_cvar("zp_nem_color_G", "0")
	cvar_zm_blue[NEMESIS] = register_cvar("zp_nem_color_B", "0")
	cvar_zm_red[ASSASSIN] = register_cvar("zp_assassin_color_R", "250")
	cvar_zm_green[ASSASSIN] = register_cvar("zp_assassin_color_G", "250")
	cvar_zm_blue[ASSASSIN] = register_cvar("zp_assassin_color_B", "0")
	cvar_zm_red[PREDATOR] = register_cvar("zp_predator_color_R", "250")
	cvar_zm_green[PREDATOR] = register_cvar("zp_predator_color_G", "250")
	cvar_zm_blue[PREDATOR] = register_cvar("zp_predator_color_B", "250")
	cvar_zm_red[BOMBARDIER] = register_cvar("zp_bombardier_color_R", "0")
	cvar_zm_green[BOMBARDIER] = register_cvar("zp_bombardier_color_G", "250")
	cvar_zm_blue[BOMBARDIER] = register_cvar("zp_bombardier_color_B", "0")
	cvar_zm_red[DRAGON] = register_cvar("zp_dragon_color_R", "255")
	cvar_zm_green[DRAGON] = register_cvar("zp_dragon_color_G", "69")
	cvar_zm_blue[DRAGON] = register_cvar("zp_dragon_color_B", "0")
	cvar_customflash = register_cvar("zp_flash_custom", "0")
	cvar_flashsize[0] = register_cvar("zp_flash_size", "10")
	cvar_flashsize[1] = register_cvar("zp_flash_size_assassin", "7")
	cvar_flashdrain = register_cvar("zp_flash_drain", "1")
	cvar_flashcharge = register_cvar("zp_flash_charge", "5")
	cvar_flashdist = register_cvar("zp_flash_distance", "1000")
	cvar_flashcolor[0] = register_cvar("zp_flash_color_R", "100")
	cvar_flashcolor[1] = register_cvar("zp_flash_color_G", "100")
	cvar_flashcolor[2] = register_cvar("zp_flash_color_B", "100")
	cvar_flashcolor2[0] = register_cvar("zp_flash_color_assassin_R", "100")
	cvar_flashcolor2[1] = register_cvar("zp_flash_color_assassin_G", "0")
	cvar_flashcolor2[2] = register_cvar("zp_flash_color_assassin_B", "0")
	cvar_flashshowall = register_cvar("zp_flash_show_all", "1")

	// CVARS - Knockback
	cvar_knockback = register_cvar("zp_knockback", "0")
	cvar_knockbackdamage = register_cvar("zp_knockback_damage", "1")
	cvar_knockbackpower = register_cvar("zp_knockback_power", "1")
	cvar_knockbackzvel = register_cvar("zp_knockback_zvel", "0")
	cvar_knockbackducking = register_cvar("zp_knockback_ducking", "0.25")
	cvar_knockbackdist = register_cvar("zp_knockback_distance", "500")
	cvar_zmsp_knockback[NEMESIS] = register_cvar("zp_knockback_nemesis", "0.25")
	cvar_zmsp_knockback[ASSASSIN] = register_cvar("zp_knockback_assassin", "0.25")
	cvar_zmsp_knockback[PREDATOR] = register_cvar("zp_knockback_predator", "0.25")
	cvar_zmsp_knockback[BOMBARDIER] = register_cvar("zp_knockback_bombardier", "0.25")
	cvar_zmsp_knockback[DRAGON] = register_cvar("zp_knockback_dragon", "0.25")

	// CVARS - Leap
	cvar_leap_zm_allow[0] = register_cvar("zp_leap_zombies", "0")
	cvar_leap_zm_force[0] = register_cvar("zp_leap_zombies_force", "500")
	cvar_leap_zm_height[0] = register_cvar("zp_leap_zombies_height", "300")
	cvar_leap_zm_cooldown[0] = register_cvar("zp_leap_zombies_cooldown", "5.0")
	cvar_leap_zm_allow[NEMESIS] = register_cvar("zp_leap_nemesis", "1")
	cvar_leap_zm_force[NEMESIS] = register_cvar("zp_leap_nemesis_force", "500")
	cvar_leap_zm_height[NEMESIS] = register_cvar("zp_leap_nemesis_height", "300")
	cvar_leap_zm_cooldown[NEMESIS] = register_cvar("zp_leap_nemesis_cooldown", "5.0")
	cvar_leap_hm_allow[SURVIVOR] = register_cvar("zp_leap_survivor", "0")
	cvar_leap_hm_force[SURVIVOR] = register_cvar("zp_leap_survivor_force", "500")
	cvar_leap_hm_height[SURVIVOR] = register_cvar("zp_leap_survivor_height", "300")
	cvar_leap_hm_cooldown[SURVIVOR] = register_cvar("zp_leap_survivor_cooldown", "5.0")
	cvar_leap_hm_allow[SNIPER] = register_cvar("zp_leap_sniper", "0")
	cvar_leap_hm_force[SNIPER] = register_cvar("zp_leap_sniper_force", "500")
	cvar_leap_hm_height[SNIPER] = register_cvar("zp_leap_sniper_height", "300")
	cvar_leap_hm_cooldown[SNIPER] = register_cvar("zp_leap_sniper_cooldown", "5.0")
	cvar_leap_zm_allow[ASSASSIN] = register_cvar("zp_leap_assassin", "0")
	cvar_leap_zm_force[ASSASSIN] = register_cvar("zp_leap_assassin_force", "500")
	cvar_leap_zm_height[ASSASSIN] = register_cvar("zp_leap_assassin_height", "300")
	cvar_leap_zm_cooldown[ASSASSIN] = register_cvar("zp_leap_assassin_cooldown", "5.0")
	cvar_leap_zm_allow[PREDATOR] = register_cvar("zp_leap_predator", "0")
	cvar_leap_zm_force[PREDATOR] = register_cvar("zp_leap_predator_force", "500")
	cvar_leap_zm_height[PREDATOR] = register_cvar("zp_leap_predator_height", "300")
	cvar_leap_zm_cooldown[PREDATOR] = register_cvar("zp_leap_predator_cooldown", "5.0")
	cvar_leap_zm_allow[BOMBARDIER] = register_cvar("zp_leap_bombardier", "0")
	cvar_leap_zm_force[BOMBARDIER] = register_cvar("zp_leap_bombardier_force", "500")
	cvar_leap_zm_height[BOMBARDIER] = register_cvar("zp_leap_bombardier_height", "300")
	cvar_leap_zm_cooldown[BOMBARDIER] = register_cvar("zp_leap_bombardier_cooldown", "5.0")
	cvar_leap_zm_allow[DRAGON] = register_cvar("zp_leap_dragon", "0")
	cvar_leap_zm_force[DRAGON] = register_cvar("zp_leap_dragon_force", "500")
	cvar_leap_zm_height[DRAGON] = register_cvar("zp_leap_dragon_height", "300")
	cvar_leap_zm_cooldown[DRAGON] = register_cvar("zp_leap_dragon_cooldown", "5.0")
	cvar_leap_hm_allow[BERSERKER] = register_cvar("zp_leap_berserker", "0")
	cvar_leap_hm_force[BERSERKER] = register_cvar("zp_leap_berserker_force", "500")
	cvar_leap_hm_height[BERSERKER] = register_cvar("zp_leap_berserker_height", "300")
	cvar_leap_hm_cooldown[BERSERKER] = register_cvar("zp_leap_berserker_cooldown", "5.0")
	cvar_leap_hm_allow[WESKER] = register_cvar("zp_leap_wesker", "0")
	cvar_leap_hm_force[WESKER] = register_cvar("zp_leap_wesker_force", "500")
	cvar_leap_hm_height[WESKER] = register_cvar("zp_leap_wesker_height", "300")
	cvar_leap_hm_cooldown[WESKER] = register_cvar("zp_leap_wesker_cooldown", "5.0")
	cvar_leap_hm_allow[SPY] = register_cvar("zp_leap_spy", "0")
	cvar_leap_hm_force[SPY] = register_cvar("zp_leap_spy_force", "500")
	cvar_leap_hm_height[SPY] = register_cvar("zp_leap_spy_height", "300")
	cvar_leap_hm_cooldown[SPY] = register_cvar("zp_leap_spy_cooldown", "5.0")

	// CVARS - Humans
	cvar_hm_health[0] = register_cvar("zp_human_health", "100")
	cvar_hm_basehp[0] = register_cvar("zp_human_last_extrahp", "0")
	cvar_hm_spd[0] = register_cvar("zp_human_speed", "240")
	cvar_hmgravity[0] = register_cvar("zp_human_gravity", "1.0")
	cvar_humanarmor = register_cvar("zp_human_armor_protect", "1")
	cvar_hm_infammo[0] = register_cvar("zp_human_unlimited_ammo", "0")
	cvar_ammodamage = register_cvar("zp_human_damage_reward", "500")
	cvar_fragskill = register_cvar("zp_human_frags_for_kill", "1")
	cvar_hm_allow_weight_spd = register_cvar("zp_human_wpn_weight_enable", "1")
	cvar_frags_disinfect = register_cvar("zp_human_frags_for_disinfect", "1")
	cvar_ammo_disinfect = register_cvar("zp_human_disnfect_reward", "1")

	// CVARS - Custom Grenades
	cvar_firegrenades = register_cvar("zp_fire_grenades", "1")
	cvar_fireduration = register_cvar("zp_fire_dur", "10")
	cvar_firedamage = register_cvar("zp_fire_damage", "5")
	cvar_fireslowdown = register_cvar("zp_fire_slowdown", "0.5")
	cvar_frostgrenades = register_cvar("zp_frost_grenades", "1")
	cvar_freezeduration = register_cvar("zp_frost_dur", "3")
	cvar_frozenhit = register_cvar("zp_frost_hit", "1")
	cvar_flaregrenades = register_cvar("zp_flare_grenades", "1")
	cvar_flareduration = register_cvar("zp_flare_dur", "60")
	cvar_flaresize[0] = register_cvar("zp_flare_size", "25")
	cvar_flarecolor = register_cvar("zp_flare_color", "5")
	cvar_flaresize[1] = register_cvar("zp_flare_size_assassin", "15")

	// CVARS - Zombies
	cvar_zm_health[0] = register_cvar("zp_zombie_first_hp", "2.0")
	cvar_zombiearmor = register_cvar("zp_zombie_armor", "0.75")
	cvar_hitzones = register_cvar("zp_zombie_hitzones", "0")
	cvar_zm_basehp[0] = register_cvar("zp_zombie_infect_health", "100")
	cvar_zombiefov = register_cvar("zp_zombie_fov", "110")
	cvar_zombiesilent = register_cvar("zp_zombie_silent", "1")
	cvar_zm_painfree[0] = register_cvar("zp_zombie_painfree", "2")
	cvar_zombiebleeding = register_cvar("zp_zombie_bleeding", "1")
	cvar_ammoinfect = register_cvar("zp_zombie_infect_reward", "1")
	cvar_ammodamage_zombie = register_cvar("zp_zombie_damage_reward", "0")
	cvar_fragsinfect = register_cvar("zp_zombie_frags_for_infect", "1")

	cvar_block_zm_use_button = register_cvar("zp_zombie_blockuse_button", "1")
	cvar_zm_idle_sound = register_cvar("zp_zombie_idle_sound", "1")

	// CVARS - Special Effects
	cvar_infectionscreenfade = register_cvar("zp_infection_screenfade", "1")
	cvar_infectionscreenshake = register_cvar("zp_infection_screenshake", "1")
	cvar_infectionsparkle = register_cvar("zp_infection_sparkle", "1")
	cvar_infectiontracers = register_cvar("zp_infection_tracers", "1")
	cvar_infectionparticles = register_cvar("zp_infection_particles", "1")
	cvar_hudicons = register_cvar("zp_hud_icons", "1")
	cvar_sniperfraggore = register_cvar("zp_sniper_frag_gore", "1")
	cvar_nemfraggore = register_cvar("zp_assassin_frag_gore", "1")
	cvar_zm_auraradius = register_cvar("zp_zombies_aura_size", "21")

	// CVARS - Nemesis
	cvar_mod_enable[MODE_NEMESIS] = register_cvar("zp_nem_enabled", "1")
	cvar_mod_chance[MODE_NEMESIS] = register_cvar("zp_nem_chance", "20")
	cvar_mod_minplayers[MODE_NEMESIS] = register_cvar("zp_nem_min_players", "2")
	cvar_zm_health[NEMESIS] = register_cvar("zp_nem_health", "0")
	cvar_zm_basehp[NEMESIS] = register_cvar("zp_nem_base_health", "0")
	cvar_zm_spd[NEMESIS] = register_cvar("zp_nem_speed", "250")
	cvar_zmgravity[NEMESIS] = register_cvar("zp_nem_gravity", "0.5")
	cvar_zm_damage[NEMESIS] = register_cvar("zp_nem_damage", "250")
	cvar_zm_glow[NEMESIS] = register_cvar("zp_nem_glow", "1")
	cvar_zm_aura[NEMESIS] = register_cvar("zp_nem_aura", "1")
	cvar_zm_painfree[NEMESIS] = register_cvar("zp_nem_painfree", "0")
	cvar_zm_ignore_frags[NEMESIS] = register_cvar("zp_nem_ignore_frags", "1")
	cvar_zm_ignore_ammo[NEMESIS] = register_cvar("zp_nem_ignore_rewards", "1")
	cvar_zm_allow_frost[NEMESIS] = register_cvar("zp_nem_allow_frost", "0")
	cvar_zm_allow_burn[NEMESIS] = register_cvar("zp_nem_allow_burn", "0")

	// CVARS - Survivor
	cvar_mod_enable[MODE_SURVIVOR] = register_cvar("zp_surv_enabled", "1")
	cvar_mod_chance[MODE_SURVIVOR] = register_cvar("zp_surv_chance", "20")
	cvar_mod_minplayers[MODE_SURVIVOR] = register_cvar("zp_surv_min_players", "2")
	cvar_hm_health[SURVIVOR] = register_cvar("zp_surv_health", "0")
	cvar_hm_basehp[SURVIVOR] = register_cvar("zp_surv_base_health", "0")
	cvar_hm_spd[SURVIVOR] = register_cvar("zp_surv_speed", "230")
	cvar_hmgravity[SURVIVOR] = register_cvar("zp_surv_gravity", "1.25")
	cvar_hm_glow[SURVIVOR] = register_cvar("zp_surv_glow", "1")
	cvar_hm_aura[SURVIVOR] = register_cvar("zp_surv_aura", "1")
	cvar_hm_damage[SURVIVOR] = register_cvar("zp_surv_damage_multi", "3.0")
	cvar_hm_red[SURVIVOR] = register_cvar("zp_surv_color_R", "0")
	cvar_hm_green[SURVIVOR] = register_cvar("zp_surv_color_G", "250")
	cvar_hm_blue[SURVIVOR] = register_cvar("zp_surv_color_B", "250")
	cvar_hm_painfree[SURVIVOR] = register_cvar("zp_surv_painfree", "1")
	cvar_hm_ignore_frags[SURVIVOR] = register_cvar("zp_surv_ignore_frags", "1")
	cvar_hm_ignore_ammo[SURVIVOR] = register_cvar("zp_surv_ignore_rewards", "1")
	cvar_survweapon = register_cvar("zp_surv_weapon", "weapon_m249")
	cvar_hm_infammo[SURVIVOR] = register_cvar("zp_surv_unlimited_ammo", "2")
	cvar_hm_auraradius[SURVIVOR] =  register_cvar("zp_surv_aura_size", "35")

	// CVARS - Swarm Mode
	cvar_mod_enable[MODE_SWARM] = register_cvar("zp_swarm_enabled", "1")
	cvar_mod_chance[MODE_SWARM] = register_cvar("zp_swarm_chance", "20")
	cvar_mod_minplayers[MODE_SWARM] = register_cvar("zp_swarm_min_players", "2")
	cvar_swarmratio = register_cvar("zp_swarm_ratio", "0.15")

	// CVARS - Multi Infection
	cvar_mod_enable[MODE_MULTI] = register_cvar("zp_multi_enabled", "1")
	cvar_mod_chance[MODE_MULTI] = register_cvar("zp_multi_chance", "20")
	cvar_mod_minplayers[MODE_MULTI] = register_cvar("zp_multi_min_players", "2")
	cvar_multiratio = register_cvar("zp_multi_ratio", "0.15")

	// CVARS - Plague Mode
	cvar_mod_enable[MODE_PLAGUE] = register_cvar("zp_plague_enabled", "1")
	cvar_mod_chance[MODE_PLAGUE] = register_cvar("zp_plague_chance", "30")
	cvar_mod_minplayers[MODE_PLAGUE] = register_cvar("zp_plague_min_players", "2")
	cvar_plagueratio = register_cvar("zp_plague_ratio", "0.5")
	cvar_plaguenemnum = register_cvar("zp_plague_nem_number", "1")
	cvar_plaguenemhpmulti = register_cvar("zp_plague_nem_hp_multi", "0.5")
	cvar_plaguesurvnum = register_cvar("zp_plague_surv_number", "1")
	cvar_plaguesurvhpmulti = register_cvar("zp_plague_surv_hp_multi", "0.5")

	// CVARS - Sniper
	cvar_mod_enable[MODE_SNIPER] = register_cvar("zp_sniper_enabled", "1")
	cvar_mod_chance[MODE_SNIPER] = register_cvar("zp_sniper_chance", "20")
	cvar_mod_minplayers[MODE_SNIPER] = register_cvar("zp_sniper_min_players", "2")
	cvar_hm_health[SNIPER] = register_cvar("zp_sniper_health", "0")
	cvar_hm_basehp[SNIPER] = register_cvar("zp_sniper_base_health", "0")
	cvar_hm_spd[SNIPER] = register_cvar("zp_sniper_speed", "230")
	cvar_hmgravity[SNIPER] = register_cvar("zp_sniper_gravity", "0.75")
	cvar_hm_glow[SNIPER] = register_cvar("zp_sniper_glow", "1")
	cvar_hm_aura[SNIPER] = register_cvar("zp_sniper_aura", "1")
	cvar_hm_painfree[SNIPER] = register_cvar("zp_sniper_painfree", "1")
	cvar_hm_ignore_frags[SNIPER] = register_cvar("zp_sniper_ignore_frags", "1")
	cvar_hm_ignore_ammo[SNIPER] = register_cvar("zp_sniper_ignore_rewards", "1")
	cvar_hm_damage[SNIPER] = register_cvar("zp_sniper_damage", "5000.0")
	cvar_hm_infammo[SNIPER] = register_cvar("zp_sniper_unlimited_ammo", "2")
	cvar_hm_auraradius[SNIPER] = register_cvar("zp_sniper_aura_size", "25")
	cvar_hm_red[SNIPER] = register_cvar("zp_sniper_color_R", "200")
	cvar_hm_green[SNIPER] = register_cvar("zp_sniper_color_G", "200")
	cvar_hm_blue[SNIPER] = register_cvar("zp_sniper_color_B", "0")

	// CVARS - Assassin
	cvar_mod_enable[MODE_ASSASSIN] = register_cvar("zp_assassin_enabled", "1")
	cvar_mod_chance[MODE_ASSASSIN] = register_cvar("zp_assassin_chance", "20")
	cvar_mod_minplayers[MODE_ASSASSIN] = register_cvar("zp_assassin_min_players", "2")
	cvar_zm_health[ASSASSIN] = register_cvar("zp_assassin_health", "0")
	cvar_zm_basehp[ASSASSIN] = register_cvar("zp_assassin_base_health", "0")
	cvar_zm_spd[ASSASSIN] = register_cvar("zp_assassin_speed", "250")
	cvar_zmgravity[ASSASSIN] = register_cvar("zp_assassin_gravity", "0.5")
	cvar_zm_damage[ASSASSIN] = register_cvar("zp_assassin_damage", "250")
	cvar_zm_glow[ASSASSIN] = register_cvar("zp_assassin_glow", "1")
	cvar_zm_aura[ASSASSIN] = register_cvar("zp_assassin_aura", "1")
	cvar_zm_painfree[ASSASSIN] = register_cvar("zp_assassin_painfree", "0")
	cvar_zm_ignore_frags[ASSASSIN] = register_cvar("zp_assassin_ignore_frags", "1")
	cvar_zm_ignore_ammo[ASSASSIN] = register_cvar("zp_assassin_ignore_rewards", "1")
	cvar_zm_allow_frost[ASSASSIN] = register_cvar("zp_assassin_allow_frost", "0")
	cvar_zm_allow_burn[ASSASSIN] = register_cvar("zp_assassin_allow_burn", "0")

	// CVARS - Predator
	cvar_mod_enable[MODE_PREDATOR] = register_cvar("zp_predator_enabled", "1")
	cvar_mod_chance[MODE_PREDATOR] = register_cvar("zp_predator_chance", "20")
	cvar_mod_minplayers[MODE_PREDATOR] = register_cvar("zp_predator_min_players", "2")
	cvar_zm_health[PREDATOR] = register_cvar("zp_predator_health", "0")
	cvar_zm_basehp[PREDATOR] = register_cvar("zp_predator_base_health", "0")
	cvar_zm_spd[PREDATOR] = register_cvar("zp_predator_speed", "250")
	cvar_zmgravity[PREDATOR] = register_cvar("zp_predator_gravity", "0.5")
	cvar_zm_damage[PREDATOR] = register_cvar("zp_predator_damage", "250")
	cvar_zm_glow[PREDATOR] = register_cvar("zp_predator_glow", "0")
	cvar_zm_aura[PREDATOR] = register_cvar("zp_predator_aura", "0")
	cvar_zm_painfree[PREDATOR] = register_cvar("zp_predator_painfree", "0")
	cvar_zm_ignore_frags[PREDATOR] = register_cvar("zp_predator_ignore_frags", "1")
	cvar_zm_ignore_ammo[PREDATOR] = register_cvar("zp_predator_ignore_rewards", "1")
	cvar_zm_allow_frost[PREDATOR] = register_cvar("zp_predator_allow_frost", "0")
	cvar_zm_allow_burn[PREDATOR] = register_cvar("zp_predator_allow_burn", "0")

	// CVARS - Bombardier
	cvar_mod_enable[MODE_BOMBARDIER] = register_cvar("zp_bombardier_enabled", "1")
	cvar_mod_chance[MODE_BOMBARDIER] = register_cvar("zp_bombardier_chance", "20")
	cvar_mod_minplayers[MODE_BOMBARDIER] = register_cvar("zp_bombardier_min_players", "2")
	cvar_zm_health[BOMBARDIER] = register_cvar("zp_bombardier_health", "0")
	cvar_zm_basehp[BOMBARDIER] = register_cvar("zp_bombardier_base_health", "0")
	cvar_zm_spd[BOMBARDIER] = register_cvar("zp_bombardier_speed", "250")
	cvar_zmgravity[BOMBARDIER] = register_cvar("zp_bombardier_gravity", "0.5")
	cvar_zm_damage[BOMBARDIER] = register_cvar("zp_bombardier_damage", "250")
	cvar_zm_glow[BOMBARDIER] = register_cvar("zp_bombardier_glow", "1")
	cvar_zm_aura[BOMBARDIER] = register_cvar("zp_bombardier_aura", "1")
	cvar_zm_painfree[BOMBARDIER] = register_cvar("zp_bombardier_painfree", "0")
	cvar_zm_ignore_frags[BOMBARDIER] = register_cvar("zp_bombardier_ignore_frags", "1")
	cvar_zm_ignore_ammo[BOMBARDIER] = register_cvar("zp_bombardier_ignore_rewards", "1")
	cvar_zm_allow_frost[BOMBARDIER] = register_cvar("zp_bombardier_allow_frost", "0")
	cvar_zm_allow_burn[BOMBARDIER] = register_cvar("zp_bombardier_allow_burn", "0")

	// CVARS - Dragon
	cvar_mod_enable[MODE_DRAGON] = register_cvar("zp_dragon_enabled", "1")
	cvar_mod_chance[MODE_DRAGON] = register_cvar("zp_dragon_chance", "20")
	cvar_mod_minplayers[MODE_DRAGON] = register_cvar("zp_dragon_min_players", "2")
	cvar_zm_health[DRAGON] = register_cvar("zp_dragon_health", "0")
	cvar_zm_basehp[DRAGON] = register_cvar("zp_dragon_base_health", "0")
	cvar_zm_spd[DRAGON] = register_cvar("zp_dragon_speed", "250")
	cvar_zmgravity[DRAGON] = register_cvar("zp_dragon_gravity", "0.5")
	cvar_zm_damage[DRAGON] = register_cvar("zp_dragon_damage", "250")
	cvar_zm_glow[DRAGON] = register_cvar("zp_dragon_glow", "1")
	cvar_zm_aura[DRAGON] = register_cvar("zp_dragon_aura", "1")
	cvar_zm_painfree[DRAGON] = register_cvar("zp_dragon_painfree", "0")
	cvar_zm_ignore_frags[DRAGON] = register_cvar("zp_dragon_ignore_frags", "1")
	cvar_zm_ignore_ammo[DRAGON] = register_cvar("zp_dragon_ignore_rewards", "1")
	cvar_dragon_flyspped = register_cvar("zp_dragon_fly_speed", "300")
	cvar_dragon_power_distance = register_cvar("zp_dragon_power_distance", "1000")
	cvar_dragon_power_cooldown = register_cvar("zp_dragon_power_cooldown", "10.0")
	cvar_zm_allow_frost[DRAGON] = register_cvar("zp_dragon_allow_frost", "0")
	cvar_zm_allow_burn[DRAGON] = register_cvar("zp_dragon_allow_burn", "0")

	// CVARS - Berserker
	cvar_mod_enable[MODE_BERSERKER] = register_cvar("zp_berserker_enabled", "1")
	cvar_mod_chance[MODE_BERSERKER] = register_cvar("zp_berserker_chance", "20")
	cvar_mod_minplayers[MODE_BERSERKER] = register_cvar("zp_berserker_min_players", "2")
	cvar_hm_health[BERSERKER] = register_cvar("zp_berserker_health", "0")
	cvar_hm_basehp[BERSERKER] = register_cvar("zp_berserker_base_health", "0")
	cvar_hm_spd[BERSERKER] = register_cvar("zp_berserker_speed", "230")
	cvar_hmgravity[BERSERKER] = register_cvar("zp_berserker_gravity", "0.75")
	cvar_hm_glow[BERSERKER] = register_cvar("zp_berserker_glow", "1")
	cvar_hm_aura[BERSERKER] = register_cvar("zp_berserker_aura", "1")
	cvar_hm_painfree[BERSERKER] = register_cvar("zp_berserker_painfree", "1")
	cvar_hm_ignore_frags[BERSERKER] = register_cvar("zp_berserker_ignore_frags", "1")
	cvar_hm_ignore_ammo[BERSERKER] = register_cvar("zp_berserker_ignore_rewards", "1")
	cvar_hm_damage[BERSERKER] = register_cvar("zp_berserker_damage", "5000.0")
	cvar_hm_auraradius[BERSERKER] = register_cvar("zp_berserker_aura_size", "25")
	cvar_hm_red[BERSERKER] = register_cvar("zp_berserker_color_R", "200")
	cvar_hm_green[BERSERKER] = register_cvar("zp_berserker_color_G", "200")
	cvar_hm_blue[BERSERKER] = register_cvar("zp_berserker_color_B", "0")

	// CVARS - Wesker
	cvar_mod_enable[MODE_WESKER] = register_cvar("zp_wesker_enabled", "1")
	cvar_mod_chance[MODE_WESKER] = register_cvar("zp_wesker_chance", "20")
	cvar_mod_minplayers[MODE_WESKER] = register_cvar("zp_wesker_min_players", "2")
	cvar_hm_health[WESKER] = register_cvar("zp_wesker_health", "0")
	cvar_hm_basehp[WESKER] = register_cvar("zp_wesker_base_health", "0")
	cvar_hm_spd[WESKER] = register_cvar("zp_wesker_speed", "230")
	cvar_hmgravity[WESKER] = register_cvar("zp_wesker_gravity", "0.75")
	cvar_hm_glow[WESKER] = register_cvar("zp_wesker_glow", "1")
	cvar_hm_aura[WESKER] = register_cvar("zp_wesker_aura", "1")
	cvar_hm_painfree[WESKER] = register_cvar("zp_wesker_painfree", "1")
	cvar_hm_ignore_frags[WESKER] = register_cvar("zp_wesker_ignore_frags", "1")
	cvar_hm_ignore_ammo[WESKER] = register_cvar("zp_wesker_ignore_rewards", "1")
	cvar_hm_damage[WESKER] = register_cvar("zp_wesker_damage_multi", "6.0")
	cvar_hm_auraradius[WESKER] = register_cvar("zp_wesker_aura_size", "25")
	cvar_hm_infammo[WESKER] = register_cvar("zp_wesker_unlimited_ammo", "2")
	cvar_hm_red[WESKER] = register_cvar("zp_wesker_color_R", "200")
	cvar_hm_green[WESKER] = register_cvar("zp_wesker_color_G", "200")
	cvar_hm_blue[WESKER] = register_cvar("zp_wesker_color_B", "0")

	// CVARS - Spy
	cvar_mod_enable[MODE_SPY] = register_cvar("zp_spy_enabled", "1")
	cvar_mod_chance[MODE_SPY] = register_cvar("zp_spy_chance", "20")
	cvar_mod_minplayers[MODE_SPY] = register_cvar("zp_spy_min_players", "2")
	cvar_hm_health[SPY] = register_cvar("zp_spy_health", "0")
	cvar_hm_basehp[SPY] = register_cvar("zp_spy_base_health", "0")
	cvar_hm_spd[SPY] = register_cvar("zp_spy_speed", "230")
	cvar_hmgravity[SPY] = register_cvar("zp_spy_gravity", "0.75")
	cvar_hm_glow[SPY] = register_cvar("zp_spy_glow", "0")
	cvar_hm_aura[SPY] = register_cvar("zp_spy_aura", "1")
	cvar_hm_painfree[SPY] = register_cvar("zp_spy_painfree", "1")
	cvar_hm_ignore_frags[SPY] = register_cvar("zp_spy_ignore_frags", "1")
	cvar_hm_ignore_ammo[SPY] = register_cvar("zp_spy_ignore_rewards", "1")
	cvar_hm_damage[SPY] = register_cvar("zp_spy_damage_multi", "6.0")
	cvar_hm_auraradius[SPY] = register_cvar("zp_spy_aura_size", "15")
	cvar_hm_infammo[SPY] = register_cvar("zp_spy_unlimited_ammo", "2")
	cvar_hm_red[SPY] = register_cvar("zp_spy_color_R", "0")
	cvar_hm_green[SPY] = register_cvar("zp_spy_color_G", "0")
	cvar_hm_blue[SPY] = register_cvar("zp_spy_color_B", "250")

	// CVARS - LNJ Mode
	cvar_mod_enable[MODE_LNJ] = register_cvar("zp_lnj_enabled", "1")
	cvar_mod_chance[MODE_LNJ] = register_cvar("zp_lnj_chance", "30")
	cvar_mod_minplayers[MODE_LNJ] = register_cvar("zp_lnj_min_players", "2")
	cvar_lnjnemhpmulti = register_cvar("zp_lnj_nem_hp_multi", "2.0")
	cvar_lnjsurvhpmulti = register_cvar("zp_lnj_surv_hp_multi", "4.0")
	cvar_lnjratio = register_cvar("zp_lnj_ratio", "0.5")

	// CVARS - Others
	cvar_logcommands = register_cvar("zp_logcommands", "1")
	cvar_showactivity = get_cvar_pointer("amx_show_activity")
	register_cvar("zombie_plague_special", VERSION, FCVAR_SERVER|FCVAR_SPONLY)
	set_cvar_string("zombie_plague_special", VERSION)

	// Custom Forwards
	g_forwards[ROUND_START] = CreateMultiForward("zp_round_started", ET_IGNORE, FP_CELL, FP_CELL)
	g_forwards[ROUND_START_PRE] = CreateMultiForward("zp_round_started_pre", ET_CONTINUE, FP_CELL)
	g_forwards[ROUND_END] = CreateMultiForward("zp_round_ended", ET_IGNORE, FP_CELL)
	g_forwards[INFECTED_PRE] = CreateMultiForward("zp_user_infected_pre", ET_IGNORE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[INFECTED_POST] = CreateMultiForward("zp_user_infected_post", ET_IGNORE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[HUMANIZED_PRE] = CreateMultiForward("zp_user_humanized_pre", ET_IGNORE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[HUMANIZED_POST] = CreateMultiForward("zp_user_humanized_post", ET_IGNORE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[INFECT_ATTEMP] = CreateMultiForward("zp_user_infect_attempt", ET_CONTINUE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[HUMANIZE_ATTEMP] = CreateMultiForward("zp_user_humanize_attempt", ET_CONTINUE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[ITEM_SELECTED_POST] = CreateMultiForward("zp_extra_item_selected", ET_CONTINUE, FP_CELL, FP_CELL)
	g_forwards[USER_UNFROZEN] = CreateMultiForward("zp_user_unfrozen", ET_IGNORE, FP_CELL)
	g_forwards[USER_LAST_ZOMBIE] = CreateMultiForward("zp_user_last_zombie", ET_IGNORE, FP_CELL)
	g_forwards[USER_LAST_HUMAN] = CreateMultiForward("zp_user_last_human", ET_IGNORE, FP_CELL)
	g_forwards[GAME_MODE_SELECTED] = CreateMultiForward("zp_game_mode_selected", ET_IGNORE, FP_CELL, FP_CELL)
	g_forwards[PLAYER_SPAWN_POST] = CreateMultiForward("zp_player_spawn_post", ET_IGNORE, FP_CELL)

	// New Forwards
	g_forwards[FROZEN_PRE] = CreateMultiForward("zp_user_frozen_pre", ET_CONTINUE, FP_CELL)
	g_forwards[FROZEN_POST] = CreateMultiForward("zp_user_frozen_post", ET_IGNORE, FP_CELL)
	g_forwards[BURN_PRE] = CreateMultiForward("zp_user_burn_pre", ET_CONTINUE, FP_CELL)
	g_forwards[BURN_POST] = CreateMultiForward("zp_user_burn_post", ET_IGNORE, FP_CELL)
	g_forwards[ITEM_SELECTED_PRE] = CreateMultiForward("zp_extra_item_selected_pre", ET_CONTINUE, FP_CELL, FP_CELL)
	g_forwards[CLASS_CHOOSED_PRE] = CreateMultiForward("zp_zombie_class_choosed_pre", ET_CONTINUE, FP_CELL, FP_CELL)
	g_forwards[CLASS_CHOOSED_POST] = CreateMultiForward("zp_zombie_class_choosed_post", ET_IGNORE, FP_CELL, FP_CELL)

	// New Forwards (4.0 or Higher)
	g_forwards[RESET_RENDERING_PRE] = CreateMultiForward("zp_user_rendering_reset_pre", ET_CONTINUE, FP_CELL)
	g_forwards[RESET_RENDERING_POST] = CreateMultiForward("zp_user_rendering_reset_post", ET_IGNORE, FP_CELL)
	g_forwards[MODEL_CHANGE_PRE] = CreateMultiForward("zp_user_model_change_pre", ET_CONTINUE, FP_CELL, FP_STRING, FP_CELL, FP_CELL)
	g_forwards[MODEL_CHANGE_POST] = CreateMultiForward("zp_user_model_change_post", ET_IGNORE, FP_CELL, FP_STRING, FP_CELL, FP_CELL)
	g_forwards[HM_SP_CHOSSED_PRE] = CreateMultiForward("zp_human_special_choosed_pre", ET_CONTINUE, FP_CELL, FP_CELL)
	g_forwards[HM_SP_CHOSSED_POST] = CreateMultiForward("zp_human_special_choosed_post", ET_IGNORE, FP_CELL, FP_CELL)
	g_forwards[ZM_SP_CHOSSED_PRE] = CreateMultiForward("zp_zombie_special_choosed_pre", ET_CONTINUE, FP_CELL, FP_CELL)
	g_forwards[ZM_SP_CHOSSED_POST] = CreateMultiForward("zp_zombie_special_choosed_post", ET_IGNORE, FP_CELL, FP_CELL)
	g_forwards[GM_SELECTED_PRE] = CreateMultiForward("zp_game_mode_selected_pre", ET_CONTINUE, FP_CELL, FP_CELL)

	// New Forwards (4.2 or Higher)
	g_forwards[INFECTED_BY_BOMB_PRE] = CreateMultiForward("zp_infected_by_bomb_pre", ET_CONTINUE, FP_CELL, FP_CELL)
	g_forwards[INFECTED_BY_BOMB_POST] = CreateMultiForward("zp_infected_by_bomb_post", ET_IGNORE, FP_CELL, FP_CELL)
	g_forwards[UNSTUCK_PRE] = CreateMultiForward("zp_user_unstuck_pre", ET_CONTINUE, FP_CELL)
	g_forwards[UNSTUCK_POST] = CreateMultiForward("zp_user_unstuck_post", ET_IGNORE, FP_CELL)
	g_forwards[WEAPON_SELECTED_PRE] = CreateMultiForward("zp_weapon_selected_pre", ET_CONTINUE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[WEAPON_SELECTED_POST] = CreateMultiForward("zp_weapon_selected_post", ET_IGNORE, FP_CELL, FP_CELL, FP_CELL)

	// New forwards (4.5 or higher)
	g_forwards[H_CLASS_CHOOSED_PRE] = CreateMultiForward("zp_human_class_choosed_pre", ET_CONTINUE, FP_CELL, FP_CELL)
	g_forwards[H_CLASS_CHOOSED_POST] = CreateMultiForward("zp_human_class_choosed_post", ET_IGNORE, FP_CELL, FP_CELL)
	g_forwards[PLAYER_SHOW_HUD] = CreateMultiForward("zp_player_show_hud", ET_CONTINUE, FP_CELL, FP_CELL, FP_CELL)
	g_forwards[PLAY_SOUND] = CreateMultiForward("zp_fw_sound_play", ET_CONTINUE, FP_STRING, FP_CELL);
	g_forwards[STOP_SOUND] = CreateMultiForward("zp_fw_sound_stop", ET_CONTINUE);
	g_forwards[DEPLOY_WEAPON] = CreateMultiForward("zp_fw_deploy_weapon", ET_CONTINUE, FP_CELL, FP_CELL);

	load_spawns() // Collect random spawn points

	if(g_sky_enable) { // Set a random skybox?
		static sky[32]; ArrayGetString(g_sky_names, random_num(0, ArraySize(g_sky_names) - 1), sky, charsmax(sky))
		set_cvar_string("sv_skyname", sky)
	}

	// Disable sky lighting so it doesn't mess with our custom lighting
	set_cvar_num("sv_skycolor_r", 0)
	set_cvar_num("sv_skycolor_g", 0)
	set_cvar_num("sv_skycolor_b", 0)

	// Create the HUD Sync Objects
	for(new i = 0; i <= 2; i++) g_MsgSync[i] = CreateHudSyncObj()

	db_slot_i = MaxClients+1 // Reserved saving slots starts on maxplayers+1

	// Check if it's a CZ server
	static mymod[6]; get_modname(mymod, charsmax(mymod))
	if(equal(mymod, "czero")) g_czero = 1
}
public plugin_cfg() {
	static cfgdir[32]; get_configsdir(cfgdir, charsmax(cfgdir)) // Get configs dir
	server_cmd("exec %s/%s", cfgdir, ZP_CFG_FILE) // Execute .cfg config file

	g_arrays_created = false // Prevent any more stuff from registering

	set_task(5.0, "lighting_effects", _, _, _, "b") // Lighting task
	set_task(0.5, "cache_cvars")
	set_task(0.5, "event_round_start") // Cache CVARs after configs are loaded / call roundstart manually
	set_task(0.5, "logevent_round_start")
}

/*================================================================================
 [Main Events]
=================================================================================*/
public event_round_start() { // Event Round Start
	set_task(0.1, "remove_stuff") // Remove doors/lights?

	// New round starting
	g_newround = true
	g_endround = false
	g_modestarted = false
	g_allowinfection = false
	g_currentmode = MODE_NONE // No present mode in progress ?

	g_infbombcounter = 0
	g_antidotecounter = 0 // Reset bought infection bombs counter
	g_madnesscounter = 0

	g_freezetime = true // Freezetime begins
	custom_lighting[0] = 0
	g_custom_light = false
	lighting_effects()

	// Reset Respawn Limit
	for(new i = 1; i <= MaxClients; i++)
		g_respawn_count[i] = 0

	remove_task(TASK_WELCOMEMSG)
	set_task(2.0, "welcome_msg", TASK_WELCOMEMSG) // Show welcome message and T-Virus notice

	remove_task(TASK_MAKEZOMBIE) // Set a new "Make Zombie Task"
	set_task(2.0 + get_pcvar_float(cvar_warmup), "make_zombie_task", TASK_MAKEZOMBIE)
}
public logevent_round_start() {
	g_freezetime = false // Freezetime ends
}

public logevent_round_end() { // Log Event Round End
	// Prevent this from getting called twice when restarting (bugfix)
	static Float:lastendtime, Float:current_time, id
	current_time = get_gametime()
	if(current_time - lastendtime < 0.5) return;
	lastendtime = current_time

	if(get_pcvar_num(cvar_chosse_instantanly[0]) || get_pcvar_num(cvar_chosse_instantanly[1])) {
		for(id = 1; id <= MaxClients; id++) {
			g_choosed_zclass[id] = false
			g_choosed_hclass[id] = false
		}
	}
	if(get_pcvar_num(cvar_statssave)) { // Temporarily save player stats?
		static team
		for(id = 1; id <= MaxClients; id++) {
			if(!g_isconnected[id]) continue;

			team = fm_cs_get_user_team(id)

			if(team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED) continue; // Not playing

			save_stats(id)
		}
	}

	g_endround = true // Round ended
	g_allowinfection = false // No infection allowed
	g_currentmode = MODE_NONE // No current mode is bieng played

	remove_task(TASK_WELCOMEMSG)
	remove_task(TASK_MAKEZOMBIE) // Stop old tasks (if any)
	ambience_sound_stop()

	// Show HUD notice, play win sound, update team scores...
	static sound[64], Array:Sound_WinTeam, Win_Team_Color[3], Win_Team_MSG[250], Win_Team_Index, HM_Index, ZM_Index;
	HM_Index = GetTeamIndex(TEAM_HUMAN)
	ZM_Index = GetTeamIndex(TEAM_ZOMBIE)

	if(!fnGetZombies()) { // Human team wins
		Sound_WinTeam = sound_win_humans;
		Win_Team_Color = {0, 0, 200};
		Win_Team_MSG = "WIN_HUMAN";
		Win_Team_Index = HM_Index;
	}
	else if(!fnGetHumans()) { // Zombie team wins
		Sound_WinTeam = sound_win_zombies;
		Win_Team_Color = {200, 0, 0};
		Win_Team_MSG = "WIN_ZOMBIE";
		Win_Team_Index = ZM_Index;
	}
	else if(get_pcvar_num(cvar_humansurvive) && !g_escape_map) { // Humans survived the plague
		Sound_WinTeam = sound_win_humans;
		Win_Team_Color = {0, 0, 200};
		Win_Team_MSG = "WIN_HUMAN_SURVIVE";
		Win_Team_Index = HM_Index;
	}
	else if(get_pcvar_num(cvar_zombieescapefail) && g_escape_map) { // Zombie team wins if human not escape before time ends
		Sound_WinTeam = sound_win_zombies;
		Win_Team_Color = {200, 0, 0};
		Win_Team_MSG = "WIN_ZOMBIE_ESCAPE_FAIL";
		Win_Team_Index = ZM_Index;
	}
	else { // No one wins
		Sound_WinTeam = sound_win_no_one;
		Win_Team_Color = {0, 200, 0};
		Win_Team_MSG = "WIN_NO_ONE";
		Win_Team_Index = ZP_TEAM_NO_ONE;
	}

	set_hudmessage(Win_Team_Color[0], Win_Team_Color[1], Win_Team_Color[2], HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 3.0, 2.0, 1.0, -1);
	ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, Win_Team_MSG);
	if(g_enable_end_round_sounds) { // Play win sound and increase score
		ArrayGetString(Sound_WinTeam, random_num(0, ArraySize(Sound_WinTeam) - 1), sound, charsmax(sound));
		PlaySound(sound);
	}
	if(!g_gamecommencing) {
		if(Win_Team_Index == HM_Index)
			g_scorehumans++;
		else if(Win_Team_Index == ZM_Index)
			g_scorezombies++;
	}
	ExecuteForward(g_forwards[ROUND_END], g_fwDummyResult, Win_Team_Index); // Round end forward
	g_gamecommencing = false; // Game commencing triggers round end
	balance_teams(); // Balance the teams
}
// Event Map Ended
public event_intermission() remove_task(TASK_AMBIENCESOUNDS); // Remove ambience sounds task

public event_ammo_x(id) { // BP Ammo update
	if(!is_user_valid_connected(id))
		return;

	if(g_zombie[id])
		return; // Humans only

	static type; type = read_data(1) // Get ammo type
	if(type >= sizeof AMMOWEAPON) return; // Unknown ammo type

	static weapon; weapon = AMMOWEAPON[type]; // Get weapon's id
	if(MAXBPAMMO[weapon] <= 2) return; // Primary and secondary only

	static amount; amount = read_data(2) // Get ammo amount

	if(g_infammo[id]) { // Unlimited BP Ammo?
		if(amount < MAXBPAMMO[weapon]) {
			static args[1]; args[0] = weapon
			set_task(0.1, "refill_bpammo", id, args, sizeof args)
		}
	}
	if(g_isbot[id] && amount <= BUYAMMO[weapon]) set_task(0.1, "clcmd_buyammo", id) // Bots automatically buy ammo when needed
}

/*================================================================================
 [Main Forwards]
=================================================================================*/
public fw_Spawn(entity) { // Entity Spawn Forward
	if(!pev_valid(entity)) return FMRES_IGNORED;

	static classname[32], objective[32], size, i;
	size = ArraySize(g_objective_ents)
	pev(entity, pev_classname, classname, charsmax(classname))

	for(i = 0; i < size; i++) { // Check whether it needs to be removed
		ArrayGetString(g_objective_ents, i, objective, charsmax(objective))
		if(equal(classname, objective)) {
			engfunc(EngFunc_RemoveEntity, entity)
			return FMRES_SUPERCEDE;
		}
	}
	return FMRES_IGNORED;
}

public fw_PrecacheSound(const sound[]) { // Sound Precache Forward
	if(equal(sound, "hostage", 7)) return FMRES_SUPERCEDE; // Block all those unneeeded hostage sounds

	return FMRES_IGNORED;
}

public fw_PlayerSpawn_Post(id) { // Ham Player Spawn Post Forward
	if(!is_user_valid_connected(id))
		return HAM_IGNORED;

	if(!is_user_alive(id) || !fm_cs_get_user_team(id))
		return HAM_IGNORED;

	g_isalive[id] = true // Player spawned

	remove_task(id+TASK_SPAWN)
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)
	remove_task(id+TASK_CHARGE)
	remove_task(id+TASK_FLASH)
	remove_task(id+TASK_NVISION)

	if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id); // Spawn at a random location?
	if(get_pcvar_num(cvar_removemoney)) set_task(0.4, "task_hide_money", id+TASK_SPAWN); // Hide money?

	// Respawn player if he dies because of a worldspawn kill?
	if(get_pcvar_num(cvar_respawnworldspawnkill)) set_task(2.0, "respawn_player_check_task", id+TASK_SPAWN)

	if(!g_newround) { // Check whether to transform the player before spawning
		if(g_respawn_as_zombie[id]) { // Respawn as a zombie ?
			reset_vars(id, 0) // Reset player vars
			if(g_currentmode == MODE_LNJ && get_pcvar_num(cvar_lnjrespnem)) { // Respawn as a nemesis on LNJ round ?
				zombieme(id, 0, NEMESIS, 0, 0) // Make him nemesis right away
				fm_set_user_health(id, floatround(get_pcvar_float(cvar_lnjnemhpmulti) * fm_get_user_health(id))) // Apply the nemesis health multiplier
			}
			else zombieme(id, 0, 0, 0, 0); // Make him zombie right away
		}
		else reset_vars(id, 0); // Reset player vars

		if(g_zombie[id]) { // Execute our player spawn post forward
			ExecuteForward(g_forwards[PLAYER_SPAWN_POST], g_fwDummyResult, id);
			return HAM_IGNORED;
		}
	}

	reset_vars(id, 0) // Reset player vars
	g_buytime[id] = get_gametime()

	if(!g_hm_special[id] && g_hclass_i) {
		set_hclass_attributes(id)
	}
	else {
		fm_set_user_health(id, get_pcvar_num(cvar_hm_health[g_hm_special[id]]))
		set_pev(id, pev_gravity, get_pcvar_float(cvar_hmgravity[g_hm_special[id]]))
		g_infammo[id] = get_pcvar_num(cvar_hm_infammo[0])

		if(get_pcvar_num(cvar_buycustom) && !g_hm_special[id])
			set_task(0.2, "menu_buy_show", id+TASK_SPAWN)
	}


	if(!g_zombie[id]) { // Give nvision for humans ?
		static enable; enable = 0
		if(isCustomSpecialHuman(id))
			enable = ArrayGetCell(g_hm_sp_nvision, g_hm_special[id])
		else
			enable = get_pcvar_num(cvar_hm_nvggive[g_hm_special[id]])

		if(enable) {
			g_nvision[id] = true
			if(!g_isbot[id]) {
				if(enable == 1) { // Turn on Night Vision automatically?
					g_nvisionenabled[id] = true
					user_nightvision(id, 1)
				}
				else nvision_toggle_off(id)
			}
			else cs_set_user_nvg(id, 1); // turn on NVG for bots
		}
		else if(g_nvision[id]) { // Disable nightvision when turning into human/survivor (bugfix)
			nvision_toggle_off(id)
			g_nvision[id] = false
		}
	}
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id) // Set human maxspeed

	// Switch to CT if spawning mid-round
	if(!g_newround && fm_cs_get_user_team(id) != FM_CS_TEAM_CT) { // need to change team?
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_CT)
		fm_user_team_update(id)
	}

	reset_player_models(id)
	reset_user_rendering(id)

	if(g_isbot[id]) { // Bots stuff
		cs_set_user_nvg(id, 0) // Turn off NVG for bots

		if(get_pcvar_num(cvar_extraitems) && get_pcvar_num(cvar_bot_maxitem) > 0) { // Automatically buy extra items/weapons after first zombie is chosen
			g_bot_extra_count[id] = 0
			set_task(get_pcvar_float(cvar_bot_buyitem_interval) + g_newround ? get_pcvar_float(cvar_warmup) : 0.0, "bot_buy_extras", id+TASK_SPAWN)
		}
	}

	if(!g_newround && get_pcvar_float(cvar_spawnprotection) > 0.0) { // Enable spawn protection for humans spawning mid-round
		g_nodamage[id] = true // Do not take damage
		set_pev(id, pev_takedamage, DAMAGE_NO)
		set_pev(id, pev_effects, pev(id, pev_effects) | EF_NODRAW) // Make temporarily invisible
		set_task(get_pcvar_float(cvar_spawnprotection), "remove_spawn_protection", id+TASK_SPAWN) // Set task to remove it
	}

	turn_off_flashlight(id) // Turn off his flashlight (prevents double flashlight bug/exploit)
	if(g_cached_customflash) set_task(1.0, "flashlight_charge", id+TASK_CHARGE, _, _, "b") // Set the flashlight charge task to update battery status

	if(g_currentmode == MODE_LNJ && get_pcvar_num(cvar_lnjrespsurv)) { // Respawn as a survivor on LNJ round ?
		humanme(id, SURVIVOR, 0, 0) // Make him survivor right away
		fm_set_user_health(id, floatround(get_pcvar_float(cvar_lnjsurvhpmulti) * fm_get_user_health(id))) // Apply the survivor health multiplier
	}

	// Replace weapon models (bugfix)
	static weapon_ent, weaponid; weapon_ent = fm_cs_get_current_weapon_ent(id)
	if(pev_valid(weapon_ent)) {
		weaponid = cs_get_weapon_id(weapon_ent)
		replace_weapon_models(id, weaponid)
		ExecuteForward(g_forwards[DEPLOY_WEAPON], g_fwDummyResult, id, weaponid);
	}

	fnCheckLastZombie() // Last Zombie Check
	ExecuteForward(g_forwards[PLAYER_SPAWN_POST], g_fwDummyResult, id); // Execute our player spawn post forward

	return HAM_IGNORED;
}
public fw_PlayerKilled(victim, attacker, shouldgib) { // Ham Player Killed Forward
	g_isalive[victim] = false // Player killed
	g_nodamage[victim] = false // Disable nodamage mode after we die to prevent spectator nightvision using zombie madness colors bug

	set_task(0.1, "spec_nvision", victim) // Enable dead players nightvision

	if(isDefaultSpecialZombie(victim) || isDefaultZombie(victim) || isDefaultSpecialHuman(victim) || isDefaultHuman(victim)) {

		// Disable nightvision when killed (bugfix)
		if(get_pcvar_num(g_zombie[victim] ? cvar_zm_nvggive[g_zm_special[victim]] : cvar_hm_nvggive[g_hm_special[victim]]) == 0 && g_nvision[victim]) {
			nvision_toggle_off(victim)
			g_nvision[victim] = false
		}

		// Turn off nightvision when killed (bugfix)
		if(get_pcvar_num(g_zombie[victim] ? cvar_zm_nvggive[g_zm_special[victim]] : cvar_hm_nvggive[g_hm_special[victim]]) == 2 && g_nvision[victim] && g_nvisionenabled[victim])
			nvision_toggle_off(victim)
	}
	else {
		if(g_nvision[victim] && (g_zombie[victim] && ArrayGetCell(g_zm_sp_nvision, g_zm_special[victim]-MAX_SPECIALS_ZOMBIES) == 0
		|| !g_zombie[victim] && ArrayGetCell(g_hm_sp_nvision, g_hm_special[victim]-MAX_SPECIALS_HUMANS) == 0)) {
			nvision_toggle_off(victim)
			g_nvision[victim] = false
		}
		if(g_nvision[victim] && g_nvisionenabled[victim] && (g_zombie[victim] && ArrayGetCell(g_zm_sp_nvision, g_zm_special[victim]-MAX_SPECIALS_ZOMBIES) == 2
		|| !g_zombie[victim] && ArrayGetCell(g_hm_sp_nvision, g_hm_special[victim]-MAX_SPECIALS_HUMANS) == 2))
			nvision_toggle_off(victim)
	}
	if(g_cached_customflash) { // Turn off custom flashlight when killed
		g_flashlight[victim] = false	// Turn it off
		g_flashbattery[victim] = 100
		remove_task(victim+TASK_CHARGE) // Remove previous tasks
		remove_task(victim+TASK_FLASH)
	}
	if(g_zombie[victim] || g_hm_special[victim] > 0) { // Stop bleeding/burning/aura when killed
		remove_task(victim+TASK_BLOOD)
		remove_task(victim+TASK_AURA)
	}
	if(is_user_valid_connected(attacker)) { // Nemesis and Assassin explode! or when killed by a Assassin victim is cut in pieces
		if(g_zm_special[victim] > 0 || g_zm_special[attacker] == ASSASSIN && get_pcvar_num(cvar_nemfraggore)) {
			SetHamParamInteger(3, 2)
			if(g_zm_special[victim] > 0) {
				static Array:DeathSnd, sound[64];
				if(ArrayGetCell(g_zm_sp_use_deathsnd, g_zm_special[victim]-1))
					DeathSnd = ArrayGetCell(g_zm_sp_deathsnd_handle, g_zm_special[victim]-1)
				else
					DeathSnd = ar_sound[1];

				ArrayGetString(DeathSnd, random_num(0, ArraySize(DeathSnd)-1), sound, charsmax(sound))
				emit_sound(victim, CHAN_STATIC, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
			}
		}
	}
	static selfkill // Get deathmatch mode status and whether the player killed himself
	selfkill = (victim == attacker || !is_user_valid_connected(attacker)) ? true : false

	if(selfkill) return; // Make sure that the player was not killed by a non-player entity or through self killing

	// Ignore Special Classes Frags?
	if(isDefaultSpecialZombie(attacker)) {
		if(get_pcvar_num(cvar_zm_ignore_frags[g_zm_special[attacker]]))
			RemoveFrags(attacker, victim);

		// Give Ammopack Infect/Kill Reward
		if(!get_pcvar_num(cvar_zm_ignore_ammo[g_zm_special[attacker]]))
			g_ammopacks[attacker] += get_pcvar_num(cvar_ammoinfect)
	}
	else if(isCustomSpecialZombie(attacker))  {
		if(ArrayGetCell(g_zm_sp_ignorefrag, g_zm_special[attacker]-MAX_SPECIALS_ZOMBIES) > 0)
			RemoveFrags(attacker, victim);

		// Give Ammopack Infect/Kill Reward
		if(ArrayGetCell(g_zm_sp_ignoreammo, g_zm_special[attacker]-MAX_SPECIALS_ZOMBIES) <= 0)
			g_ammopacks[attacker] += get_pcvar_num(cvar_ammoinfect);
	}
	if(isDefaultSpecialHuman(attacker)) {
		if(get_pcvar_num(cvar_hm_ignore_frags[g_hm_special[attacker]]))
			RemoveFrags(attacker, victim);
	}
	else if(isCustomSpecialHuman(attacker)) {
		if(ArrayGetCell(g_hm_sp_ignorefrag, g_hm_special[attacker]-MAX_SPECIALS_HUMANS))
			RemoveFrags(attacker, victim);
	}


	// Human killed zombie, add up the extra frags for kill
	if(!g_zombie[attacker] && get_pcvar_num(cvar_fragskill) > 1)
		UpdateFrags(attacker, victim, get_pcvar_num(cvar_fragskill) - 1, 0, 0);

	// Zombie killed human, add up the extra frags for kill
	if(g_zombie[attacker] && get_pcvar_num(cvar_fragsinfect) > 1)
		UpdateFrags(attacker, victim, get_pcvar_num(cvar_fragsinfect) - 1, 0, 0);

	// When killed by a Sniper victim explodes
	if(g_hm_special[attacker] == SNIPER && (g_currentweapon[attacker] == CSW_AWP) && get_pcvar_num(cvar_sniperfraggore) && g_zombie[victim]) {

		SetHamParamInteger(3, 2) // Cut him into pieces
		static origin[3]; get_user_origin(victim, origin)

		// Make some blood in the air
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_LAVASPLASH) // TE id
		write_coord(origin[0]) // origin x
		write_coord(origin[1]) // origin y
		write_coord(origin[2] - 26) // origin z
		message_end()
	}
}
public fw_PlayerKilled_Post(victim, attacker, shouldgib) { // Ham Player Killed Post Forward
	fnCheckLastZombie() // Last Zombie Check

	static selfkill; // Determine whether the player killed himself
	selfkill = (victim == attacker || !is_user_valid_connected(attacker)) ? true : false

	// For model fix when thunder weapons is enable
	if(is_user_valid_alive(attacker) && !selfkill) {
		// replace_weapon_models(attacker, weaponid) // Is not necessary (Maybe)
		ExecuteForward(g_forwards[DEPLOY_WEAPON], g_fwDummyResult, attacker, g_currentweapon[attacker]);
	}

	if((g_newround || g_currentmode == MODE_NONE) && !g_endround) {
		set_task(0.05, "respawn_player_task", victim+TASK_SPAWN) // Instant respawn before round begins
	}

	// Respawn if deathmatch is enabled
	if(!get_pcvar_num(cvar_deathmatch) || isCustomMode() && !g_deathmatchmode)
		return

	if(selfkill && !get_pcvar_num(cvar_respawnonsuicide))
		return; // Respawn on suicide?

	// Respawn on Headshot?
	if(!selfkill && get_pdata_int(victim, OFFSET_LASTHITGROUP, OFFSET_LINUX) == HIT_HEAD && !get_pcvar_num(cvar_respawnonheadshot))
		return;

	// Respawn Limit
	static limit_resp; limit_resp = 0

	if(isCustomMode())
		limit_resp = ArrayGetCell(g_gm_respawn_limit, (g_currentmode - MAX_GAME_MODES))

	else if(g_currentmode == MODE_INFECTION || g_currentmode == MODE_MULTI)
		limit_resp = get_pcvar_num(cvar_respawn_limit[MODE_INFECTION])

	else if(g_currentmode != MODE_NONE && g_currentmode < MAX_GAME_MODES)
		limit_resp = get_pcvar_num(cvar_respawn_limit[g_currentmode])

	if(g_respawn_count[victim] >= limit_resp && limit_resp > 0)
		return;

	// Respawn if only the last human is left?
	if(!get_pcvar_num(cvar_respawnafterlast) && fnGetHumans() <= 1 && (g_currentmode == MODE_INFECTION || g_currentmode == MODE_MULTI))
		return;

	// Respawn if are Special Class
	if(isDefaultSpecialHuman(victim)) if(!get_pcvar_num(cvar_hm_respawn[g_hm_special[victim]])) return;
	else if(isCustomSpecialHuman(victim)) if(ArrayGetCell(g_hm_sp_respawn, g_hm_special[victim]-MAX_SPECIALS_HUMANS) <= 0) return;
	else if(isCustomSpecialZombie(victim)) if(ArrayGetCell(g_zm_sp_respawn, g_zm_special[victim]-MAX_SPECIALS_ZOMBIES) <= 0) return;
	else if(isDefaultZombie(victim) || isDefaultSpecialZombie(victim)) if(!get_pcvar_num(cvar_zm_respawn[g_zm_special[victim]])) return;

	// Respawn as zombie?
	if(isCustomMode() && g_deathmatchmode) { // Custom round ?
		if(RespawnAsZombie(g_deathmatchmode))
			g_respawn_as_zombie[victim] = true
	}
	else if(get_pcvar_num(cvar_deathmatch)) { // Normal round
		static dm_mode;	dm_mode = get_pcvar_num(cvar_deathmatch);
		if(RespawnAsZombie(dm_mode))
			g_respawn_as_zombie[victim] = true
	}
	set_task(get_pcvar_float(cvar_spawndelay), "respawn_player_task", victim+TASK_SPAWN) // Set the respawn task
}

public fw_TakeDamage(victim, inflictor, attacker, Float:damage, damage_type) { // Ham Take Damage Forward
	if(!is_user_valid_alive(victim))
		return HAM_IGNORED;

	if(!is_user_valid_connected(attacker) && pev_valid(attacker)) {
		static classname[32];
		pev(attacker, pev_classname, classname, charsmax(classname));
		if(damage >= fm_get_user_health(victim) && equal(classname, "trigger_hurt")) {
			if(g_endround)
				return HAM_SUPERCEDE;

			// Block Entity Kill Damage before Round Starts and when round end (Essentials for Escape Maps)
			if((g_newround || g_currentmode == MODE_NONE) && !g_endround) { // Move to an initial spawn
				if(get_pcvar_num(cvar_randspawn)) do_random_spawn(victim) // random spawn (including CSDM)
				else do_random_spawn(victim, 1) // regular spawn
			}

			// Fix entity kill bug
			else user_kill(victim);

			return HAM_SUPERCEDE;
		}
		return HAM_IGNORED;
	}

	if(victim == attacker || !is_user_valid_connected(attacker)) return HAM_IGNORED; // Non-player damage or self damage

	// New round starting or round ended  / Victim shouldn't take damage or victim is frozen
	if(g_newround || g_endround || g_currentmode == MODE_NONE || g_nodamage[victim] || (g_frozen[victim] && !(get_pcvar_num(cvar_frozenhit))))
		return HAM_SUPERCEDE;

	// Prevent friendly fire
	if(is_user_valid_alive(attacker) && isSameTeam(attacker, victim))
		return HAM_SUPERCEDE;

	if(!g_zombie[attacker]) { // Attacker is human...
		if(g_zombie[victim] && g_hm_special[attacker] != SNIPER && g_hm_special[attacker] != BERSERKER) { // Armor multiplier for the final damage on normal zombies
			damage *= get_pcvar_float(cvar_zombiearmor)
			SetHamParamFloat(4, damage)
		}
		switch(g_hm_special[attacker]) {
			case SURVIVOR: {
				static survweaponname[32]; get_pcvar_string(cvar_survweapon, survweaponname, charsmax(survweaponname))
				if(g_currentweapon[attacker] == cs_weapon_name_to_id(survweaponname)) SetHamParamFloat(4, damage * get_pcvar_float(cvar_hm_damage[SURVIVOR]))
			}
			case SNIPER: if(g_currentweapon[attacker] == CSW_AWP) SetHamParamFloat(4, get_pcvar_float(cvar_hm_damage[SNIPER]))
			case BERSERKER: if(g_currentweapon[attacker] == CSW_KNIFE) SetHamParamFloat(4, get_pcvar_float(cvar_hm_damage[BERSERKER]))
			case WESKER: if(g_currentweapon[attacker] == CSW_DEAGLE) SetHamParamFloat(4, damage * get_pcvar_float(cvar_hm_damage[WESKER]))
			case SPY: if(g_currentweapon[attacker] == CSW_M3) SetHamParamFloat(4, damage * get_pcvar_float(cvar_hm_damage[SPY]))
		}

		if(g_zm_special[victim] == PREDATOR) {
			if(get_pcvar_num(cvar_zm_glow[PREDATOR])) fm_set_rendering(victim, kRenderFxGlowShell, 250, 250, 250, kRenderNormal, 15)
			else fm_set_rendering(victim, kRenderFxGlowShell, 0, 0, 0, kRenderNormal, 15)
			set_task(1.0, "turn_invisible", victim)
		}

		return HAM_IGNORED;
	}

	// Attacker is zombie...

	// Prevent infection/damage by HE grenade (bugfix)
	if(damage_type & DMG_HEGRENADE) return HAM_SUPERCEDE;

	if(isDefaultSpecialZombie(attacker)) { // Special Zombies?
		// Ignore special zombies damage override if damage comes from a 3rd party entity
		// (to prevent this from affecting a sub-plugin's rockets e.g.)
		if(inflictor == attacker)
			SetHamParamFloat(4, get_pcvar_float(cvar_zm_damage[g_zm_special[attacker]]))

		return HAM_IGNORED;
	}

	if(isCustomSpecialZombie(attacker))
		return HAM_IGNORED;

	if(g_hm_special[victim] == SPY) {
		if(get_pcvar_num(cvar_hm_glow[SPY])) fm_set_rendering(victim, kRenderFxGlowShell, get_pcvar_num(cvar_hm_red[SPY]), get_pcvar_num(cvar_hm_green[SPY]), get_pcvar_num(cvar_hm_blue[SPY]), kRenderNormal, 15)
		else fm_set_rendering(victim, kRenderFxGlowShell, 0, 0, 0, kRenderNormal, 15)
		set_task(1.0, "turn_invisible", victim)
	}

	if(!g_allowinfection || fnGetHumans() == 1) return HAM_IGNORED; // Last human or infection not allowed

	// Does human armor need to be reduced before infecting?
	static CvarValue; CvarValue = get_pcvar_num(cvar_humanarmor)
	if(CheckAllowed(CvarValue)) {
		static Float:armor; pev(victim, pev_armorvalue, armor) // Get victim armor
		if(armor > 0.0) { // If he has some, block the infection and reduce armor instead
			emit_sound(victim, CHAN_BODY, cs_sounds[2], 1.0, ATTN_NORM, 0, PITCH_NORM)
			if(armor - damage > 0.0) set_pev(victim, pev_armorvalue, armor - damage)
			else cs_set_user_armor(victim, 0, CS_ARMOR_NONE)

			return HAM_SUPERCEDE;
		}
	}
	// Infection allowed
	zombieme(victim, attacker, 0, 0, 1) // turn into zombie
	return HAM_SUPERCEDE;
}
public fw_TakeDamage_Post(victim, inflictor, attacker, Float:damage, damage_type) { // Ham Take Damage Post Forward
	if(!is_user_valid_alive(victim))
		return;

	// Damage Dealt (Now works like in zp 5.0)
	if(damage_type & DMG_BULLET)
		damage_dealth(attacker, victim, floatround(damage));

	// --- Check if victim should be Pain Shock Free ---
	// Check if proper CVARs are enabled
	if(g_zombie[victim]) {
		if(isCustomSpecialZombie(victim)) {
			if(ArrayGetCell(g_zm_sp_painfree, g_zm_special[victim]-MAX_SPECIALS_ZOMBIES) <= 0)
				return;
		}
		else if(isDefaultSpecialZombie(victim)) {
			if(!get_pcvar_num(cvar_zm_painfree[g_zm_special[victim]]))
				return;
		}
		else {
			switch (get_pcvar_num(cvar_zm_painfree[0])) {
				case 0: return;
				case 2: if(!g_lastzombie[victim]) return;
				case 3: if(!g_firstzombie[victim]) return;
			}
		}
	}
	else {
		if(g_hm_special[victim] <= 0)
			return;

		if(isCustomSpecialHuman(victim)) {
			if(ArrayGetCell(g_hm_sp_painfree, g_hm_special[victim]-MAX_SPECIALS_HUMANS) <= 0)
				return;
		}
		else {
			if(!get_pcvar_num(cvar_hm_painfree[g_hm_special[victim]]))
				return;
		}
	}
	if(pev_valid(victim) != PDATA_SAFE)
		return; // Prevent server crash if entity's private data not initalized

	set_pdata_float(victim, OFFSET_PAINSHOCK, 1.0, OFFSET_LINUX) // Set pain shock free offset
}

public fw_TraceAttack(victim, attacker, Float:damage, Float:direction[3], tracehandle, damage_type) { // Ham Trace Attack Forward
	if(victim == attacker || !is_user_valid_connected(attacker) || !is_user_valid_connected(victim)) return HAM_IGNORED; // Non-player damage or self damage

	// New round starting or round ended / Victim shouldn't take damage or victim is frozen
	if(g_newround || g_endround || g_currentmode == MODE_NONE || g_nodamage[victim] || (g_frozen[victim] && !get_pcvar_num(cvar_frozenhit)))
		return HAM_SUPERCEDE;

	if(g_zombie[attacker] == g_zombie[victim])
		return HAM_SUPERCEDE; // Prevent friendly fire

	// Victim isn't a zombie or not bullet damage, nothing else to do here
	if(!g_zombie[victim] || !(damage_type & DMG_BULLET))
		return HAM_IGNORED;

	// If zombie hitzones are enabled, check whether we hit an allowed one
	if(get_pcvar_num(cvar_hitzones) && g_zm_special[victim] <= 0 && !(get_pcvar_num(cvar_hitzones) & (1<<get_tr2(tracehandle, TR_iHitgroup))))
		return HAM_SUPERCEDE;

	if(!get_pcvar_num(cvar_knockback))
		return HAM_IGNORED; // Knockback disabled, nothing else to do here

	// Specials knockback disabled, nothing else to do here
	if(g_zombie_knockback[victim] == 0.0 && g_zm_special[victim] > 0)
		return HAM_IGNORED;

	// Get whether the victim is in a crouch state
	static ducking; ducking = pev(victim, pev_flags) & (FL_DUCKING | FL_ONGROUND) == (FL_DUCKING | FL_ONGROUND)

	if(ducking && get_pcvar_float(cvar_knockbackducking) == 0.0)
		return HAM_IGNORED; // Zombie knockback when ducking disabled

	// Get distance between players
	static origin1[3], origin2[3]
	get_user_origin(victim, origin1)
	get_user_origin(attacker, origin2)

	if(get_distance(origin1, origin2) > get_pcvar_num(cvar_knockbackdist))
		return HAM_IGNORED; // Max distance exceeded

	static Float:velocity[3]; pev(victim, pev_velocity, velocity) // Get victim's velocity

	if(get_pcvar_num(cvar_knockbackdamage))
		xs_vec_mul_scalar(direction, damage, direction) // Use damage on knockback calculation

	// Use weapon power on knockback calculation
	if(get_pcvar_num(cvar_knockbackpower) && kb_weapon_power[g_currentweapon[attacker]] > 0.0)
		xs_vec_mul_scalar(direction, kb_weapon_power[g_currentweapon[attacker]], direction)

	if(ducking)
		xs_vec_mul_scalar(direction, get_pcvar_float(cvar_knockbackducking), direction) // Apply ducking knockback multiplier

	// Apply zombie class/nemesis knockback multiplier
	xs_vec_mul_scalar(direction, g_zombie_knockback[victim], direction)

	xs_vec_add(velocity, direction, direction) // Add up the new vector

	if(!get_pcvar_num(cvar_knockbackzvel))
		direction[2] = velocity[2] // Should knockback also affect vertical velocity?

	set_pev(victim, pev_velocity, direction) // Set the knockback'd victim's velocity
	return HAM_IGNORED;
}

public fw_ResetMaxSpeed_Post(id) { // Ham Reset MaxSpeed Post Forward
	if(g_freezetime || !g_isalive[id])
		return; // Freezetime active or player not alive

	set_player_maxspeed(id)
}
public fw_UseStationary(entity, caller, activator, use_type) { // Ham Use Stationary Gun Forward
	if(use_type == USE_USING && is_user_valid_connected(caller) && g_zombie[caller])
		return HAM_SUPERCEDE; // Prevent zombies from using stationary guns

	return HAM_IGNORED;
}
public fw_UseStationary_Post(entity, caller, activator, use_type) { // Ham Use Stationary Gun Post Forward
	if(use_type == USE_STOPPED && is_user_valid_connected(caller)) { // Someone stopped using a stationary gun
		replace_weapon_models(caller, g_currentweapon[caller]) // replace weapon models (bugfix)
		ExecuteForward(g_forwards[DEPLOY_WEAPON], g_fwDummyResult, caller, g_currentweapon[caller]);
	}
}
public fw_UsePushable() { // Ham Use Pushable Forward
	if(get_pcvar_num(cvar_blockpushables))
		return HAM_SUPERCEDE; // Prevent speed bug with pushables?

	return HAM_IGNORED;
}
public fw_UseButton(entity, caller, activator, use_type) {
	if(g_escape_map && g_endround)
		return HAM_SUPERCEDE // Prevent bug on escape button

	if(!get_pcvar_num(cvar_block_zm_use_button) || get_pcvar_num(cvar_block_zm_use_button) < 2 && !g_escape_map)
		return HAM_IGNORED;

	if(use_type == USE_USING && is_user_valid_connected(caller)) {
		if(g_zombie[caller]) return HAM_SUPERCEDE;
	}

	return HAM_IGNORED;
}
public fw_TouchWeapon(weapon, id) { // Ham Weapon Touch Forward
	if(!is_user_valid_connected(id))
		return HAM_IGNORED;

	if(g_zombie[id] || g_hm_special[id] > 0)
		return HAM_SUPERCEDE; // Dont pickup weapons if zombie, special class

	return HAM_IGNORED;
}
public fw_AddPlayerItem(id, weapon_ent) { // Ham Weapon Pickup Forward
	static extra_ammo; extra_ammo = pev(weapon_ent, PEV_ADDITIONAL_AMMO) // HACK: Retrieve our custom extra ammo from the weapon

	if(extra_ammo) {
		static weaponid; weaponid = cs_get_weapon_id(weapon_ent)
		ExecuteHamB(Ham_GiveAmmo, id, extra_ammo, AMMOTYPE[weaponid], MAXBPAMMO[weaponid])
		set_pev(weapon_ent, PEV_ADDITIONAL_AMMO, 0)
	}
}
public fw_Item_Deploy_Post(weapon_ent) { // Ham Weapon Deploy Forward
	if(!pev_valid(weapon_ent)) return

	static owner; owner = fm_cs_get_weapon_ent_owner(weapon_ent) // Get weapon's owner

	if(!(1 <= owner <= MaxClients)) return; // Invalid player id? (bugfix)

	static weaponid; weaponid = cs_get_weapon_id(weapon_ent) // Get weapon's id

	g_currentweapon[owner] = weaponid // Store current weapon's id for reference
	replace_weapon_models(owner, weaponid) // Replace weapon models with custom ones

	ExecuteForward(g_forwards[DEPLOY_WEAPON], g_fwDummyResult, owner, weaponid);
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED)
		return;

	// Zombie not holding an allowed weapon for some reason
	if(g_zombie[owner] && !((1<<weaponid) & ZOMBIE_ALLOWED_WEAPONS_BITSUM)) {
		g_currentweapon[owner] = CSW_KNIFE		// Switch to knife
		engclient_cmd(owner, "weapon_knife")
	}
}
// WeaponMod bugfix
// forward wpn_gi_reset_weapon(id);
//public wpn_gi_reset_weapon(id) replace_weapon_models(id, CSW_KNIFE); // Replace knife model

public client_putinserver(id) { // Client joins the game
	g_isconnected[id] = true
	g_zombieclassnext[id] = NULL_CLASS
	g_hclass_next[id] = NULL_CLASS

	get_user_name(id, g_playername[id], charsmax(g_playername[])) // Cache player's name

	reset_vars(id, 1)

	if(get_pcvar_num(cvar_statssave)) load_stats(id) // Load player stats?

	if(!is_user_bot(id)) { // Set some tasks for humans only
		set_task(1.0, "ShowHUD", id+TASK_SHOWHUD, _, _, "b") // Set the custom HUD display task
		set_task(5.0, "disable_minmodels", id) // Disable minmodels for clients to see zombies properly
	}
	else {
		g_isbot[id] = true // Set bot flag
	}
}

public fw_ClientDisconnect(id) { // Client leaving
	if(g_isalive[id]) check_round(id) // Check that we still have both humans and zombies to keep the round going

	if(get_pcvar_num(cvar_statssave)) save_stats(id) // Temporarily save player stats?

	// Remove previous tasks
	remove_task(id+TASK_TEAM)
	remove_task(id+TASK_FLASH)
	remove_task(id+TASK_CHARGE)
	remove_task(id+TASK_SPAWN)
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)
	remove_task(id+TASK_NVISION)
	remove_task(id+TASK_SHOWHUD)

	// Player left, clear cached flags
	g_isconnected[id] = false
	g_isbot[id] = false
	g_isalive[id] = false
}
public fw_ClientDisconnect_Post() fnCheckLastZombie(); // Last Zombie Check

public fw_ClientKill() { // Client Kill Forward
	if(get_pcvar_num(cvar_blocksuicide)) return FMRES_SUPERCEDE; // Prevent players from killing themselves?

	return FMRES_IGNORED;
}
public fw_EmitSound(id, channel, const sample[], Float:volume, Float:attn, flags, pitch) { // Emit Sound Forward
	// Block all those unneeeded hostage sounds
	if(sample[0] == 'h' && sample[1] == 'o' && sample[2] == 's' && sample[3] == 't' && sample[4] == 'a' && sample[5] == 'g' && sample[6] == 'e')
		return FMRES_SUPERCEDE;

	if(!is_user_valid_connected(id) || !g_zombie[id]) return FMRES_IGNORED; // Replace these next sounds for zombies only

	static sound[64]

	// Dragon Skill
	if(equal(sample, "common/wpn_denyselect.wav") && (pev(id, pev_button) & IN_USE) && g_zm_special[id] == DRAGON) use_cmd(id)

	if(sample[7] == 'b' && sample[8] == 'h' && sample[9] == 'i' && sample[10] == 't') { // Zombie being hit
		static Array:PainSnd;
		if(g_zm_special[id] <= 0) {
			if(ArrayGetCell(g_zclass_use_painsnd, g_zombieclass[id]))
				PainSnd = ArrayGetCell(g_zclass_painsnd_handle, g_zombieclass[id])
			else
				PainSnd = zombie_pain[0]
		}
		else if(isDefaultSpecialZombie(id)) {
			PainSnd = zombie_pain[g_zm_special[id]]
		}
		else {
			PainSnd = ArrayGetCell(g_zm_sp_painsnd_handle, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)
		}

		ArrayGetString(PainSnd, random_num(0, ArraySize(PainSnd) - 1), sound, charsmax(sound))
		emit_sound(id, channel, sound, volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}

	if(sample[8] == 'k' && sample[9] == 'n' && sample[10] == 'i' && sample[14] != 'd') { // Zombie attacks with knife
		if(sample[14] == 's' && sample[15] == 'l' && sample[16] == 'a') // slash
			ArrayGetString(ar_sound[3], random_num(0, ArraySize(ar_sound[3]) - 1), sound, charsmax(sound))

		if(sample[14] == 'h' && sample[15] == 'i' && sample[16] == 't') { // hit
			if(sample[17] == 'w') ArrayGetString(ar_sound[4], random_num(0, ArraySize(ar_sound[4]) - 1), sound, charsmax(sound)) // wall
			else ArrayGetString(ar_sound[5], random_num(0, ArraySize(ar_sound[5]) - 1), sound, charsmax(sound))
		}
		if(sample[14] == 's' && sample[15] == 't' && sample[16] == 'a') // stab
			ArrayGetString(ar_sound[6], random_num(0, ArraySize(ar_sound[6]) - 1), sound, charsmax(sound))

		emit_sound(id, channel, sound, volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}

	// Zombie dies
	if(sample[7] == 'd' && ((sample[8] == 'i' && sample[9] == 'e') || (sample[8] == 'e' && sample[9] == 'a')) && g_zm_special[id] <= 0) {

		static Array:DeathSnd;
		if(ArrayGetCell(g_zclass_use_deathsnd, g_zombieclass[id]))
			DeathSnd = ArrayGetCell(g_zclass_deathsnd_handle, g_zombieclass[id])
		else
			DeathSnd = ar_sound[1];

		ArrayGetString(DeathSnd, random_num(0, ArraySize(DeathSnd)-1), sound, charsmax(sound))
		emit_sound(id, channel, sound, volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}

	// Zombie falls off
	if(sample[10] == 'f' && sample[11] == 'a' && sample[12] == 'l' && sample[13] == 'l') {
		ArrayGetString(ar_sound[2], random_num(0, ArraySize(ar_sound[2]) - 1), sound, charsmax(sound))
		emit_sound(id, channel, sound, volume, attn, flags, pitch)
		return FMRES_SUPERCEDE;
	}
	return FMRES_IGNORED;
}
public fw_SetClientKeyValue(id, const infobuffer[], const key[]) { // Forward Set ClientKey Value -prevent CS from changing player models-
	if(key[0] == 'm' && key[1] == 'o' && key[2] == 'd' && key[3] == 'e' && key[4] == 'l') return FMRES_SUPERCEDE; // Block CS model changes

	return FMRES_IGNORED;
}
public fw_ClientUserInfoChanged(id) { // Forward Client User Info Changed -prevent players from changing models-
	if(!is_user_valid_alive(id))
		return;

	get_user_name(id, g_playername[id], charsmax(g_playername[])) // Cache player's name
	static currentmodel[32]; get_user_info(id, "model", currentmodel, charsmax(currentmodel)) // Get current model
	if(!equal(currentmodel, g_playermodel[id]) || pev(id, pev_body) != g_playerbody[id] || pev(id, pev_skin) != g_playerskin[id]) {
		cs_set_user_model(id, g_playermodel[id], g_set_modelindex_offset ? true : false)
		set_pev(id, pev_body, g_playerbody[id])
		set_pev(id, pev_skin, g_playerskin[id])
	}
}
public fw_GetGameDescription() { // Forward Get Game Description
	forward_return(FMV_STRING, g_modname) // Return the mod name so it can be easily identified
	return FMRES_SUPERCEDE;
}

public fw_SetModel(entity, const model[]) { // Forward Set Model
	if(strlen(model) < 8) return FMRES_IGNORED; // We don't care

	if(get_pcvar_float(cvar_removedropped) > 0.0) { // Remove weapons?
		static classname[10] // Get entity's classname
		pev(entity, pev_classname, classname, charsmax(classname))

		if(equal(classname, "weaponbox")) { // Check if it's a weapon box
			// They get automatically removed when thinking
			set_pev(entity, pev_nextthink, get_gametime() + get_pcvar_float(cvar_removedropped))
			return FMRES_IGNORED;
		}
	}
	if(model[7] != 'w' || model[8] != '_') return FMRES_IGNORED; // Narrow down our matches a bit

	static Float:dmgtime, owner;
	pev(entity, pev_dmgtime, dmgtime) // Get damage time of grenade
	owner = pev(entity, pev_owner)

	if(dmgtime == 0.0) return FMRES_IGNORED; // Grenade not yet thrown

	if(g_zombie[owner]) { // Get whether grenade's owner is a zombie
		if(model[9] == 'h' && model[10] == 'e' && ((get_pcvar_num(cvar_extrainfbomb) && !g_escape_map) || (get_pcvar_num(cvar_extrainfbomb_ze) && g_escape_map) || g_zm_special[owner] == BOMBARDIER)) { // Infection Bomb
			// Give it a glow
			fm_set_rendering(entity, kRenderFxGlowShell, grenade_rgb[INFECTION_BOMB][0], grenade_rgb[INFECTION_BOMB][1], grenade_rgb[INFECTION_BOMB][2], kRenderNormal, 16);
			entity_set_model(entity, g_zm_special[owner] == BOMBARDIER ? model_grenade_bombardier[WORLD_MODEL] : model_grenade_infect[WORLD_MODEL])

			set_trail(entity, grenade_rgb[INFECTION_BOMB][0], grenade_rgb[INFECTION_BOMB][1], grenade_rgb[INFECTION_BOMB][2], INFECTION_BOMB)

			set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_INFECTION) // Set grenade type on the thrown grenade entity

			return FMRES_SUPERCEDE;
		}
	}
	else if(model[9] == 'h' && model[10] == 'e' && get_pcvar_num(cvar_firegrenades)) { // Napalm Grenade
		// Give it a glow
		fm_set_rendering(entity, kRenderFxGlowShell, grenade_rgb[FIRE][0], grenade_rgb[FIRE][1], grenade_rgb[FIRE][2], kRenderNormal, 16);
		entity_set_model(entity, model_grenade_fire[WORLD_MODEL])

		set_trail(entity, grenade_rgb[FIRE][0], grenade_rgb[FIRE][1], grenade_rgb[FIRE][2], FIRE)

		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_NAPALM) // Set grenade type on the thrown grenade entity

		return FMRES_SUPERCEDE;
	}
	else if(model[9] == 'f' && model[10] == 'l' && get_pcvar_num(cvar_frostgrenades)) { // Frost Grenade
		// Give it a glow
		fm_set_rendering(entity, kRenderFxGlowShell, grenade_rgb[FROST][0], grenade_rgb[FROST][1], grenade_rgb[FROST][2], kRenderNormal, 16);
		entity_set_model(entity, model_grenade_frost[WORLD_MODEL])

		set_trail(entity, grenade_rgb[FROST][0], grenade_rgb[FROST][1], grenade_rgb[FROST][2], FROST)

		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_FROST) // Set grenade type on the thrown grenade entity

		return FMRES_SUPERCEDE;
	}
	else if(model[9] == 's' && model[10] == 'm' && get_pcvar_num(cvar_flaregrenades)) { // Flare
		static rgb[3] // Build flare's color
		switch (get_pcvar_num(cvar_flarecolor)) {
			case 0: rgb = { 250, 250, 250 } // white
			case 1: rgb = { 250, 0, 0 } // red
			case 2: rgb = { 0, 250, 0 } // green
			case 3: rgb = { 0, 0, 250 } // blue
			case 4: { // random (all colors)
				rgb[0] = random_num(50,200) // r
				rgb[1] = random_num(50,200) // g
				rgb[2] = random_num(50,200) // b
			}
			case 5: { // random (r,g,b)
				switch (random_num(0, 7)) {
					case 0: rgb = { 250, 250, 250 } // white
					case 1: rgb = { 250, 0, 0 } // red
					case 2: rgb = { 0, 250, 0 } // green
					case 3: rgb = { 0, 0, 250 } // blue
					case 4: rgb = { 0, 250, 250 } // cyan
					case 5: rgb = { 250, 0, 250 } // pink
					case 6: rgb = { 250, 250, 0 } // yellow
					case 7: rgb = { 255, 69, 0 } // orange
				}
			}
		}

		// Give it a glow
		fm_set_rendering(entity, kRenderFxGlowShell, rgb[0], rgb[1], rgb[2], kRenderNormal, 16);
		entity_set_model(entity, model_grenade_flare[WORLD_MODEL])

		set_trail(entity, rgb[0], rgb[1], rgb[2], FLARE)

		set_pev(entity, PEV_NADE_TYPE, NADE_TYPE_FLARE) // Set grenade type on the thrown grenade entity
		//set_pev(entity, pev_effects, EF_LIGHT);

		set_pev(entity, PEV_FLARE_COLOR, rgb) // Set flare color on the thrown grenade entity

		return FMRES_SUPERCEDE;
	}
	return FMRES_IGNORED;
}
set_trail(entity, r, g, b, grenade_type) {
	if(!pev_valid(entity) || !enable_trail[grenade_type]) return;

	// And a colored trail
	message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
	write_byte(TE_BEAMFOLLOW) // TE id
	write_short(entity) // entity
	write_short(g_trailSpr[grenade_type]) // sprite
	write_byte(10) // life
	write_byte(10) // width
	write_byte(r) // r
	write_byte(g) // g
	write_byte(b) // b
	write_byte(200) // brightness
	message_end()
}
// Ham Grenade Think Forward
public fw_ThinkGrenade(entity) {
	if(!pev_valid(entity)) return HAM_IGNORED;

	// Get damage time of grenade
	static Float:dmgtime, Float:current_time, nade_type
	pev(entity, pev_dmgtime, dmgtime)
	current_time = get_gametime()

	if(dmgtime > current_time) return HAM_IGNORED; // Check if it's time to go off

	nade_type = pev(entity, PEV_NADE_TYPE)

	// Fixing small bug with extra item grenades (Like antidote bomb, jump bomb, etc) [4.3 Fix]
	if(nade_type != NADE_TYPE_FLARE && nade_type != NADE_TYPE_INFECTION && nade_type != NADE_TYPE_FROST && nade_type != NADE_TYPE_NAPALM)
		return HAM_IGNORED;

	// Infection/Frost/Fire Grenade
	if(nade_type != NADE_TYPE_FLARE) {
		grenade_explode(entity, nade_type)
		return HAM_SUPERCEDE;
	}
	else { // Flare Grenade
		static duration; duration = pev(entity, PEV_FLARE_DURATION) // Get its duration

		if(duration > 0) { // Already went off, do lighting loop for the duration of PEV_FLARE_DURATION
			if(duration == 1) { // Check whether this is the last loop
				engfunc(EngFunc_RemoveEntity, entity) // Get rid of the flare entity
				return HAM_SUPERCEDE;
			}
			flare_lighting(entity, duration) // Light it up!

			// Set time for next loop
			set_pev(entity, PEV_FLARE_DURATION, --duration)
			set_pev(entity, pev_dmgtime, current_time + 2.0)
		}
		else if((pev(entity, pev_flags) & FL_ONGROUND) && fm_get_speed(entity) < 10) { // Light up when it's stopped on ground
			static sound[64] // Flare sound
			ArrayGetString(ar_sound[17], random_num(0, ArraySize(ar_sound[17]) - 1), sound, charsmax(sound))
			emit_sound(entity, CHAN_WEAPON, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)

			// Set duration and start lightning loop on next think
			set_pev(entity, PEV_FLARE_DURATION, 1 + get_pcvar_num(cvar_flareduration)/2)
			set_pev(entity, pev_dmgtime, current_time + 0.1)
		}
		else set_pev(entity, pev_dmgtime, current_time + 0.5) // Delay explosion until we hit ground
	}
	return HAM_IGNORED;
}

public fw_CmdStart(id, handle) { // Forward CmdStart
	if(!g_isalive[id]) return;

	// This logic looks kinda weird, but it should work in theory...
	// p = g_zombie[id], q = g_hm_special[id] == SURVIVOR, r = g_cached_customflash
	// ¬(p v q v (¬p ^ r)) <==> ¬p ^ ¬q ^ (p v ¬r)
	if(isDefaultHuman(id) && (g_zombie[id] || !g_cached_customflash)) return;

	if(get_uc(handle, UC_Impulse) != IMPULSE_FLASHLIGHT) return; // Check if it's a flashlight impulse

	set_uc(handle, UC_Impulse, 0) // Block it I say!

	// Should human's custom flashlight be turned on?
	if(isDefaultHuman(id) && g_flashbattery[id] > 2 && get_gametime() - g_lastflashtime[id] > 1.2) {
		g_lastflashtime[id] = get_gametime() // Prevent calling flashlight too quickly (bugfix)
		g_flashlight[id] = !(g_flashlight[id]) // Toggle custom flashlight

		emit_sound(id, CHAN_ITEM, cs_sounds[0], 1.0, ATTN_NORM, 0, PITCH_NORM) // Play flashlight toggle sound

		// Update flashlight status on the HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, id)
		write_byte(g_flashlight[id]) // toggle
		write_byte(g_flashbattery[id]) // battery
		message_end()

		remove_task(id+TASK_CHARGE) // Remove previous tasks
		remove_task(id+TASK_FLASH)

		set_task(1.0, "flashlight_charge", id+TASK_CHARGE, _, _, "b") // Set the flashlight charge task
		if(g_flashlight[id]) set_task(0.1, "set_user_flashlight", id+TASK_FLASH, _, _, "b") // Call our custom flashlight task if enabled
	}
}
set_player_maxspeed(id) { // Set proper maxspeed for player
	// If frozen, prevent from moving
	if(g_frozen[id]) set_pev(id, pev_maxspeed, 1.0) // prevent from moving
	else { // Otherwise, set maxspeed directly
		if(g_user_custom_speed[id])
			set_pev(id, pev_maxspeed, g_current_maxspeed[id]);

		else if(isCustomSpecialZombie(id) || isCustomSpecialHuman(id) || isDefaultZombie(id))
			set_pev(id, pev_maxspeed, g_spd[id])

		else if(isDefaultSpecialZombie(id))
			set_pev(id, pev_maxspeed, get_pcvar_float(cvar_zm_spd[g_zm_special[id]]))

		else if(isDefaultSpecialHuman(id)) {
			static Float:cvarSpd;
			cvarSpd = get_pcvar_float(cvar_hm_spd[g_hm_special[id]])
			if(cvarSpd > 0.0) set_pev(id, pev_maxspeed, cvarSpd);
		}

		else if(isDefaultHuman(id)) {
			static cvarWeight
			cvarWeight = get_pcvar_num(cvar_hm_allow_weight_spd)

			if(!g_hclass_i) // No hclass instaled
				g_spd[id] = get_pcvar_float(cvar_hm_spd[0])

			if(CheckAllowed(cvarWeight))
				set_pev(id, pev_maxspeed, g_spd[id] * weapon_spd_multi[g_currentweapon[id]])
			else
				set_pev(id, pev_maxspeed, g_spd[id])
		}

	}
}

public fw_PlayerPreThink(id) { // Forward Player PreThink
	if(!g_isalive[id]) return;

	if(g_zombie[id] && g_zm_special[id] == DRAGON) PreThinkDragon(id) // Dragon Skill

	// Enable custom buyzone for player during buytime, unless zombie or survivor or time expired
	if(g_cached_buytime > 0.0 && isDefaultHuman(id) && (get_gametime() < g_buytime[id] + g_cached_buytime))
		if(pev_valid(g_buyzone_ent)) dllfunc(DLLFunc_Touch, g_buyzone_ent, id)

	// Silent footsteps for zombies/assassins ?
	if((g_cached_zombiesilent && (isDefaultZombie(id) || g_zombie[id] && g_zm_special[id] == ASSASSIN)))
		set_pev(id, pev_flTimeStepSound, STEPTIME_SILENT)

	if(g_frozen[id]) { // Set Player MaxSpeed
		set_pev(id, pev_velocity, Float:{0.0,0.0,0.0}) // stop motion
		return; // shouldn't leap while frozen
	}

	// --- Check if player should leap ---
	if(g_freezetime) return; // shouldn't leap while in freezetime

	// Check if proper CVARs are enabled and retrieve leap settings
	static Float:cooldown, Float:current_time
	if(g_zombie[id]) {
		if(g_zm_special[id] <= 0) {
			switch (g_zm_cached_leap[0]) {
				case 0: return;
				case 2: if(!g_firstzombie[id]) return;
				case 3: if(!g_lastzombie[id]) return;
			}
			cooldown = g_zm_cached_cooldown[0]
		}
		else {
			if(isCustomSpecialZombie(id)) {
				if(ArrayGetCell(g_zm_sp_leap, g_zm_special[id]-MAX_SPECIALS_ZOMBIES) <= 0) return;
				cooldown = g_custom_leap_cooldown[id]
			}
			else {
				if(!g_zm_cached_leap[g_zm_special[id]]) return;
				cooldown = g_zm_cached_cooldown[g_zm_special[id]]
			}
		}
	}
	else {
		if(isDefaultHuman(id))
			return;

		if(isCustomSpecialHuman(id)) {
			if(ArrayGetCell(g_hm_sp_leap, g_hm_special[id]-MAX_SPECIALS_HUMANS) <= 0) return;
			cooldown = g_custom_leap_cooldown[id]
		}
		else {
			if(!g_hm_cached_leap[g_hm_special[id]] && g_hm_special[id] > 0) return;
			cooldown = g_hm_cached_cooldown[g_hm_special[id]]
		}
	}

	current_time = get_gametime()
	if(current_time - g_lastleaptime[id] < cooldown) return; // Cooldown not over yet

	// Not doing a longjump (don't perform check for bots, they leap automatically)
	if(!g_isbot[id] && !(pev(id, pev_button) & (IN_JUMP | IN_DUCK) == (IN_JUMP | IN_DUCK))) return;

	if(!(pev(id, pev_flags) & FL_ONGROUND) || fm_get_speed(id) < 80) return; // Not on ground or not enough speed

	static Float:velocity[3]
	if(g_zombie[id]) {
		if(isCustomSpecialZombie(id)) {
			velocity_by_aim(id, ArrayGetCell(g_zm_sp_leap_f, g_zm_special[id]-MAX_SPECIALS_ZOMBIES), velocity)
			velocity[2] = Float:ArrayGetCell(g_zm_sp_leap_h, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)
		}
		else {
			velocity_by_aim(id, get_pcvar_num(cvar_leap_zm_force[g_zm_special[id]]), velocity)
			velocity[2] = get_pcvar_float(cvar_leap_zm_height[g_zm_special[id]])
		}
	}
	else {
		if(isCustomSpecialHuman(id)) {
			velocity_by_aim(id, ArrayGetCell(g_hm_sp_leap_f, g_hm_special[id]-MAX_SPECIALS_HUMANS), velocity)
			velocity[2] = Float:ArrayGetCell(g_hm_sp_leap_h, g_hm_special[id]-MAX_SPECIALS_HUMANS)
		}
		else {
			velocity_by_aim(id, get_pcvar_num(cvar_leap_hm_force[g_hm_special[id]]), velocity)
			velocity[2] = get_pcvar_float(cvar_leap_hm_height[g_hm_special[id]])
		}
	}
	set_pev(id, pev_velocity, velocity) // Apply the new velocity
	g_lastleaptime[id] = current_time // Update last leap time
}

/*================================================================================
 [Client Commands]
=================================================================================*/
public clcmd_nightvision(id) { // Nightvision toggle
	if(g_nvision[id]) {
		g_nvisionenabled[id] = !(g_nvisionenabled[id])
		user_nightvision(id, g_nvisionenabled[id])
	}
	return PLUGIN_HANDLED;
}

public clcmd_drop(id) { // Special human should stick with its weapon
	if(g_hm_special[id] > 0) return PLUGIN_HANDLED

	return PLUGIN_CONTINUE;
}
public clcmd_buyammo(id) { 	// Buy BP Ammo or infinite ammo setting enabled
	if(!g_isalive[id] || get_pcvar_num(cvar_hm_infammo[0])) return PLUGIN_HANDLED;

	if(g_zombie[id]) { // Not human
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_HUMAN_ONLY")
		return PLUGIN_HANDLED;
	}

	// Custom buytime enabled and human player standing in buyzone, allow buying weapon's ammo normally instead
	if(g_cached_buytime > 0.0 && isDefaultHuman(id) && (get_gametime() < g_buytime[id] + g_cached_buytime) && cs_get_user_buyzone(id))
		return PLUGIN_CONTINUE;

	if(g_ammopacks[id] < 1) { // Not enough ammo packs
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "NOT_ENOUGH_AMMO")
		return PLUGIN_HANDLED;
	}

	// Get user weapons
	static weapons[32], num, i, currentammo, weaponid, refilled
	num = 0 // reset passed weapons count (bugfix)
	refilled = false
	get_user_weapons(id, weapons, num)

	for(i = 0; i < num; i++) { // Loop through them and give the right ammo type
		weaponid = weapons[i] // Prevents re-indexing the array
		if(MAXBPAMMO[weaponid] > 2) { // Primary and secondary only
			currentammo = cs_get_user_bpammo(id, weaponid) // Get current ammo of the weapon
			ExecuteHamB(Ham_GiveAmmo, id, BUYAMMO[weaponid], AMMOTYPE[weaponid], MAXBPAMMO[weaponid]) // Give additional ammo
			if(cs_get_user_bpammo(id, weaponid) - currentammo > 0) refilled = true // Check whether we actually refilled the weapon's ammo
		}
	}

	if(!refilled) return PLUGIN_HANDLED; // Weapons already have full ammo

	// Deduce ammo packs, play clip purchase sound, and notify player
	g_ammopacks[id]--
	emit_sound(id, CHAN_ITEM, cs_sounds[1], 1.0, ATTN_NORM, 0, PITCH_NORM)
	client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "AMMO_BOUGHT")
	return PLUGIN_HANDLED;
}
public clcmd_changeteam(id) { // Block Team Change
	static team; team = fm_cs_get_user_team(id)
	if(team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED) return PLUGIN_CONTINUE; // Unless it's a spectator joining the game
	show_menu_game(id) // Pressing 'M' (chooseteam) ingame should show the main menu instead
	return PLUGIN_HANDLED;
}
/*================================================================================
 [Menus]
=================================================================================*/
public show_menu_game(id) { // Game Menu
	static menu[500], len, userflags
	len = 0
	userflags = get_user_flags(id)

	len += formatex(menu[len], charsmax(menu) - len, "\d%L^n^n", id, "ZP_MAIN_MENU_TITLE") /* Title */
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", get_pcvar_num(cvar_buycustom) ? "\r1.\w" : "\d1.", id, "MENU_BUY") /* 1. Buy weapons */
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", (get_pcvar_num(cvar_extraitems) && g_isalive[id]) ? "\r2.\w" : "\d2.", id, "MENU_EXTRABUY") /* 2. Extra items */
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", get_pcvar_num(cvar_zclasses) ? "\r3.\w" : "\d3.", id, "MENU_ZCLASS") /* 3. Zombie class */
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", (g_hclass_i > 1 && get_pcvar_num(cvar_hclasses)) ? "\r4.\w" : "\d4.", id, "MENU_HCLASS") /* 4. Human class */

	/* 5. Unstuck */
	ExecuteForward(g_forwards[UNSTUCK_PRE], g_fwDummyResult, id);
	if(g_zombie[id] || !g_zombie[id] && get_pcvar_num(cvar_human_unstuck) || g_fwDummyResult < ZP_PLUGIN_HANDLED) len += formatex(menu[len], charsmax(menu) - len, "\r5.\w %L^n", id, "MENU_UNSTUCK")
	else len += formatex(menu[len], charsmax(menu) - len, "\d5. %L^n", id, "MENU_UNSTUCK")

	len += formatex(menu[len], charsmax(menu) - len, "\r6.\w %L^n^n", id, "MENU_PERSONAL_OPTIONS") /* 6. Personal Options*/

	/* 7. Join spec */
	if(!g_isalive[id] || !get_pcvar_num(cvar_blocksuicide) || (userflags & g_access_flag[ACCESS_ADMIN_MENU]))
		len += formatex(menu[len], charsmax(menu) - len, "\r7.\w %L^n^n", id, "MENU_SPECTATOR")
	else
		len += formatex(menu[len], charsmax(menu) - len, "\d7. %L^n^n", id, "MENU_SPECTATOR")

	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", (userflags & g_access_flag[ACCESS_ADMIN_MENU3]) ? "\r9.\w" : "\d9.", id, "MENU3_ADMIN") /* 9. Admin menu */
	len += formatex(menu[len], charsmax(menu) - len, "^n\r0.\w %L", id, "MENU_EXIT") /* 0. Exit */

	fixAmxMenu(id); // Fix for AMXX custom menus

	show_menu(id, KEYSMENU, menu, -1, "Game Menu")
}
public menu_buy_show(taskid) {
	static id // Get player's id
	(taskid > MaxClients) ? (id = ID_SPAWN) : (id = taskid);

	if(!g_isalive[id] || g_zombie[id] || g_hm_special[id] > 0) return; // Zombies, specials get no guns

	// Automatic selection enabled for player and menu called on spawn event
	if(WPN_AUTO_ON)	{
		buy_weapon(id, WPN_AUTO_PRI, 0)
		buy_weapon(id, WPN_AUTO_SEC, 1)
	}
	else show_menu_buy(id, 0)
}
public show_menu_buy(id, wpn_type) { // Buy Menu
	// Zombies, Specials get no guns
	if(!g_isalive[id] || g_zombie[id] || g_hm_special[id] > 0) return;

	// Bots pick their weapons randomly / Random weapons setting enabled
	if(get_pcvar_num(cvar_random_weapon[wpn_type]) || g_isbot[id]) {
		buy_weapon(id, random_num(0, ArraySize(g_wpn_realname[wpn_type]) - 1), wpn_type)
		if(wpn_type == 0) show_menu_buy(id, 1)
		return;
	}

	WPN_TYPE = wpn_type

	static menu[300], len, weap, maxloops, weapon_maxids
	len = 0
	weapon_maxids = ArraySize(g_wpn_realname[wpn_type])
	maxloops = min(WPN_STARTID+7, weapon_maxids)

	// Title
	len += formatex(menu[len], charsmax(menu) - len, "\y%L \r[%d-%d]^n^n", id, (wpn_type == 0) ? "MENU_BUY1_TITLE" : "MENU_BUY2_TITLE", WPN_STARTID+1, min(WPN_STARTID+7, weapon_maxids))

	// 1-7. Weapon List
	for(weap = WPN_STARTID; weap < maxloops; weap++) {
		g_AdditionalMenuText[0] = 0
		ExecuteForward(g_forwards[WEAPON_SELECTED_PRE], g_fwDummyResult, id, wpn_type, weap);

		static szWeaponName[64];

		if(ArrayGetCell(g_wpn_name_by_lang[wpn_type], weap)) {
			ArrayGetString(g_wpn_lang_key[wpn_type], weap, szWeaponName, charsmax(szWeaponName))
			formatex(szWeaponName, charsmax(szWeaponName), "%L", id, szWeaponName)
		}
		else ArrayGetString(g_wpn_name[wpn_type], weap, szWeaponName, charsmax(szWeaponName))


		if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) len += formatex(menu[len], charsmax(menu) - len, "\d%d. %s %s^n", weap-WPN_STARTID+1, szWeaponName, g_AdditionalMenuText)
		else len += formatex(menu[len], charsmax(menu) - len, "\r%d.\w %s %s^n", weap-WPN_STARTID+1, szWeaponName, g_AdditionalMenuText)
	}
	len += formatex(menu[len], charsmax(menu) - len, "^n\r8.\w %L \y[%L]", id, "MENU_AUTOSELECT", id, (WPN_AUTO_ON) ? "MOTD_ENABLED" : "MOTD_DISABLED") /* 8. Auto Select */
	len += formatex(menu[len], charsmax(menu) - len, "^n^n\r9.\w %L/%L^n^n\r0.\w %L", id, "MENU_NEXT", id, "MENU_BACK", id, "MENU_EXIT") /* 9. Next/Back - 0. Exit */

	fixAmxMenu(id); // Fix for AMXX custom menus

	show_menu(id, KEYSMENU, menu, -1, "Buy Menu")
}
show_menu_extras(id) { // Extra Items Menu
	if(!is_user_valid_connected(id))
		return;

	static menuid, menu[128], item, team, buffer[64], special_name[128], sp_id
	if(isCustomSpecialZombie(id)) {
		sp_id = g_zm_special[id]-MAX_SPECIALS_ZOMBIES

		if(ArrayGetCell(g_zm_sp_name_by_lang, sp_id)) {
			ArrayGetString(g_zm_sp_lang_key, sp_id, special_name, charsmax(special_name))
			formatex(special_name, charsmax(special_name), "%L", id, special_name)
		}
		else ArrayGetString(g_zm_sp_name, sp_id, special_name, charsmax(special_name))
	}
	else if(isCustomSpecialHuman(id)) {
		sp_id = g_hm_special[id]-MAX_SPECIALS_HUMANS

		if(ArrayGetCell(g_hm_sp_name_by_lang, sp_id)) {
			ArrayGetString(g_hm_sp_lang_key, sp_id, special_name, charsmax(special_name))
			formatex(special_name, charsmax(special_name), "%L", id, special_name)
		}
		else ArrayGetString(g_hm_sp_name, sp_id, special_name, charsmax(special_name))
	}
	else formatex(special_name, charsmax(special_name), "%L", id, g_zombie[id] ? zm_special_class_langs[g_zm_special[id]] : hm_special_class_langs[g_hm_special[id]])

	// Title
	formatex(menu, charsmax(menu), "%L [%s]\r", id, "MENU_EXTRA_TITLE", special_name)
	menuid = menu_create(menu, "menu_extras")

	// Item List
	for(item = 0; item < g_extraitem_i; item++) {
		g_AdditionalMenuText[0] = 0
		team = ArrayGetCell(g_extraitem_team, item) // Retrieve item's team

		// Item not available to player's team/class
		if(g_zombie[id] && !IsTeam(team, ArrayGetCell(iTeamIndexZm, g_zm_special[id]))
		|| !g_zombie[id] && !IsTeam(team, ArrayGetCell(iTeamIndexHm, g_hm_special[id])))
			continue;

		switch (item) { // Check if it's one of the hardcoded items, check availability, set translated caption
			case EXTRA_NVISION: {
				if(!get_pcvar_num(cvar_extranvision) || !g_zombie[id] && get_pcvar_num(cvar_hm_nvggive[0]) || g_zombie[id] && get_pcvar_num(cvar_zm_nvggive[0])) continue;
				ArrayGetString(g_extraitem_name, item, buffer, charsmax(buffer))
				if(equal(buffer, "NightVision")) formatex(buffer, charsmax(buffer), "%L", id, "MENU_EXTRA1")
			}
			case EXTRA_ANTIDOTE: {
				if((!get_pcvar_num(cvar_extraantidote) && !g_escape_map) || (!get_pcvar_num(cvar_extraantidote_ze) && g_escape_map) || g_antidotecounter >= get_pcvar_num(cvar_antidotelimit)) continue;
				ArrayGetString(g_extraitem_name, item, buffer, charsmax(buffer))
				if(equal(buffer, "T-Virus Antidote")) formatex(buffer, charsmax(buffer), "%L", id, "MENU_EXTRA2")
			}
			case EXTRA_MADNESS: {
				if((!get_pcvar_num(cvar_extramadness) && !g_escape_map) || (!get_pcvar_num(cvar_extramadness_ze) && g_escape_map) || g_madnesscounter >= get_pcvar_num(cvar_madnesslimit)) continue;
				ArrayGetString(g_extraitem_name, item, buffer, charsmax(buffer))
				if(equal(buffer, "Zombie Madness")) formatex(buffer, charsmax(buffer), "%L", id, "MENU_EXTRA3")
			}
			case EXTRA_INFBOMB: {
				if((!get_pcvar_num(cvar_extrainfbomb) && !g_escape_map) || (!get_pcvar_num(cvar_extrainfbomb_ze) && g_escape_map) || g_infbombcounter >= get_pcvar_num(cvar_infbomblimit)) continue;
				ArrayGetString(g_extraitem_name, item, buffer, charsmax(buffer))
				if(equal(buffer, "Infection Bomb")) formatex(buffer, charsmax(buffer), "%L", id, "MENU_EXTRA4")
			}
			default: {
				if(item >= EXTRA_WEAPONS_STARTID && item <= EXTRAS_CUSTOM_STARTID-1 && !get_pcvar_num(cvar_extraweapons)) continue;

				if(ArrayGetCell(g_extraitem_name_by_lang, item)) {
					ArrayGetString(g_extraitem_lang_key, item, buffer, charsmax(buffer))
					formatex(buffer, charsmax(buffer), "%L", id, buffer)
				}
				else ArrayGetString(g_extraitem_name, item, buffer, charsmax(buffer))
			}
		}

		ExecuteForward(g_forwards[ITEM_SELECTED_PRE], g_fwDummyResult, id, item); // Item selected Pre forward
		if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE) continue; // Not Show the Item Extra

		// Add Item Name and Cost
		if(g_fwDummyResult >= ZP_PLUGIN_HANDLED || g_ammopacks[id] < ArrayGetCell(g_extraitem_cost, item)) {
			formatex(menu, charsmax(menu), "\d%s \d[%d] \d%s", buffer, ArrayGetCell(g_extraitem_cost, item), g_AdditionalMenuText)
			buffer[0] = item
			buffer[1] = 0
			menu_additem(menuid, menu, buffer, 0, (1<<30));
		}
		else {
			formatex(menu, charsmax(menu), "%s \r[%d] \w%s", buffer, ArrayGetCell(g_extraitem_cost, item), g_AdditionalMenuText)
			buffer[0] = item
			buffer[1] = 0
			menu_additem(menuid, menu, buffer)
		}
	}
	if(menu_items(menuid) <= 0) { // No items to display?
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_EXTRAS")
		menu_destroy(menuid)
		return;
	}

	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menuid, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menuid, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	MENU_PAGE_EXTRAS = min(MENU_PAGE_EXTRAS, menu_pages(menuid)-1) // If remembered page is greater than number of pages, clamp down the value

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menuid, MENU_PAGE_EXTRAS)
}

public show_menu_zclass(id) { // Zombie Class Menu
	if(!is_user_valid_connected(id)) return;

	if(g_isbot[id]) { // Bots pick their zombie class randomly
		g_zombieclassnext[id] = random_num(0, g_zclass_i - 1)
		g_choosed_zclass[id] = true
		zombieme(id, 0, 0, 2, 0)
		return;
	}

	static menuid, menu[256], class, buffer[64], buffer2[64]

	// Title
	formatex(menu, charsmax(menu), "%L\r", id, "MENU_ZCLASS_TITLE")
	menuid = menu_create(menu, "menu_zclass")

	for(class = 0; class < g_zclass_i; class++) { // Class List
		g_AdditionalMenuText[0] = 0

		// Retrieve name and info
		if(ArrayGetCell(g_zclass_lang_enable, class)) {
			ArrayGetString(g_zclass_name_lang_key, class, buffer, charsmax(buffer))
			formatex(buffer, charsmax(buffer), "%L", id, buffer)

			ArrayGetString(g_zclass_info_lang_key, class, buffer2, charsmax(buffer2))
			formatex(buffer2, charsmax(buffer), "%L", id, buffer2)
		}
		else {
			ArrayGetString(g_zclass_name, class, buffer, charsmax(buffer))
			ArrayGetString(g_zclass_info, class, buffer2, charsmax(buffer2))
		}


		ExecuteForward(g_forwards[CLASS_CHOOSED_PRE], g_fwDummyResult, id, class); // Item selected Pre forward
		if(g_fwDummyResult < ZP_PLUGIN_SUPERCEDE) { // Not Show the Zombie Class
			formatex(menu, charsmax(menu), "%s%s \r[\d%s\r] \r%s %s", g_fwDummyResult >= ZP_PLUGIN_HANDLED ? "\d" : "\w", buffer, buffer2, (class == g_zombieclassnext[id]) ? "[\dX\r]" : "[]", g_AdditionalMenuText)
			buffer[0] = class; buffer[1] = 0
			if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) menu_additem(menuid, menu, buffer, 0, (1<<30));
			else menu_additem(menuid, menu, buffer)
		}
	}

	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menuid, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menuid, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	MENU_PAGE_ZCLASS = min(MENU_PAGE_ZCLASS, menu_pages(menuid)-1) // If remembered page is greater than number of pages, clamp down the value

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menuid, MENU_PAGE_ZCLASS)
}


public show_menu_human_class(taskid) { // Zombie Class Menu
	static id // Get player's id
	(taskid > MaxClients) ? (id = ID_SPAWN) : (id = taskid);

	if(!is_user_valid_connected(id) || !g_hclass_i) return;

	if(g_isbot[id]) { // Bots pick their zombie class randomly
		g_hclass_next[id] = random_num(0, g_hclass_i - 1)
		g_choosed_hclass[id] = true
		return;
	}

	static menuid, menu[256], class, buffer[64], buffer2[64]

	// Title
	formatex(menu, charsmax(menu), "%L\r", id, "MENU_HCLASS_TITLE")
	menuid = menu_create(menu, "menu_hclass")

	for(class = 0; class < g_hclass_i; class++) { // Class List
		g_AdditionalMenuText[0] = 0

		// Retrieve name and info
		if(ArrayGetCell(g_hclass_lang_enable, class)) {
			ArrayGetString(g_hclass_name_lang_key, class, buffer, charsmax(buffer))
			formatex(buffer, charsmax(buffer), "%L", id, buffer)

			ArrayGetString(g_hclass_info_lang_key, class, buffer2, charsmax(buffer2))
			formatex(buffer2, charsmax(buffer), "%L", id, buffer2)
		}
		else {
			ArrayGetString(g_hclass_name, class, buffer, charsmax(buffer))
			ArrayGetString(g_hclass_info, class, buffer2, charsmax(buffer2))
		}


		ExecuteForward(g_forwards[H_CLASS_CHOOSED_PRE], g_fwDummyResult, id, class); // Item selected Pre forward
		if(g_fwDummyResult < ZP_PLUGIN_SUPERCEDE) { // Not Show the Zombie Class
			formatex(menu, charsmax(menu), "%s%s \r[\d%s\r] \r%s %s", g_fwDummyResult >= ZP_PLUGIN_HANDLED ? "\d" : "\w", buffer, buffer2, (class == g_hclass_next[id]) ? "[\dX\r]" : "[]", g_AdditionalMenuText)
			buffer[0] = class; buffer[1] = 0
			if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) menu_additem(menuid, menu, buffer, 0, (1<<30));
			else menu_additem(menuid, menu, buffer)
		}
	}

	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menuid, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menuid, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	MENU_PAGE_HCLASS = min(MENU_PAGE_HCLASS, menu_pages(menuid)-1) // If remembered page is greater than number of pages, clamp down the value

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menuid, MENU_PAGE_HCLASS)
}

public show_menu_game_mode(id) { // Custom game mode menu
	if(!g_isconnected[id]) return;

	if(g_gamemodes_i == MAX_GAME_MODES) { // No custom game modes registered ?
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_GAME_MODES") // Print a message
		show_menu3_admin(id) // Show the main admin menu and stop
		return;
	}

	static menuid, menu[128], game, buffer[32], gm_id // Create vars necessary for displaying the game modes menu

	// Title
	formatex(menu, charsmax(menu), "%L \r", id, "MENU_ADMIN_CUSTOM_TITLE")
	menuid = menu_create(menu, "menu_mode")

	for(game = MAX_GAME_MODES; game < g_gamemodes_i; game++) { // Game mode List
		ExecuteForward(g_forwards[GM_SELECTED_PRE], g_fwDummyResult, id, game);

		if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE) continue;

		gm_id = (game - MAX_GAME_MODES)

		if(ArrayGetCell(g_gm_name_by_lang, gm_id)) {
			ArrayGetString(g_gm_lang_key, gm_id, buffer, charsmax(buffer)) // Retrieve the game mode's name
			formatex(buffer, charsmax(buffer), "%L", id, buffer)
		}
		else ArrayGetString(g_gm_name, gm_id, buffer, charsmax(buffer)) // Retrieve the game mode's name

		// Check for access flags and other conditions
		if((get_user_flags(id) & ArrayGetCell(g_gm_flag, gm_id)) && allowed_custom_game() && is_gamemode_enable(game) && g_fwDummyResult < ZP_PLUGIN_HANDLED) {
			formatex(menu, charsmax(menu), "%L %s ", id, "MENU_ADMIN1_CUSTOM", buffer)
			buffer[0] = game
			buffer[1] = 0
			menu_additem(menuid, menu, buffer)
		}
		else {
			formatex(menu, charsmax(menu), "\d%L %s", id, "MENU_ADMIN1_CUSTOM", buffer)
			buffer[0] = game
			buffer[1] = 0
			menu_additem(menuid, menu, buffer, 0, (1<<30))
		}
	}

	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menuid, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menuid, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	MENU_PAGE_GAMEMODES = min(MENU_PAGE_GAMEMODES, menu_pages(menuid)-1)

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menuid, MENU_PAGE_GAMEMODES)
}

public show_menu_admin(id) { // Admin Menu
	static szText[999], menu, userflags, i;
	userflags = get_user_flags(id)
	formatex(szText, charsmax(szText), "\y%L\r", id, "MENU_ADMIN_TITLE")

	menu = menu_create(szText, "menu_admin")

	if(g_newround && userflags & (g_access_flag[ACCESS_MODE_INFECTION]) || !g_newround && userflags & (g_access_flag[ACCESS_MAKE_ZOMBIE | ACCESS_MAKE_HUMAN]))
		formatex(szText, charsmax(szText), "\w%L", id, "MENU_ADMIN1");
	else formatex(szText, charsmax(szText), "\d%L", id, "MENU_ADMIN1");
	menu_additem(menu, szText, "0")

	for(i = 1; i < ACTION_RESPAWN_PLAYER; i++) {
		ExecuteForward(g_forwards[sp_adm_actions[i][act_iszm] ? ZM_SP_CHOSSED_PRE : HM_SP_CHOSSED_PRE], g_fwDummyResult, id, sp_adm_actions[i][act_classid]);
		if(userflags & (g_access_flag[g_newround ? sp_adm_actions[i][act_mode_class] : sp_adm_actions[i][act_make_class]]) && g_fwDummyResult < ZP_PLUGIN_HANDLED)
			formatex(szText, charsmax(szText), "\w%L", id, sp_adm_actions[i][act_lang])
		else formatex(szText, charsmax(szText), "\d%L", id, sp_adm_actions[i][act_lang]);

		if(g_fwDummyResult < ZP_PLUGIN_SUPERCEDE && (zm_special_enable[sp_adm_actions[i][act_classid]] && sp_adm_actions[i][act_iszm] || hm_special_enable[sp_adm_actions[i][act_classid]] && !sp_adm_actions[i][act_iszm])) {
			if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) menu_additem(menu, szText, fmt("%d", i), 0, (1<<30))
			else menu_additem(menu, szText, fmt("%d", i))
		}
	}

	// Back - Next - Exit
	menu_setprop(menu, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menu, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menu, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	MENU_PAGE_SPECIAL_CLASS = min(MENU_PAGE_SPECIAL_CLASS, menu_pages(menu)-1)

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menu, MENU_PAGE_SPECIAL_CLASS)
}
// Admin Menu 2
new const menu2_adm_langs[][] = { "MENU_ADMIN17", "MENU_ADMIN18", "MENU_ADMIN19", "MENU_ADMIN20", "MENU_ADMIN21",  "MENU_ADMIN22", "MENU_ADMIN23",
"MENU_ADMIN24", "MENU_ADMIN25", "MENU_ADMIN26", "MENU_ADMIN27", "MENU_ADMIN5", "MENU_ADMIN6", "MENU_ADMIN7", "MENU_ADMIN10" }
show_menu2_admin(id) {
	static szText[500], userflags, i, menu
	userflags = get_user_flags(id)

	formatex(szText, charsmax(szText), "\y%L\r", id, "MENU2_ADMIN_TITLE")
	menu = menu_create(szText, "menu2_admin")

	for(i = MODE_INFECTION; i < MAX_GAME_MODES; i++) {
		g_AdditionalMenuText[0] = 0
		ExecuteForward(g_forwards[GM_SELECTED_PRE], g_fwDummyResult, id, i);

		if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE || allowed_game_mode(i) == -1)
			continue;

		if(i > MODE_INFECTION && i < MAX_GAME_MODES) if(!is_gamemode_enable(i)) continue;

		if(userflags & (g_access_flag[i]) && allowed_game_mode(i) && g_fwDummyResult < ZP_PLUGIN_HANDLED) {
			formatex(szText, charsmax(szText), "\w%L %s", id, menu2_adm_langs[i-MODE_INFECTION], g_AdditionalMenuText)
			menu_additem(menu, szText, fmt("%d", i))
		}
		else {
			formatex(szText, charsmax(szText), "\d%L %s", id, menu2_adm_langs[i-MODE_INFECTION], g_AdditionalMenuText)
			menu_additem(menu, szText, fmt("%d", i), 0, (1<<30))
		}
	}

	MENU_PAGE_START_MODES = min(MENU_PAGE_START_MODES, menu_pages(menu)-1) // If remembered page is greater than number of pages, clamp down the value

	// Back - Next - Exit
	menu_setprop(menu, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"));
	menu_setprop(menu, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"));
	menu_setprop(menu, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"));

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menu, MENU_PAGE_START_MODES)
}
// Admin Menu 3
show_menu3_admin(id) {
	static menu[999], len, userflags
	len = 0
	userflags = get_user_flags(id)

	len += formatex(menu[len], charsmax(menu) - len, "\y%L^n^n", id, "MENU3_ADMIN_TITLE") // Title

	// 1. Admin menu of classes
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", (userflags & g_access_flag[ACCESS_ADMIN_MENU]) ? "\r1.\w" : "\d1.", id, "MENU_ADMIN")

	// 2. Main Modes admin menu
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", (userflags & g_access_flag[ACCESS_ADMIN_MENU2]) ? "\r2.\w" : "\d2.", id, "MENU2_ADMIN")

	// 3. Custom modes admin menu
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", (userflags & g_access_flag[ACCESS_ADMIN_MENU3]) ? "\r3.\w" : "\d3.", id, "MENU_ADMIN_CUSTOM")

	// 4. Respawn Player
	len += formatex(menu[len], charsmax(menu) - len, "%s %L^n", (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS]) ? "\r4.\w" : "\d4.", id, "MENU_ADMIN4")

	// 5 and 6. Make Custom Special Class (Human/Zombie)
	len += formatex(menu[len], charsmax(menu) - len, "\r5.\w %L^n", id, "MENU_ADMIN_CUSTOM_SP_H")
	len += formatex(menu[len], charsmax(menu) - len, "\r6.\w %L^n^n", id, "MENU_ADMIN_CUSTOM_SP_Z")

	// 0. Exit
	len += formatex(menu[len], charsmax(menu) - len, "^n\r0.\w %L", id, "MENU_EXIT")

	fixAmxMenu(id); // Fix for AMXX custom menus

	show_menu(id, KEYSMENU, menu, -1, "Menu3 Admin")
}
public show_menu_make_special(id, zombie) {
	if(!g_isconnected[id]) return; // Player disconnected

	// No custom game modes registered ?
	if(g_hm_specials_i == MAX_SPECIALS_HUMANS && !zombie || g_zm_specials_i == MAX_SPECIALS_ZOMBIES && zombie) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_CUSTOM_SP") // Print a message
		show_menu3_admin(id) // Show the main admin menu and stop
		return;
	}

	static menuid, menu[128], i, buffer[32], sp_id // Create vars necessary for displaying the game modes menu
	static Array:Sp_Enable, Array:Sp_Name_Lang, Array:Sp_Lang_key, Array:Sp_Name, Array:Sp_Flags;
	static Min_Sp_Class, Max_Sp_Class, Fwd_ID, Menu_Hand[100], Menu_Page, userFlags;

	if(zombie) {
		formatex(menu, charsmax(menu), "%L \r", id, "MENU_ADMIN_CUSTOM_SP_Z") // Title
		Sp_Enable = g_zm_sp_enable;
		Sp_Name_Lang = g_zm_sp_name_by_lang
		Sp_Lang_key = g_zm_sp_lang_key
		Sp_Name = g_zm_sp_name
		Sp_Flags = g_zm_sp_flags
		Fwd_ID = ZM_SP_CHOSSED_PRE
		Max_Sp_Class = g_zm_specials_i;
		Min_Sp_Class = MAX_SPECIALS_ZOMBIES;
		Menu_Hand = "custom_zm_sp_handler"
		Menu_Page = MENU_PAGE_CUSTOM_SP_Z
	}
	else {
		formatex(menu, charsmax(menu), "%L \r", id, "MENU_ADMIN_CUSTOM_SP_H") // Title
		Sp_Enable = g_hm_sp_enable;
		Sp_Name_Lang = g_hm_sp_name_by_lang
		Sp_Lang_key = g_hm_sp_lang_key
		Sp_Name = g_hm_sp_name
		Sp_Flags = g_hm_sp_flags
		Fwd_ID = HM_SP_CHOSSED_PRE
		Max_Sp_Class = g_hm_specials_i;
		Min_Sp_Class = MAX_SPECIALS_HUMANS;
		Menu_Hand = "custom_hm_sp_handler"
		Menu_Page = MENU_PAGE_CUSTOM_SP_H
	}
	menuid = menu_create(menu, Menu_Hand)
	userFlags = get_user_flags(id)
	for(i = Min_Sp_Class; i < Max_Sp_Class; i++) {

		sp_id = i-Min_Sp_Class

		if(ArrayGetCell(Sp_Enable, sp_id) == 0) continue;

		ExecuteForward(g_forwards[Fwd_ID], g_fwDummyResult, id, i);
		if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE) continue;

		if(ArrayGetCell(Sp_Name_Lang, sp_id)) {
			ArrayGetString(Sp_Lang_key, sp_id, buffer, charsmax(buffer))
			formatex(buffer, charsmax(buffer), "%L", id, buffer)
		}
		else ArrayGetString(Sp_Name, sp_id, buffer, charsmax(buffer));

		// Check for access flags and other conditions
		if(userFlags & ArrayGetCell(Sp_Flags, sp_id) && g_fwDummyResult < ZP_PLUGIN_HANDLED) {
			formatex(menu, charsmax(menu), "%L", id, "MENU_MAKE_CUSTOM_SP", buffer)
			menu_additem(menuid, menu, fmt("%d", i))
		}
		else {
			formatex(menu, charsmax(menu), "\d%L", id, "MENU_MAKE_CUSTOM_SP", buffer)
			menu_additem(menuid, menu, fmt("%d", i), 0, (1<<30))
		}
	}
	if(menu_items(menuid) <= 0) { // No items to display?
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_CUSTOM_SP") // Print a message
		show_menu3_admin(id)
		menu_destroy(menuid)
		return;
	}

	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menuid, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menuid, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	Menu_Page = min(Menu_Page, menu_pages(menuid)-1) // If remembered page is greater than number of pages, clamp down the value
	fixAmxMenu(id); // Fix for AMXX custom menus
	menu_display(id, menuid, Menu_Page)
}
public custom_hm_sp_handler(id, menuid, item) {
	if(!is_user_connected(id)) {
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_CUSTOM_SP_H)
	if(item == MENU_EXIT) {
		menu_destroy(menuid)
		show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}

	static data[6], iName[64], access, callback
	menu_item_getinfo(menuid, item, access, data, 5, iName, 63, callback)
	PL_ACTION = str_to_num(data)

	ExecuteForward(g_forwards[HM_SP_CHOSSED_PRE], g_fwDummyResult, id, PL_ACTION);

	if(ArrayGetCell(g_hm_sp_enable, PL_ACTION-MAX_SPECIALS_HUMANS) == 0 || g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		menu_destroy(menuid)
		show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}
	if(!(get_user_flags(id) & ArrayGetCell(g_hm_sp_flags, PL_ACTION-MAX_SPECIALS_HUMANS))) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
		menu_destroy(menuid)
		show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}

	make_user_sp_pl(id, 0)
	return PLUGIN_CONTINUE
}
public custom_zm_sp_handler(id, menuid, item) {
	if(!is_user_connected(id)) {
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_CUSTOM_SP_Z)

	if(item == MENU_EXIT) {
		menu_destroy(menuid)
		show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}

	static data[6], iName[64], access, callback
	menu_item_getinfo(menuid, item, access, data, 5, iName, 63, callback)
	PL_ACTION = str_to_num(data)

	ExecuteForward(g_forwards[ZM_SP_CHOSSED_PRE], g_fwDummyResult, id, PL_ACTION);

	if(ArrayGetCell(g_zm_sp_enable, PL_ACTION-MAX_SPECIALS_ZOMBIES) == 0 || g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		menu_destroy(menuid)
		show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}

	if(!(get_user_flags(id) & ArrayGetCell(g_zm_sp_flags, PL_ACTION-MAX_SPECIALS_ZOMBIES))) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
		menu_destroy(menuid)
		show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}

	make_user_sp_pl(id, 1)
	return PLUGIN_CONTINUE
}
public make_user_sp_pl(id, zombie) {

	static menu[256], special_name[128], player, szTempid[10], sp_id, Array:Arr_Sp[3], menuid

	if(zombie) {
		sp_id = PL_ACTION-MAX_SPECIALS_ZOMBIES
		Arr_Sp[0] = g_zm_sp_name_by_lang
		Arr_Sp[1] = g_zm_sp_lang_key
		Arr_Sp[2] = g_zm_sp_name

	}
	else  {
		sp_id = PL_ACTION-MAX_SPECIALS_HUMANS
		Arr_Sp[0] = g_hm_sp_name_by_lang
		Arr_Sp[1] = g_hm_sp_lang_key
		Arr_Sp[2] = g_hm_sp_name
	}

	if(ArrayGetCell(Arr_Sp[0], sp_id)) {
		ArrayGetString(Arr_Sp[1], sp_id, special_name, charsmax(special_name))
		formatex(special_name, charsmax(special_name), "%L", id, special_name)
	}
	else ArrayGetString(Arr_Sp[2], sp_id, special_name, charsmax(special_name))

	formatex(menu, charsmax(menu), "%L", id, "MENU_MAKE_CUSTOM_SP", special_name)
	menuid = menu_create(menu, "make_custom_sp")

	// Player List
	for(player = 1; player <= MaxClients; player++) {
		if(!g_isconnected[player]) continue; // Skip if not connected

		if(isCustomSpecialZombie(player)) {
			sp_id = g_zm_special[player]-MAX_SPECIALS_ZOMBIES

			if(ArrayGetCell(g_zm_sp_name_by_lang, sp_id)) {
				ArrayGetString(g_zm_sp_lang_key, sp_id, special_name, charsmax(special_name))
				formatex(special_name, charsmax(special_name), "%L", id, special_name)
			}
			else ArrayGetString(g_zm_sp_name, sp_id, special_name, charsmax(special_name))
		}
		else if(isCustomSpecialHuman(player)) {
			sp_id = g_hm_special[player]-MAX_SPECIALS_HUMANS

			if(ArrayGetCell(g_hm_sp_name_by_lang, sp_id)) {
				ArrayGetString(g_hm_sp_lang_key, sp_id, special_name, charsmax(special_name))
				formatex(special_name, charsmax(special_name), "%L", id, special_name)
			}
			else ArrayGetString(g_hm_sp_name, sp_id, special_name, charsmax(special_name))
		}
		else formatex(special_name, charsmax(special_name), "%L", id, g_zombie[player] ? zm_special_class_langs[g_zm_special[player]] : hm_special_class_langs[g_hm_special[player]])

		// Format text depending on the action to take
		if(allowed_special(player, zombie, PL_ACTION))
			formatex(menu, charsmax(menu), "%s %s[%s]", g_playername[player], g_zombie[player] ? "\r" : "\y", special_name)
		else formatex(menu, charsmax(menu), "\d%s [%s]", g_playername[player], special_name)

		// Add player
		formatex(szTempid, charsmax(szTempid), zombie ? "Z-%d" : "H-%d", player);
		menu_additem(menuid, menu, szTempid);
	}

	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menuid, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menuid, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	MENU_PAGE_PLAYERS = min(MENU_PAGE_PLAYERS, menu_pages(menuid)-1) // If remembered page is greater than number of pages, clamp down the value

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menuid, MENU_PAGE_PLAYERS)
	return PLUGIN_CONTINUE
}

public make_custom_sp(id, menuid, item) {
	if(!is_user_connected(id)) {
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	static data[6], iName[64], access, callback, player, menudummy, zombie, Array:Arr_Flags, sp_id
	menu_item_getinfo(menuid, item, access, data, charsmax(data), iName, charsmax(iName), callback)
	player_menu_info(id, menudummy, menudummy, MENU_PAGE_PLAYERS) // Remember player's menu page
	player = str_to_num(data[2])

	if(data[0] == 'Z') {
		zombie = 1
		Arr_Flags = g_zm_sp_enable
		sp_id = PL_ACTION-MAX_SPECIALS_ZOMBIES
	}
	else {
		zombie = 0
		Arr_Flags = g_hm_sp_enable
		sp_id = PL_ACTION-MAX_SPECIALS_HUMANS
	}

	if(item == MENU_EXIT) {
		menu_destroy(menuid)
		show_menu_make_special(id, zombie)
		return PLUGIN_HANDLED;
	}
	if(ArrayGetCell(Arr_Flags, sp_id) == 0) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		menu_destroy(menuid)
		show_menu_make_special(id, zombie)
		return PLUGIN_HANDLED;
	}
	if(!(get_user_flags(id) & ArrayGetCell(Arr_Flags, sp_id))) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
		menu_destroy(menuid)
		show_menu_make_special(id, zombie)
		return PLUGIN_HANDLED;
	}
	if(allowed_special(player, zombie, PL_ACTION)) command_custom_special(id, player, PL_ACTION, zombie)
	else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")

	make_user_sp_pl(id, zombie)

	return PLUGIN_HANDLED;
}

show_menu_player_list(id) { // Player List Menu
	static menuid, menu[9999], player, userflags, buffer[4], special_name[128], sp_id
	userflags = get_user_flags(id)

	formatex(menu, charsmax(menu), "%L\r", id, sp_adm_actions[PL_ACTION][act_lang])
	menuid = menu_create(menu, "menu_player_list")

	for(player = 1; player <= MaxClients; player++) { // Player List
		if(!g_isconnected[player]) continue;

		if(isCustomSpecialZombie(player)) {
			sp_id = g_zm_special[player]-MAX_SPECIALS_ZOMBIES
			if(ArrayGetCell(g_zm_sp_name_by_lang, sp_id)) {
				ArrayGetString(g_zm_sp_lang_key, sp_id, special_name, charsmax(special_name))
				formatex(special_name, charsmax(special_name), "%L", id, special_name)
			}
			else ArrayGetString(g_zm_sp_name, sp_id, special_name, charsmax(special_name))
		}
		else if(isCustomSpecialHuman(player)) {
			sp_id = g_hm_special[player]-MAX_SPECIALS_HUMANS
			if(ArrayGetCell(g_hm_sp_name_by_lang, sp_id)) {
				ArrayGetString(g_hm_sp_lang_key, sp_id, special_name, charsmax(special_name))
				formatex(special_name, charsmax(special_name), "%L", id, special_name)
			}
			else ArrayGetString(g_hm_sp_name, sp_id, special_name, charsmax(special_name))
		}
		else formatex(special_name, charsmax(special_name), "%L", id, g_zombie[player] ? zm_special_class_langs[g_zm_special[player]] : hm_special_class_langs[g_hm_special[player]])


		if(PL_ACTION == ACTION_ZOMBIEFY_HUMANIZE)  {  // Zombiefy/Humanize command
			if(!g_zombie[player] && allowed_zombie(player) && ((userflags & g_access_flag[g_newround ? ACCESS_MODE_INFECTION : ACCESS_MAKE_ZOMBIE]))
			|| g_zombie[player] && allowed_human(player) && (userflags & g_access_flag[ACCESS_MAKE_HUMAN]))
				formatex(menu, charsmax(menu), "%s %s[%s]", g_playername[player], g_zombie[player] ? "\r" : "\y", special_name)
			else formatex(menu, charsmax(menu), "\d%s [%s]", g_playername[player], special_name)
		}
		else if(PL_ACTION == ACTION_RESPAWN_PLAYER) { // Respawn command
			if(allowed_respawn(player) && (userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS])) formatex(menu, charsmax(menu), "%s", g_playername[player])
			else formatex(menu, charsmax(menu), "\d%s", g_playername[player])
		}
		else {
			if(allowed_special(player, sp_adm_actions[PL_ACTION][act_iszm], sp_adm_actions[PL_ACTION][act_classid]) && ((userflags & g_access_flag[g_newround ? sp_adm_actions[PL_ACTION][act_mode_class] : sp_adm_actions[PL_ACTION][act_make_class]])))
				formatex(menu, charsmax(menu), "%s %s[%s]", g_playername[player], g_zombie[player] ? "\r" : "\y", special_name)
			else formatex(menu, charsmax(menu), "\d%s [%s]", g_playername[player], special_name)
		}

		// Add player
		buffer[0] = player; buffer[1] = 0
		menu_additem(menuid, menu, buffer)
	}

	// Back - Next - Exit
	menu_setprop(menuid, MPROP_BACKNAME, fmt("%L", id, "MENU_BACK"))
	menu_setprop(menuid, MPROP_NEXTNAME, fmt("%L", id, "MENU_NEXT"))
	menu_setprop(menuid, MPROP_EXITNAME, fmt("%L", id, "MENU_EXIT"))

	MENU_PAGE_PLAYERS = min(MENU_PAGE_PLAYERS, menu_pages(menuid)-1) // If remembered page is greater than number of pages, clamp down the value

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menuid, MENU_PAGE_PLAYERS)
	return PLUGIN_CONTINUE;
}

/*================================================================================
 [Menu Handlers]
=================================================================================*/
public menu_game(id, key) { // Game Menu
	switch (key) {
		case 0: { // Buy Weapons
			// Custom buy menus enabled?
			if(!get_pcvar_num(cvar_buycustom)) {
				client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
				return PLUGIN_HANDLED
			}

			WPN_AUTO_ON = 0 // Disable the remember selection setting
			client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "BUY_ENABLED")

			// Show menu if player hasn't yet bought anything
			if(g_canbuy[id] == 2) show_menu_buy(id, 0)
			else if(g_canbuy[id] == 1) show_menu_buy(id, 1)
		}
		case 1: { // Extra Items
			if(get_pcvar_num(cvar_extraitems)) { // Extra items enabled?
				// Check whether the player is able to buy anything
				if(g_newround && !get_pcvar_num(cvar_allow_buy_no_start)) client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "WAIT_ROUND_BEGINS")
				else if(g_endround) client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "ROUND_ENDED")
				else if(g_isalive[id]) show_menu_extras(id)
				else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
			}
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_EXTRAS")
		}
		case 2: { // Zombie Classes
			if(get_pcvar_num(cvar_zclasses)) show_menu_zclass(id) // Zombie classes enabled?
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ZCLASSES")
		}
		case 3: { // Human Classes
			if(g_hclass_i > 1 && get_pcvar_num(cvar_hclasses)) show_menu_human_class(id)
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_HCLASSES")
		}
		case 4: { // Unstuck
			if(g_isalive[id]) { // Check if player is stuck
				ExecuteForward(g_forwards[UNSTUCK_PRE], g_fwDummyResult, id);

				if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
					client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
					return PLUGIN_HANDLED;
				}
				else if(!g_zombie[id] && !get_pcvar_num(cvar_human_unstuck))
					client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_ZOMBIE_ONLY")

				else if(is_player_stuck(id)) {
					// Move to an initial spawn
					if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
					else do_random_spawn(id, 1) // regular spawn
				}
				else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_STUCK")
			}
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		}
		case 5: show_menu_personal(id); // Personal Options
		case 6: { // Player alive?
			if(g_isalive[id]) {
				// Prevent abuse by non-admins if block suicide setting is enabled
				if(get_pcvar_num(cvar_blocksuicide) && !(get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MENU])) {
					client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
					return PLUGIN_HANDLED;
				}
				check_round(id) // Check that we still have both humans and zombies to keep the round going
				dllfunc(DLLFunc_ClientKill, id) // Kill him before he switches team
			}
			if(get_pcvar_num(cvar_statssave)) save_stats(id) // Temporarily save player stats?

			// Remove previous tasks
			remove_task(id+TASK_TEAM)
			remove_task(id+TASK_FLASH)
			remove_task(id+TASK_CHARGE)
			remove_task(id+TASK_SPAWN)
			remove_task(id+TASK_BLOOD)
			remove_task(id+TASK_AURA)

			// Then move him to the spectator team
			fm_cs_set_user_team(id, FM_CS_TEAM_SPECTATOR)
			fm_user_team_update(id)
		}
		case 8: { // Admin Menu
			// Check if player has the required access
			if(get_user_flags(id) & g_access_flag[ACCESS_ADMIN_MENU3]) show_menu3_admin(id)
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
		}
	}
	return PLUGIN_HANDLED;
}
public menu_buy(id, key) { // Buy Menu
	if(!g_isalive[id] || g_zombie[id] || g_hm_special[id] > 0) return PLUGIN_HANDLED;

	// Special keys / weapon list exceeded
	if(key >= MENU_KEY_AUTOSELECT || WPN_SELECTION >= ArraySize(g_wpn_name[WPN_TYPE])) {
		switch (key) {
			case MENU_KEY_AUTOSELECT: WPN_AUTO_ON = 1 - WPN_AUTO_ON // toggle auto select
			case MENU_KEY_NEXT: { // next/back
				if(WPN_STARTID+7 < ArraySize(g_wpn_name[WPN_TYPE])) WPN_STARTID += 7
				else WPN_STARTID = 0
			}
			case MENU_KEY_EXIT: return PLUGIN_HANDLED; // exit
		}
		show_menu_buy(id, WPN_TYPE) // Show buy menu again
		return PLUGIN_HANDLED;
	}
	if(WPN_TYPE == 0) {
		WPN_AUTO_PRI = WPN_SELECTION // Store selected weapon id
		if(buy_weapon(id, WPN_AUTO_PRI, 0)) { // Buy primary weapon
			WPN_STARTID = 0
			show_menu_buy(id, 1) // Show pistols menu
		}
	}
	else {
		WPN_AUTO_SEC = WPN_SELECTION // Store selected weapon id
		buy_weapon(id, WPN_AUTO_SEC, 1) // Buy primary weapon
	}

	return PLUGIN_HANDLED;
}
buy_weapon(id, selection, sec) { // Buy Primary/Secondary Weapon
	static weaponid, wname[32]

	// Small Bug Prevention
	if(sec > 1) sec = 1
	if(sec < 0) sec = 0

	ExecuteForward(g_forwards[WEAPON_SELECTED_PRE], g_fwDummyResult, id, sec, selection);

	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
		WPN_AUTO_ON = 0
		show_menu_buy(id, sec)
		return 0;
	}
	if(!sec) {
		drop_weapons(id, 1) // Drop previous weapons
		fm_strip_user_weapons(id) // Strip off from weapons
		fm_give_item(id, "weapon_knife")

		// Give additional items
		for(new i = 0; i < ArraySize(g_additional_items); i++) {
			ArrayGetString(g_additional_items, i, wname, charsmax(wname))
			fm_give_item(id, wname)
		}
	}
	drop_weapons(id, 2) // Drop secondary gun

	if(!ArrayGetCell(g_wpn_is_custom[sec], selection)) {
		// Get weapon's id and name
		weaponid = ArrayGetCell(g_wpn_ids[sec], selection)
		ArrayGetString(g_wpn_realname[sec], selection, wname, charsmax(wname))

		// Give the new weapon and full ammo
		fm_give_item(id, wname)
		ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[weaponid], AMMOTYPE[weaponid], MAXBPAMMO[weaponid])
	}
	g_canbuy[id] = sec ? 0 : 1 // Weapons bought
	ExecuteForward(g_forwards[WEAPON_SELECTED_POST], g_fwDummyResult, id, sec, selection);
	return 1;
}
public menu_extras(id, menuid, item) { // Extra Items Menu
	if(!is_user_connected(id)) { // Player disconnected?
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_EXTRAS)

	if(item == MENU_EXIT) { // Menu was closed
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}
	if(!g_isalive[id]) { // Dead players are not allowed to buy items
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}
	static buffer[2], dummy, itemid
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	itemid = buffer[0]

	ExecuteForward(g_forwards[ITEM_SELECTED_PRE], g_fwDummyResult, id, itemid); // Item selected Pre forward

	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	buy_extra_item(id, itemid) // Attempt to buy the item
	menu_destroy(menuid)
	return PLUGIN_HANDLED;
}
buy_extra_item(id, itemid, ignorecost = 0) { // Buy Extra Item
	static team; team = ArrayGetCell(g_extraitem_team, itemid)

	if(g_zombie[id] && !IsTeam(team, ArrayGetCell(iTeamIndexZm, g_zm_special[id])) || !g_zombie[id] && !IsTeam(team, ArrayGetCell(iTeamIndexHm, g_hm_special[id]))) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		return;
	}

	// Check for unavailable items
	if((itemid == EXTRA_NVISION && !get_pcvar_num(cvar_extranvision)) || (itemid == EXTRA_ANTIDOTE && ((!get_pcvar_num(cvar_extraantidote) && !g_escape_map)|| (!get_pcvar_num(cvar_extraantidote_ze) && g_escape_map)
	|| g_antidotecounter >= get_pcvar_num(cvar_antidotelimit))) || (itemid == EXTRA_MADNESS && ((!get_pcvar_num(cvar_extramadness) && !g_escape_map) || (!get_pcvar_num(cvar_extramadness_ze) && g_escape_map)
	|| g_madnesscounter >= get_pcvar_num(cvar_madnesslimit))) || (itemid == EXTRA_INFBOMB && ((!get_pcvar_num(cvar_extrainfbomb) && !g_escape_map) || (!get_pcvar_num(cvar_extrainfbomb_ze) && g_escape_map) || g_endround || g_newround && !get_pcvar_num(cvar_allow_buy_no_start)
	|| g_infbombcounter >= get_pcvar_num(cvar_infbomblimit))) || (itemid >= EXTRA_WEAPONS_STARTID && itemid <= EXTRAS_CUSTOM_STARTID-1 && !get_pcvar_num(cvar_extraweapons))) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		return;
	}
	// Check for hard coded items with special conditions
	if((itemid == EXTRA_ANTIDOTE && (g_endround || g_currentmode != MODE_INFECTION && g_currentmode != MODE_MULTI || fnGetZombies() <= 1 || (get_pcvar_num(cvar_deathmatch) && !get_pcvar_num(cvar_respawnafterlast) && fnGetHumans() == 1)))
	|| (itemid == EXTRA_INFBOMB && (g_endround || g_currentmode != MODE_INFECTION && g_currentmode != MODE_MULTI))) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_CANTUSE")
		return;
	}
	if(itemid == EXTRA_ANTIDOTE && fnGetZombies() < get_pcvar_num(cvar_antidote_minzms)) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "ANTIDOTE_NOT_AVALIABLE1", get_pcvar_num(cvar_antidote_minzms))
		return;
	}
	if(itemid == EXTRA_NVISION && g_nvision[id] || itemid == EXTRA_MADNESS && g_nodamage[id]) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_HAVE_ITEM")
		return;
	}

	if(itemid == EXTRA_MADNESS && g_madness_used[id] && get_pcvar_float(cvar_madness_use_countdown) > 0.0) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_WAIT_USE")
		return;
	}

	if(!ignorecost) { // Ignore item's cost?
		// Check that we have enough ammo packs
		if(g_ammopacks[id] < ArrayGetCell(g_extraitem_cost, itemid)) {
			client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "NOT_ENOUGH_AMMO")
			return;
		}
		g_ammopacks[id] -= ArrayGetCell(g_extraitem_cost, itemid) // Deduce item cost
	}
	if(g_isbot[id]) g_bot_extra_count[id]++

	ExecuteForward(g_forwards[ITEM_SELECTED_PRE], g_fwDummyResult, id, itemid); // Item selected pre forward
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) { // Item purchase blocked, restore buyer's ammo packs
		if(!ignorecost) g_ammopacks[id] += ArrayGetCell(g_extraitem_cost, itemid)
		show_menu_extras(id)
		return;
	}
	ExecuteForward(g_forwards[ITEM_SELECTED_POST], g_fwDummyResult, id, itemid); // Item selected post forward
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) { // Item purchase blocked, restore buyer's ammo packs
		if(!ignorecost) g_ammopacks[id] += ArrayGetCell(g_extraitem_cost, itemid)
		return;
	}

	switch (itemid) { // Check which kind of item we're buying
		case EXTRA_NVISION: { // Night Vision
			g_nvision[id] = true
			if(!g_isbot[id]) {
				g_nvisionenabled[id] = true
				user_nightvision(id, 1)
			}
			else cs_set_user_nvg(id, 1)
		}
		case EXTRA_ANTIDOTE: {
			g_antidotecounter++ // Increase antidote purchase count for this round
			humanme(id, 0, 0, 0)
		}
		case EXTRA_MADNESS: { // Zombie Madness
			g_madnesscounter++ // Increase madness purchase count for this round
			set_user_madness(id, 1, -1.0); // Give Zombie Madness
		}
		case EXTRA_INFBOMB: { // Infection Bomb
			g_infbombcounter++ // Increase infection bomb purchase count for this round
			if(user_has_weapon(id, CSW_HEGRENADE)) { // Already own one
				cs_set_user_bpammo(id, CSW_HEGRENADE, cs_get_user_bpammo(id, CSW_HEGRENADE) + 1) // Increase BP ammo on it instead

				// Flash ammo in hud
				message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
				write_byte(AMMOID[CSW_HEGRENADE]) // ammo id
				write_byte(1) // ammo amount
				message_end()

				emit_sound(id, CHAN_ITEM, cs_sounds[1], 1.0, ATTN_NORM, 0, PITCH_NORM) // Play clip purchase sound

				return; // stop here
			}

			fm_give_item(id, "weapon_hegrenade") // Give weapon to the player

			if(g_isbot[id] && user_has_weapon(id, CSW_HEGRENADE)) {
				engclient_cmd(id, "weapon_hegrenade");
				if(pev_valid(id) == PDATA_SAFE) ExecuteHam(Ham_Weapon_PrimaryAttack, get_pdata_cbase(id, 373, 5));
			}
		}
		default: {
			if(itemid >= EXTRA_WEAPONS_STARTID && itemid <= EXTRAS_CUSTOM_STARTID-1) { // Weapons
				static weaponid, wname[32]
				ArrayGetString(g_extraweapon_items, itemid - EXTRA_WEAPONS_STARTID, wname, charsmax(wname))
				weaponid = cs_weapon_name_to_id(wname)

				if(MAXBPAMMO[weaponid] > 2) { // If we are giving a primary/secondary weapon
					if((1<<weaponid) & PRIMARY_WEAPONS_BIT_SUM) drop_weapons(id, 1)
					else drop_weapons(id, 2)

					ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[weaponid], AMMOTYPE[weaponid], MAXBPAMMO[weaponid]) // Give full BP ammo for the new one
				}
				else if(user_has_weapon(id, weaponid)) { // If we are giving a grenade which the user already owns
					cs_set_user_bpammo(id, weaponid, cs_get_user_bpammo(id, weaponid) + 1) // Increase BP ammo on it instead

					// Flash ammo in hud
					message_begin(MSG_ONE_UNRELIABLE, g_msgAmmoPickup, _, id)
					write_byte(AMMOID[weaponid]) // ammo id
					write_byte(1) // ammo amount
					message_end()

					emit_sound(id, CHAN_ITEM, cs_sounds[1], 1.0, ATTN_NORM, 0, PITCH_NORM) // Play clip purchase sound
					return; // stop here
				}
				fm_give_item(id, wname) // Give weapon to the player
			}
		}
	}
}

public menu_zclass(id, menuid, item) { // Zombie Class Menu?
	if(!is_user_valid_connected(id)) {
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	if(item == MENU_EXIT) { // Menu was closed
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}
	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_ZCLASS) // Remember player's menu page

	static buffer[2], dummy, classid, name[64];
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	classid = buffer[0]

	ExecuteForward(g_forwards[CLASS_CHOOSED_PRE], g_fwDummyResult, id, classid); // Class selected Pre forward

	// Not Show the Zombie Class
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
		show_menu_zclass(id)
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	g_zombieclassnext[id] = classid

	if(ArrayGetCell(g_zclass_lang_enable, g_zombieclassnext[id])) {
		ArrayGetString(g_zclass_name_lang_key, g_zombieclassnext[id], name, charsmax(name))
		formatex(name, charsmax(name), "%L", id, name)
	}
	else ArrayGetString(g_zclass_name, g_zombieclassnext[id], name, charsmax(name))

	// Choose Zclass Instantanly
	if(g_isalive[id] && isDefaultZombie(id) && !g_choosed_zclass[id] && get_pcvar_num(cvar_chosse_instantanly[0])) {
		client_print_color(id, print_team_default, "%L %L^4 %s", id, "ZP_CHAT_TAG", id, "ZOMBIE_SELECT_NOW", name)
		g_choosed_zclass[id] = true
		zombieme(id, 0, 0, 2, 0)
	}
	else client_print_color(id, print_team_default, "%L %L^4 %s", id, "ZP_CHAT_TAG", id, "ZOMBIE_SELECT", name)

	// Show selected zombie class info and stats
	client_print_color(id, print_team_default, "%L %L^1:^4 %d^1 |^1 %L^1:^4 %d^1 |^1 %L^1:^4 %d^1 |^1 %L^1:^4 %d%%", id, "ZP_CHAT_TAG", id, "ZOMBIE_ATTRIB1", ArrayGetCell(g_zclass_hp, g_zombieclassnext[id]), id, "ZOMBIE_ATTRIB2", ArrayGetCell(g_zclass_spd, g_zombieclassnext[id]),
	id, "ZOMBIE_ATTRIB3", floatround(Float:ArrayGetCell(g_zclass_grav, g_zombieclassnext[id]) * 800.0), id, "ZOMBIE_ATTRIB4", floatround(Float:ArrayGetCell(g_zclass_kb, g_zombieclassnext[id]) * 100.0))

	ExecuteForward(g_forwards[CLASS_CHOOSED_POST], g_fwDummyResult, id, classid);
	menu_destroy(menuid)
	return PLUGIN_HANDLED;
}


public menu_hclass(id, menuid, item) { // Human Class Menu?
	if(!is_user_valid_connected(id) || !g_hclass_i) {
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	if(item == MENU_EXIT) { // Menu was closed
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}
	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_HCLASS) // Remember player's menu page

	static buffer[2], dummy, classid, name[64];
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	classid = buffer[0]

	ExecuteForward(g_forwards[H_CLASS_CHOOSED_PRE], g_fwDummyResult, id, classid); // Class selected Pre forward

	// Not Show the Human Class
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
		show_menu_human_class(id)
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}

	g_hclass_next[id] = classid

	if(ArrayGetCell(g_hclass_lang_enable, g_hclass_next[id])) {
		ArrayGetString(g_hclass_name_lang_key, g_hclass_next[id], name, charsmax(name))
		formatex(name, charsmax(name), "%L", id, name)
	}
	else ArrayGetString(g_hclass_name, g_hclass_next[id], name, charsmax(name))

	// Choose Human Class Instantanly
	if(g_isalive[id] && isDefaultHuman(id) && !g_choosed_hclass[id] && get_pcvar_num(cvar_chosse_instantanly[1])) {
		client_print_color(id, print_team_default, "%L %L^4 %s", id, "ZP_CHAT_TAG", id, "HUMAN_SELECT_NOW", name)
		g_choosed_hclass[id] = true
		humanme(id, 0, 2, 0)
	}
	else {
		client_print_color(id, print_team_default, "%L %L^4 %s", id, "ZP_CHAT_TAG", id, "HUMAN_SELECT", name)

		if(get_pcvar_num(cvar_buycustom) && g_canbuy[id]) {
			if(g_canbuy[id] == 2) menu_buy_show(id+TASK_SPAWN); // Show custom buy menu?
			else if(g_canbuy[id] == 1) show_menu_buy(id, 1);
		}
	}

	// Show selected human class info and stats
	static hp, armor, speed, Float:Gravity

	hp = ArrayGetCell(g_hclass_hp, g_hclass_next[id])
	armor = ArrayGetCell(g_hclass_armor, g_hclass_next[id])
	speed = ArrayGetCell(g_hclass_speed, g_hclass_next[id])
	Gravity = Float:ArrayGetCell(g_hclass_gravity, g_hclass_next[id])

	if(hp <= 0)
		hp = get_pcvar_num(cvar_hm_health[0])

	if(speed <= 0)
		speed = get_pcvar_num(cvar_hm_spd[0])

	if(Gravity <= 0)
		Gravity = get_pcvar_float(cvar_hmgravity[0])

	client_print_color(id, print_team_default, "%L %L^1:^4 %d^1 |^1 %L^1:^4 %d^1 |^1 %L^1:^4 %d^1 |^1 %L^1:^4 %d", id, "ZP_CHAT_TAG", id, "ZOMBIE_ATTRIB1", hp, id, "ZOMBIE_ATTRIB5", armor, id, "ZOMBIE_ATTRIB2", speed, id, "ZOMBIE_ATTRIB3", floatround(Gravity * 800.0))

	ExecuteForward(g_forwards[H_CLASS_CHOOSED_POST], g_fwDummyResult, id, classid);
	menu_destroy(menuid)
	return PLUGIN_HANDLED;
}

public menu_mode(id, menuid, item) { // Custom game mode menu
	if(!is_user_connected(id)) {
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}
	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_GAMEMODES) // Remember gamemode's menu page

	if(item == MENU_EXIT) {
		menu_destroy(menuid)
		show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}

	static buffer[2], dummy, gameid // Create some necassary vars

	// Retrieve the id of the game mode which was chosen
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	gameid = buffer[0]

	ExecuteForward(g_forwards[GM_SELECTED_PRE], g_fwDummyResult, id, gameid);
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		show_menu_game_mode(id)
		return PLUGIN_HANDLED;
	}
	if(get_user_flags(id) & ArrayGetCell(g_gm_flag, (gameid - MAX_GAME_MODES))) { // Check users access level
		// Only allow the game mode to proceed after some checks
		if(allowed_custom_game() && is_gamemode_enable(gameid)) command_custom_game(gameid, id)
		else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")

		show_menu_game_mode(id) // Show the menu again
		return PLUGIN_HANDLED;
	}
	else {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS") // Player deosnt haves the required access level
		show_menu_game_mode(id) // Show the menu again
	}
	menu_destroy(menuid);
	return PLUGIN_HANDLED;
}



public menu_admin(id, menu, item) { // Admin Menu
	if(!is_user_connected(id)) {
		menu_destroy(menu)
		return PLUGIN_HANDLED;
	}
	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_SPECIAL_CLASS)

	if(item == MENU_EXIT) {
		menu_destroy(menu)
		show_menu3_admin(id)
		return PLUGIN_HANDLED
	}

	static data[6], iName[64], access, callback,  userflags
	menu_item_getinfo(menu, item, access, data, charsmax(data), iName, charsmax(iName), callback)
	userflags = get_user_flags(id)
	PL_ACTION = str_to_num(data)
	if(PL_ACTION == ACTION_ZOMBIEFY_HUMANIZE) {
		if(g_newround && userflags & (g_access_flag[ACCESS_MODE_INFECTION])
		|| !g_newround && userflags & (g_access_flag[ACCESS_MAKE_ZOMBIE] | g_access_flag[ACCESS_MAKE_HUMAN]))
			show_menu_player_list(id) // Show player list for admin to pick a target
		else {
			client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
			show_menu_admin(id)
		}
	}
	else {
		if(userflags & (g_access_flag[g_newround ? sp_adm_actions[PL_ACTION][act_mode_class] : sp_adm_actions[PL_ACTION][act_make_class]]))
			show_menu_player_list(id) // Show player list for admin to pick a target
		else {
			client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
			show_menu_admin(id)
		}
	}

	return PLUGIN_HANDLED;
}
public menu2_admin(id, menu, item) {
	if(item == MENU_EXIT) {
		menu_destroy(menu)
		show_menu3_admin(id)
		return PLUGIN_HANDLED
	}

	static data[6], iName[64], access, callback, key, userflags, menudummy
	menu_item_getinfo(menu, item, access, data, charsmax(data), iName, charsmax(iName), callback)

	player_menu_info(id, menudummy, menudummy, MENU_PAGE_START_MODES) // Remember player's menu page
	userflags = get_user_flags(id)
	key = str_to_num(data)

	ExecuteForward(g_forwards[GM_SELECTED_PRE], g_fwDummyResult, id, key);

	if((userflags & g_access_flag[key]) && allowed_game_mode(key) && g_fwDummyResult < ZP_PLUGIN_HANDLED) {
		remove_task(TASK_MAKEZOMBIE) // Remove Start mode task
		switch (key) { // Log and Print Message
			case MODE_INFECTION: start_infection_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_INFECTION");
			case MODE_NEMESIS: start_nemesis_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_NEMESIS");
			case MODE_ASSASSIN: start_assassin_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_ASSASSIN");
			case MODE_PREDATOR: start_predator_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_PREDATOR");
			case MODE_BOMBARDIER: start_bombardier_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_BOMBARDIER");
			case MODE_DRAGON: start_dragon_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_DRAGON");
			case MODE_SURVIVOR: start_survivor_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_SURVIVOR");
			case MODE_SNIPER: start_sniper_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_SNIPER");
			case MODE_BERSERKER: start_berserker_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_BERSERKER");
			case MODE_WESKER: start_wesker_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_WESKER");
			case MODE_SPY: start_spy_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MODE_SPY");
			case MODE_SWARM: start_swarm_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_SWARM");
			case MODE_MULTI: start_multi_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_MULTI");
			case MODE_PLAGUE: start_plague_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_PLAGUE");
			case MODE_LNJ: start_lnj_mode(0, MODE_SET), zp_log_message(id, 0, "CMD_LNJ");
		}
		ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, key, id)
	}
	else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, (userflags & g_access_flag[key]) ? "CMD_NOT" : "CMD_NOT_ACCESS")

	menu_destroy(menu)
	show_menu2_admin(id)
	return PLUGIN_HANDLED;
}
public menu3_admin(id, key) {
	if(!is_user_valid_connected(id))
		return PLUGIN_CONTINUE

	static userFlags
	userFlags = get_user_flags(id);

	switch (key) {
		case 0: { // Admin Menu Mode
			if(userFlags & g_access_flag[ACCESS_ADMIN_MENU]) show_menu_admin(id) // Check if player has the required access
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
		}
		case 1: { // Admin Menu Class
			if(userFlags & g_access_flag[ACCESS_ADMIN_MENU2]) show_menu2_admin(id) // Check if player has the required access
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
		}
		case 2: { // Admin Menu of Custom Game modes
			if(userFlags & g_access_flag[ACCESS_ADMIN_MENU3]) show_menu_game_mode(id) // Check if player has the required access
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
		}
		case 3: { // Respawn Player
			if(userFlags & g_access_flag[ACCESS_RESPAWN_PLAYERS]) {
				PL_ACTION = ACTION_RESPAWN_PLAYER
				show_menu_player_list(id); // Show player list for admin to pick a target
			}
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS");
		}
		case 4: show_menu_make_special(id, 0);
		case 5: show_menu_make_special(id, 1);
	}
	return PLUGIN_HANDLED;
}
public menu_player_list(id, menuid, item) { // Player List Menu
	if(!is_user_connected(id)) { // Player disconnected?
		menu_destroy(menuid)
		return PLUGIN_HANDLED;
	}
	static menudummy; player_menu_info(id, menudummy, menudummy, MENU_PAGE_PLAYERS) // Remember player's menu page
	if(item == MENU_EXIT) { // Menu was closed
		menu_destroy(menuid)
		if(PL_ACTION != ACTION_RESPAWN_PLAYER) show_menu_admin(id)
		else show_menu3_admin(id)
		return PLUGIN_HANDLED;
	}
	static buffer[2], dummy, playerid // Retrieve player id
	menu_item_getinfo(menuid, item, dummy, buffer, charsmax(buffer), _, _, dummy)
	playerid = buffer[0]

	if(!g_isconnected[playerid]) {
		client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		menu_destroy(menuid)
		show_menu_player_list(id)
		return PLUGIN_HANDLED;
	}
	static userflags; userflags = get_user_flags(id) // Get admin flags

	if(PL_ACTION == ACTION_ZOMBIEFY_HUMANIZE) { // Zombiefy/Humanize command
		if(g_newround && (userflags & g_access_flag[ACCESS_MODE_INFECTION])
		|| !g_newround && (userflags & g_access_flag[g_zombie[playerid] ? ACCESS_MAKE_HUMAN : ACCESS_MAKE_ZOMBIE])) {
			if(!g_zombie[playerid] && allowed_zombie(playerid)) command_zombie(id, playerid)
			else if(g_zombie[playerid] && allowed_human(playerid)) command_human(id, playerid)
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		}
		else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
	}
	else if(PL_ACTION == ACTION_RESPAWN_PLAYER) { // Respawn command
		if(userflags & g_access_flag[ACCESS_RESPAWN_PLAYERS]) {
			if(allowed_respawn(playerid)) command_respawn(id, playerid)
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		}
		else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
	}
	else {
		if(userflags & g_access_flag[g_newround ? sp_adm_actions[PL_ACTION][act_mode_class] : sp_adm_actions[PL_ACTION][act_make_class]]) {
			if(allowed_special(playerid, sp_adm_actions[PL_ACTION][act_iszm], sp_adm_actions[PL_ACTION][act_classid]))
				command_special(id, playerid, sp_adm_actions[PL_ACTION][act_classid], sp_adm_actions[PL_ACTION][act_iszm]);
			else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT")
		}
		else client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "CMD_NOT_ACCESS")
	}

	menu_destroy(menuid)
	show_menu_player_list(id)
	return PLUGIN_HANDLED;
}
/*================================================================================
 [Admin Commands]
=================================================================================*/
public cmd_zombie(id, level, cid) { // zp_zombie [target]
	// Check for access flag depending on the resulting action
	// Start Mode Infection / Make Zombie
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_INFECTION : ACCESS_MAKE_ZOMBIE], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_zombie(player)) { // Target not allowed to be zombie
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED
	}
	command_zombie(id, player)
	return PLUGIN_HANDLED;
}
public cmd_human(id, level, cid) { // zp_human [target]
	// Check for access flag - Make Human
	if(!cmd_access(id, g_access_flag[ACCESS_MAKE_HUMAN], cid, 2)) return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_human(player)) { // Target not allowed to be human
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_human(id, player)
	return PLUGIN_HANDLED;
}
public cmd_survivor(id, level, cid) { // zp_survivor [target]
	if(!hm_special_enable[SURVIVOR]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Survivor
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_SURVIVOR : ACCESS_MAKE_SURVIVOR], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 0, SURVIVOR)) { // Target not allowed to be survivor
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, SURVIVOR, 0)
	return PLUGIN_HANDLED;
}
public cmd_nemesis(id, level, cid) { // zp_nemesis [target]
	if(!zm_special_enable[NEMESIS]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Nemesis
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_NEMESIS : ACCESS_MAKE_NEMESIS], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 1, NEMESIS)) { // Target not allowed to be nemesis
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, NEMESIS, 1)
	return PLUGIN_HANDLED;
}
public cmd_respawn(id, level, cid) { // zp_respawn [target]
	// Check for access flag - Respawn
	if(!cmd_access(id, g_access_flag[ACCESS_RESPAWN_PLAYERS], cid, 2)) return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, CMDTARGET_ALLOW_SELF)

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_respawn(player)) { // Target not allowed to be respawned
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_respawn(id, player)
	return PLUGIN_HANDLED;
}
public cmd_swarm(id, level, cid) { // zp_swarm
	// Check for access flag - Mode Swarm
	if(!cmd_access(id, g_access_flag[ACCESS_MODE_SWARM], cid, 2))
		return PLUGIN_HANDLED;

	if(!allowed_game_mode(MODE_SWARM)) { // Swarm mode not allowed
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_swarm(id)
	return PLUGIN_HANDLED;
}
public cmd_multi(id, level, cid) { // zp_multi
	// Check for access flag - Mode Multi
	if(!cmd_access(id, g_access_flag[ACCESS_MODE_MULTI], cid, 2))
		return PLUGIN_HANDLED;

	if(!allowed_game_mode(MODE_MULTI)) { // Multi infection mode not allowed
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_multi(id)
	return PLUGIN_HANDLED;
}
public cmd_plague(id, level, cid) { // zp_plague
	if(!zm_special_enable[NEMESIS] || !hm_special_enable[SURVIVOR]) return PLUGIN_HANDLED;

	// Check for access flag - Mode Plague
	if(!cmd_access(id, g_access_flag[ACCESS_MODE_PLAGUE], cid, 2))
		return PLUGIN_HANDLED;

	if(!allowed_game_mode(MODE_PLAGUE)) { // Plague mode not allowed
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_plague(id)
	return PLUGIN_HANDLED;
}
public cmd_sniper(id, level, cid) { // zp_sniper [target]
	if(!hm_special_enable[SNIPER]) return PLUGIN_HANDLED;

	// Start Mode / Make Sniper
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_SNIPER : ACCESS_MAKE_SNIPER], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 0, SNIPER)) { // Target not allowed to be sniper
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}

	command_special(id, player, SNIPER, 0)
	return PLUGIN_HANDLED;
}
public cmd_assassin(id, level, cid) { // zp_assassin [target]
	if(!zm_special_enable[ASSASSIN]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Assassin
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_ASSASSIN : ACCESS_MAKE_ASSASSIN], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 1, ASSASSIN)) { // Target not allowed to be assassin
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, ASSASSIN, 1)
	return PLUGIN_HANDLED;
}
public cmd_predator(id, level, cid) { // zp_predator [target]
	if(!zm_special_enable[PREDATOR]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Predator
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_PREDATOR : ACCESS_MAKE_PREDATOR], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 1, PREDATOR)) { // Target not allowed to be predator
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, PREDATOR, 1)
	return PLUGIN_HANDLED;
}
public cmd_bombardier(id, level, cid) { // zp_bombardier [target]
	if(!zm_special_enable[BOMBARDIER])
		return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Bombardier
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_BOMBARDIER : ACCESS_MAKE_BOMBARDIER], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 1, BOMBARDIER)) { // Target not allowed to be bombardier
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, BOMBARDIER, 1)
	return PLUGIN_HANDLED;
}
public cmd_dragon(id, level, cid) { // zp_dragon [target]
	if(!zm_special_enable[DRAGON]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode Assassin
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_DRAGON : ACCESS_MAKE_DRAGON], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 1, DRAGON)) { // Target not allowed to be dragon
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, DRAGON, 1)
	return PLUGIN_HANDLED;
}
public cmd_berserker(id, level, cid) { // zp_berserker [target]
	if(!hm_special_enable[BERSERKER]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Berserker
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_BERSERKER : ACCESS_MAKE_BERSERKER], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 0, BERSERKER)) { // Target not allowed to be berserker
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, BERSERKER, 0)
	return PLUGIN_HANDLED;
}
public cmd_wesker(id, level, cid) { // zp_wesker [target]
	if(!hm_special_enable[WESKER]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Wesker
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_WESKER : ACCESS_MAKE_WESKER], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 0, WESKER)) { // Target not allowed to be wesker
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, WESKER, 0)
	return PLUGIN_HANDLED;
}
public cmd_spy(id, level, cid) { // zp_spy [target]
	if(!hm_special_enable[SPY]) return PLUGIN_HANDLED;

	// Check for access flag depending on the resulting action
	// Start Mode / Make Spy
	if(!cmd_access(id, g_access_flag[g_newround ? ACCESS_MODE_SPY : ACCESS_MAKE_SPY], cid, 2))
		return PLUGIN_HANDLED;

	static arg[32], player; read_argv(1, arg, charsmax(arg)) // Retrieve arguments
	player = cmd_target(id, arg, (CMDTARGET_ONLY_ALIVE | CMDTARGET_ALLOW_SELF))

	if(!player) return PLUGIN_HANDLED; // Invalid target

	if(!allowed_special(player, 0, SPY)) { // Target not allowed to be spy
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_special(id, player, SPY, 0)
	return PLUGIN_HANDLED;
}
public cmd_lnj(id, level, cid) { // zp_lnj
	if(!zm_special_enable[NEMESIS] || !hm_special_enable[SURVIVOR])
		return PLUGIN_HANDLED;

	// Check for access flag - Mode Apocalypse
	if(!cmd_access(id, g_access_flag[ACCESS_MODE_LNJ], cid, 2))
		return PLUGIN_HANDLED;

	if(!allowed_game_mode(MODE_LNJ)) { // Apocalypse mode not allowed
		client_print(id, print_console, "[ZP] %L", id, "CMD_NOT")
		return PLUGIN_HANDLED;
	}
	command_lnj(id)
	return PLUGIN_HANDLED;
}
/*================================================================================
 [Message Hooks]
=================================================================================*/
// Current Weapon info
public message_cur_weapon(msg_id, msg_dest, msg_entity) {
	if(!g_isalive[msg_entity] || g_zombie[msg_entity]) return; // Not alive or zombie
	if(get_msg_arg_int(1) != 1) return; // Not an active weapon

	// Unlimited clip disabled
	if(g_infammo[msg_entity] < 2)
		return;

	static weapon; weapon = get_msg_arg_int(2) // Get weapon's id
	if(MAXBPAMMO[weapon] > 2) { // Unlimited Clip Ammo for this weapon?
		cs_set_weapon_ammo(fm_cs_get_current_weapon_ent(msg_entity), MAXCLIP[weapon]) // Max out clip ammo
		set_msg_arg_int(3, get_msg_argtype(3), MAXCLIP[weapon]) // HUD should show full clip all the time
	}
}
public message_money(msg_id, msg_dest, msg_entity) { // Take off player's money
	if(!get_pcvar_num(cvar_removemoney)) return PLUGIN_CONTINUE; // Remove money setting enabled?

	fm_cs_set_user_money(msg_entity, 0)
	return PLUGIN_HANDLED;
}
public message_health(msg_id, msg_dest, msg_entity) { // Fix for the HL engine bug when HP is multiples of 256
	static health; health = get_msg_arg_int(1) // Get player's health
	if(health < 256) return; // Don't bother
	if(health % 256 == 0) fm_set_user_health(msg_entity, fm_get_user_health(msg_entity) + 1); // Check if we need to fix it
	set_msg_arg_int(1, get_msg_argtype(1), 255) // HUD can only show as much as 255 hp
}
public message_armor(msg_id, msg_dest, msg_entity) { // Fix Hud when armor is multiples of 999
	static armor; armor = get_msg_arg_int(1) // Get player's health
	if(armor < 1000) return; // Don't bother
	set_msg_arg_int(1, get_msg_argtype(1), 999) // HUD can only show as much as 999 armor
}
public message_flashbat() { // Block flashlight battery messages if custom flashlight is enabled instead
	if(g_cached_customflash) return PLUGIN_HANDLED;
	return PLUGIN_CONTINUE;
}
public message_screenfade(msg_id, msg_dest, msg_entity) { // Flashbangs should only affect zombies
	if(get_msg_arg_int(4) != 255 || get_msg_arg_int(5) != 255 || get_msg_arg_int(6) != 255 || get_msg_arg_int(7) < 200)
		return PLUGIN_CONTINUE;

	static i;
	if(g_zombie[msg_entity] && g_zm_special[msg_entity] <= 0) { // Nemesis/Assassin shouldn't be FBed
		switch(g_nv_color[1][msg_entity]) {
			case 1: g_nvrgb = { 255, 255, 255 }
			case 2: g_nvrgb = { 255, 0, 0 }
			case 3: g_nvrgb = { 0, 255, 0 }
			case 4: g_nvrgb = { 0, 0, 255 }
			case 5: g_nvrgb = { 0, 255, 255 }
			case 6: g_nvrgb = { 255, 0, 255 }
			case 7: g_nvrgb = { 255, 255, 0 }
			default: {
				for(i = 0; i < 3; i++)
					g_nvrgb[i] = get_pcvar_num(cvar_zombie_nvsion_rgb[i])
			}
		}
		// Set flash color to nighvision's
		for(i = 0; i < 3; i++)
			set_msg_arg_int(4+i, get_msg_argtype(4+i), g_nvrgb[i])
		return PLUGIN_CONTINUE;
	}
	return PLUGIN_HANDLED;
}
public message_nvgtoggle() return PLUGIN_HANDLED; // Prevent spectators' nightvision from being turned off when switching targets, etc.

public message_weappickup(msg_id, msg_dest, msg_entity) { // Prevent zombies from seeing any weapon pickup icon
	if(g_zombie[msg_entity]) return PLUGIN_HANDLED;
	return PLUGIN_CONTINUE;
}
public message_ammopickup(msg_id, msg_dest, msg_entity) { // Prevent zombies from seeing any ammo pickup icon
	if(g_zombie[msg_entity]) return PLUGIN_HANDLED;
	return PLUGIN_CONTINUE;
}
public message_scenario() { // Block hostage HUD display
	if(get_msg_args() > 1) {
		static sprite[8]; get_msg_arg_string(2, sprite, charsmax(sprite))
		if(equal(sprite, "hostage")) return PLUGIN_HANDLED;
	}
	return PLUGIN_CONTINUE;
}
public message_hostagepos() return PLUGIN_HANDLED; // Block hostages from appearing on radar

public message_textmsg() { // Block some text messages
	static textmsg[22]; get_msg_arg_string(2, textmsg, charsmax(textmsg))

	if(equal(textmsg, "#Game_will_restart_in")) { // Game restarting, reset scores and call round end to balance the teams
		logevent_round_end()
		g_scorehumans = 0
		g_scorezombies = 0
	}
	else if(equal(textmsg, "#Game_Commencing")) { // Game commencing, reset scores only (round end is automatically triggered)
		g_gamecommencing = true
		g_scorehumans = 0
		g_scorezombies = 0
	}
	// Block round end related messages
	else if(equal(textmsg, "#Hostages_Not_Rescued") || equal(textmsg, "#Round_Draw") || equal(textmsg, "#Terrorists_Win") || equal(textmsg, "#CTs_Win"))
		return PLUGIN_HANDLED;

	return PLUGIN_CONTINUE;
}
public message_sendaudio() { // Block CS round win audio messages, since we're playing our own instead
	static audio[17]; get_msg_arg_string(2, audio, charsmax(audio))
	if(equal(audio[7], "terwin") || equal(audio[7], "ctwin") || equal(audio[7], "rounddraw")) return PLUGIN_HANDLED;
	return PLUGIN_CONTINUE;
}
public message_teamscore() { // Send actual team scores (T = zombies // CT = humans)
	static team[2]; get_msg_arg_string(1, team, charsmax(team))
	switch (team[0]) {
		case 'C': set_msg_arg_int(2, get_msg_argtype(2), g_scorehumans); // CT
		case 'T': set_msg_arg_int(2, get_msg_argtype(2), g_scorezombies); // Terrorist
	}
}
public message_teaminfo(msg_id, msg_dest) { // Team Switch (or player joining a team for first time)
	if(msg_dest != MSG_ALL && msg_dest != MSG_BROADCAST) return; // Only hook global messages
	if(g_switchingteam) return; // Don't pick up our own TeamInfo messages for this player (bugfix)

	static id; id = get_msg_arg_int(1) // Get player's id
	if(!(1 <= id <= MaxClients)) return; // Invalid player id? (bugfix)

	set_task(0.2, "spec_nvision", id) // Enable spectators' nightvision if not spawning right away
	if(g_newround) return; // Round didn't start yet, nothing to worry about

	static team[2]; get_msg_arg_string(2, team, charsmax(team)) // Get his new team
	switch (team[0]) { // Perform some checks to see if they should join a different team instead
		case 'C': { // CT
			if(g_currentmode >= MODE_SURVIVOR && g_currentmode < MODE_SWARM && fnGetHumans() || !fnGetZombies()) {
				g_respawn_as_zombie[id] = true;
				remove_task(id+TASK_TEAM);
				fm_cs_set_user_team(id, FM_CS_TEAM_T);
				set_msg_arg_string(2, "TERRORIST");
			}
		}
		case 'T': { // Terrorist
			if(g_currentmode >= MODE_SURVIVOR && g_currentmode <= MODE_SWARM && fnGetHumans())
				g_respawn_as_zombie[id] = true;

			else if(fnGetZombies()) { // zombies alive --> switch to CT
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				set_msg_arg_string(2, "CT")
			}
		}
	}
}

/*================================================================================
 [Main Functions]
=================================================================================*/
public make_zombie_task() { // Make Zombie Task
	static iPlayersnum; iPlayersnum = fnGetAlive() // Get alive players count
	if(iPlayersnum < 1) { // Not enough players, come back later!
		set_task(2.0, "make_zombie_task", TASK_MAKEZOMBIE)
		return;
	}
	if(g_nextmode != MODE_NONE && g_nextmode < g_gamemodes_i) {
		start_game_mode(g_nextmode, 0)
		g_nextmode = MODE_NONE
	}
	else start_swarm_mode(0, MODE_NONE) // Start the game modes cycle
}
start_swarm_mode(id, mode) { // Start swarm mode
	// Get alive players count
	static iPlayersnum, enable
	iPlayersnum = fnGetAlive()

	enable = is_gamemode_enable(MODE_SWARM)

	static sound[64], iZombies, iMaxZombies, is_zombie[33]
	if((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_SWARM) && random_num(1, get_pcvar_num(cvar_mod_chance[MODE_SWARM])) == enable &&
	floatround(iPlayersnum*get_pcvar_float(cvar_swarmratio), floatround_ceil) >= 2 && floatround(iPlayersnum*get_pcvar_float(cvar_swarmratio), floatround_ceil) < iPlayersnum && iPlayersnum >= get_pcvar_num(cvar_mod_minplayers[MODE_SWARM]))
	|| mode == MODE_SET)
	{
		// Swarm Mode
		g_currentmode = MODE_SWARM
		g_lastmode = MODE_SWARM

		g_allowinfection = false // Allow Infection

		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround(iPlayersnum*get_pcvar_float(cvar_swarmratio), floatround_ceil)
		iZombies = 0

		// Randomly turn iMaxZombies players into zombies
		while(iZombies < iMaxZombies) {
			if(++id > MaxClients) id = 1 // Keep looping through all players
			if(!g_isalive[id]) continue; // Dead or already a zombie

			if(g_zombie[id] && g_zm_special[id] == 0) {
				is_zombie[id] = true
				iZombies++
				continue;
			}
			if(random_num(0, 1)) { // Random chance
				zombieme(id, 0, 0, 1, 0) // Turn into a zombie
				is_zombie[id] = true

				if(g_escape_map) { // Escape Map Support
					if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
					else do_random_spawn(id, 1) // regular spawn
				}
				iZombies++
			}
		}

		// Turn the remaining players into humans
		for(id = 1; id <= MaxClients; id++) {
			if(!g_isalive[id]) continue; // Only those of them who aren't zombies

			if(!is_zombie[id] && g_zombie[id] || g_hm_special[id])
				humanme(id, 0, 1, 0)

			update_team(id)
		}
		// Play swarm sound
		if(g_currentmode > 1) ArrayGetString(sound_mod[g_currentmode], random_num(0, ArraySize(sound_mod[g_currentmode]) - 1), sound, charsmax(sound))
		PlaySound(sound);

		// Show Swarm HUD notice
		set_hudmessage(20, 255, 20, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_SWARM")

		if(g_ambience_sounds[AMBIENCE_SOUNDS_SWARM]) { // Start ambience sounds
			remove_task(TASK_AMBIENCESOUNDS)
			set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
		}

		g_modestarted = true // Mode fully started!
		g_newround = false

		ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, MODE_SWARM, 0); // Round start forward

		return 1; // Stop here [BUGFIX]
	}

	if(mode != MODE_SET) start_plague_mode(0, MODE_NONE) // Give chance to another game mode
	return 0
}
start_plague_mode(id, mode) { // Start plague mode
	if(!zm_special_enable[NEMESIS] || !hm_special_enable[SURVIVOR]) {
		if(mode != MODE_SET) start_multi_mode(0, MODE_NONE)
		return 0;
	}

	// Get alive players count
	static iPlayersnum, enable, sound[64], iZombies, iMaxZombies
	iPlayersnum = fnGetAlive()
	enable = is_gamemode_enable(MODE_PLAGUE)

	if((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_PLAGUE) && random_num(1, get_pcvar_num(cvar_mod_chance[MODE_PLAGUE])) == enable
	&& floatround((iPlayersnum-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil) >= 1 &&
	iPlayersnum-(get_pcvar_num(cvar_plaguesurvnum)+get_pcvar_num(cvar_plaguenemnum)+floatround((iPlayersnum-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil)) >= 1
	&& iPlayersnum >= get_pcvar_num(cvar_mod_minplayers[MODE_PLAGUE])) || mode == MODE_SET)
	{
		// Plague Mode
		g_currentmode = MODE_PLAGUE
		g_lastmode = MODE_PLAGUE

		g_allowinfection = false // Prevent Infection

		// Turn specified amount of players into Survivors
		static iSurvivors, iMaxSurvivors
		iMaxSurvivors = get_pcvar_num(cvar_plaguesurvnum)

		if(fnGetSpecials(0, SURVIVOR) < iMaxSurvivors) {
			iSurvivors = 0
			while(iSurvivors < iMaxSurvivors) {
				id = fnGetRandomAlive(random_num(1, iPlayersnum)) // Choose random guy

				if(g_hm_special[id] == SURVIVOR) continue; // Already a survivor?

				humanme(id, SURVIVOR, 0, 0) // If not, turn him into one
				iSurvivors++

				fm_set_user_health(id, floatround(get_pcvar_float(cvar_plaguesurvhpmulti) * fm_get_user_health(id))) // Apply survivor health multiplier
			}
		}

		// Turn specified amount of players into Nemesis
		static iNemesis, iMaxNemesis
		iMaxNemesis = get_pcvar_num(cvar_plaguenemnum)

		if(fnGetSpecials(1, NEMESIS) < iMaxNemesis) {
			iNemesis = 0
			while(iNemesis < iMaxNemesis) {
				id = fnGetRandomAlive(random_num(1, iPlayersnum)) // Choose random guy

				// Already a survivor or nemesis?
				if(g_hm_special[id] == SURVIVOR || g_zm_special[id] == NEMESIS) continue;

				zombieme(id, 0, NEMESIS, 0, 0) // If not, turn him into one

				if(g_escape_map) { // Escape Map Support
					if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
					else do_random_spawn(id, 1) // regular spawn
				}
				iNemesis++
				fm_set_user_health(id, floatround(get_pcvar_float(cvar_plaguenemhpmulti) * fm_get_user_health(id))) // Apply nemesis health multiplier
			}
		}

		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround((iPlayersnum-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil)
		iZombies = 0
		while(iZombies < iMaxZombies) {
			if(++id > MaxClients) id = 1 // Keep looping through all players

			// Dead or already a zombie or survivor
			if(!g_isalive[id] || g_zm_special[id] == NEMESIS || g_hm_special[id] == SURVIVOR) continue;

			if(random_num(0, 1)) { // Random chance
				zombieme(id, 0, 0, 1, 0) // Turn into a zombie

				if(g_escape_map) { // Escape Map Support
					if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
					else do_random_spawn(id, 1) // regular spawn
				}
				iZombies++
			}
		}

		for(id = 1; id <= MaxClients; id++) { // Turn the remaining players into humans
			if(!g_isalive[id] || g_zombie[id] /* || g_hm_special[id] == SURVIVOR */) continue; // Only those of them who arent zombies or survivor

			// Switch to CT
			if(fm_cs_get_user_team(id) != FM_CS_TEAM_CT) { // need to change team?
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				fm_user_team_update(id)
			}
		}

		// Play plague sound
		if(g_currentmode > 1) ArrayGetString(sound_mod[g_currentmode], random_num(0, ArraySize(sound_mod[g_currentmode]) - 1), sound, charsmax(sound))
		PlaySound(sound);

		// Show Plague HUD notice
		set_hudmessage(0, 50, 200, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_PLAGUE")

		if(g_ambience_sounds[AMBIENCE_SOUNDS_PLAGUE]) { // Start ambience sounds
			remove_task(TASK_AMBIENCESOUNDS)
			set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
		}

		g_modestarted = true // Mode fully started!
		g_newround = false // No more a new round

		ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, MODE_PLAGUE, 0); // Round start forward
		return 1; // Stop here [BUGFIX]
	}

	if(mode != MODE_SET) start_multi_mode(0, MODE_NONE) // Give chance to other game modes
	return 0
}

start_multi_mode(id, mode) { // Start multiple infection mode
	// Get alive players count
	static iPlayersnum, enable, sound[64], iZombies, iMaxZombies, is_zombie[33]
	iPlayersnum = fnGetAlive()
	enable = is_gamemode_enable(MODE_MULTI)

	if((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_MULTI) && random_num(1, get_pcvar_num(cvar_mod_chance[MODE_MULTI])) == enable &&
	floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil) >= 2 && floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil) < iPlayersnum && iPlayersnum >= get_pcvar_num(cvar_mod_minplayers[MODE_MULTI]))
	|| mode == MODE_SET) {
		// Multi Infection Mode
		g_currentmode = MODE_MULTI
		g_lastmode = MODE_MULTI

		g_allowinfection = true // Allow Infection

		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil)
		iZombies = 0

		while(iZombies < iMaxZombies) { // Randomly turn iMaxZombies players into zombies
			if(++id > MaxClients) id = 1 // Keep looping through all players

			if(!g_isalive[id]) continue; // Dead or already a zombie

			if(g_zombie[id] && g_zm_special[id] == 0) {
				is_zombie[id] = true
				iZombies++
				continue;
			}
			if(random_num(0, 1)) { // Random chance
				// Turn into a zombie
				zombieme(id, 0, 0, 1, 0)
				is_zombie[id] = true

				if(g_escape_map) { // Escape Map Support
					if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
					else do_random_spawn(id, 1) // regular spawn
				}
				iZombies++
			}
		}

		for(id = 1; id <= MaxClients; id++) { // Turn the remaining players into humans
			if(!g_isalive[id]) continue; // Only those of them who aren't zombies

			if(!is_zombie[id] && g_zombie[id] || g_hm_special[id])
				humanme(id, 0, 1, 0)

			update_team(id)
		}
		// Play multi infection sound
		if(g_currentmode > 1) ArrayGetString(sound_mod[g_currentmode], random_num(0, ArraySize(sound_mod[g_currentmode]) - 1), sound, charsmax(sound))
		PlaySound(sound);

		// Show Multi Infection HUD notice
		set_hudmessage(200, 50, 0, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_MULTI")

		if(g_ambience_sounds[AMBIENCE_SOUNDS_MULTI]) { // Start ambience sounds
			remove_task(TASK_AMBIENCESOUNDS)
			set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
		}

		g_modestarted = true // Mode fully started!
		g_newround = false // No more a new round

		ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, MODE_MULTI, 0); // Round start forward
		return 1; // Stop here

	}

	if(mode != MODE_SET) start_lnj_mode(0, MODE_NONE) // Give chance to other game modes
	return 0
}
start_lnj_mode(id, mode) { // Start LNJ mode
	if(!zm_special_enable[NEMESIS] || !hm_special_enable[SURVIVOR]) {
		if(mode != MODE_SET) start_sniper_mode(0, MODE_NONE)
		return 0;
	}

	// Get alive players count
	static iPlayersnum, enable, sound[64], iZombies, iMaxZombies
	iPlayersnum = fnGetAlive()
	enable = is_gamemode_enable(MODE_LNJ)
	if((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != MODE_LNJ) && random_num(1, get_pcvar_num(cvar_mod_chance[MODE_LNJ])) == enable &&
	iPlayersnum >= get_pcvar_num(cvar_mod_minplayers[MODE_LNJ]) && floatround(iPlayersnum*get_pcvar_float(cvar_lnjratio), floatround_ceil) >= 1 && floatround(iPlayersnum*get_pcvar_float(cvar_multiratio), floatround_ceil) < iPlayersnum)
	|| mode == MODE_SET) {
		// Armageddon Mode
		g_currentmode = MODE_LNJ
		g_lastmode = MODE_LNJ

		g_allowinfection = false // Prevent Infection

		// iMaxZombies is rounded up, in case there aren't enough players
		iMaxZombies = floatround((iPlayersnum * get_pcvar_float(cvar_lnjratio)), floatround_ceil)
		iZombies = fnGetSpecials(1, NEMESIS)

		while(iZombies < iMaxZombies) { // Randomly turn iMaxZombies players into Nemesis
			if(++id > MaxClients) id = 1 // Keep looping through all players
			if(!g_isalive[id] || g_zm_special[id] == NEMESIS) continue; // Dead or already a nemesis

			if(random_num(0, 1)) { // Random chance
				// Turn into a Nemesis
				zombieme(id, 0, NEMESIS, 0, 0)
				fm_set_user_health(id, floatround(get_pcvar_float(cvar_lnjnemhpmulti) * fm_get_user_health(id)))

				if(g_escape_map) { // Escape Map Support
					if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
					else do_random_spawn(id, 1) // regular spawn
				}

				iZombies++
			}
		}

		for(id = 1; id <= MaxClients; id++) { // Turn the remaining players into survivors
			if(!g_isalive[id] || g_zm_special[id] == NEMESIS) continue; // Only those of them who arent nemesis
			humanme(id, SURVIVOR, 0, 0) // Turn into a Survivor
			fm_set_user_health(id, floatround(get_pcvar_float(cvar_lnjsurvhpmulti) * fm_get_user_health(id)))
		}

		// Play armageddon sound
		if(g_currentmode > 1) ArrayGetString(sound_mod[g_currentmode], random_num(0, ArraySize(sound_mod[g_currentmode]) - 1), sound, charsmax(sound))
		PlaySound(sound);

		// Show Armageddon HUD notice
		set_hudmessage(181, 62, 244, -1.0, 0.17, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_LNJ")

		if(g_ambience_sounds[AMBIENCE_SOUNDS_LNJ]) { // Start ambience sounds
			remove_task(TASK_AMBIENCESOUNDS)
			set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
		}

		g_modestarted = true // Mode fully started!
		g_newround = false // No more a new round

		ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, MODE_LNJ, 0); // Round start forward

		return 1; // Stop here

	}
	if(mode != MODE_SET) start_sniper_mode(0, MODE_NONE) // Give chance to other game modes
	return 0
}
start_survivor_mode(id, mode) { // Start survivor mode
	if(!set_special_human_mode(id, mode, SURVIVOR)) { // Give chance to other game modes
		start_assassin_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_sniper_mode(id, mode) { // Start sniper mode
	if(!set_special_human_mode(id, mode, SNIPER)) { // Give chance to other game modes
		start_survivor_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_berserker_mode(id, mode) { // Start berserker mode
	if(!set_special_human_mode(id, mode, BERSERKER)) { // Give chance to other game modes
		start_predator_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_wesker_mode(id, mode) { // Start wesker mode
	if(!set_special_human_mode(id, mode, WESKER)) { // Give chance to other game modes
		start_bombardier_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_spy_mode(id, mode) { // Start spy mode
	if(!set_special_human_mode(id, mode, SPY)) { // Give chance to other game modes
		start_dragon_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_nemesis_mode(id, mode) { // Start nemesis mode
	if(!set_special_zombie_mode(id, mode, NEMESIS)) { // Give chance to other game modes
		start_berserker_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_assassin_mode(id, mode) { // Start assassin mode
	if(!set_special_zombie_mode(id, mode, ASSASSIN)) { // Give chance to other game modes
		start_nemesis_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_predator_mode(id, mode) { // Start predator mode
	if(!set_special_zombie_mode(id, mode, PREDATOR)) { // Give chance to other game modes
		start_wesker_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_bombardier_mode(id, mode) { // Start bombardier mode
	if(!set_special_zombie_mode(id, mode, BOMBARDIER)) { // Give chance to other game modes
		start_spy_mode(0, MODE_NONE)
		return 0
	}
	return 1
}
start_dragon_mode(id, mode) { // Start dragon mode
	if(!set_special_zombie_mode(id, mode, DRAGON)) { // Give chance to other game modes
		start_custom_mode()
		return 0
	}
	return 1
}
new const hm_notice_lang[MAX_SPECIALS_HUMANS][] = { "UNKNOWN", "NOTICE_SURVIVOR", "NOTICE_SNIPER", "NOTICE_BERSERKER", "NOTICE_WESKER", "NOTICE_SPY" }
set_special_human_mode(id, mode, class) {
	if(class >= MAX_SPECIALS_HUMANS) return 0
	if(!hm_special_enable[class] || g_escape_map && mode == MODE_NONE) return 0;

	static mode_id, amb_id
	mode_id = 0
	amb_id = 0
	switch(class) {
		case SURVIVOR: mode_id = MODE_SURVIVOR, amb_id = AMBIENCE_SOUNDS_SURVIVOR
		case SNIPER: mode_id = MODE_SNIPER, amb_id = AMBIENCE_SOUNDS_SNIPER
		case BERSERKER: mode_id = MODE_BERSERKER, amb_id = AMBIENCE_SOUNDS_BERSERKER
		case WESKER: mode_id = MODE_WESKER, amb_id = AMBIENCE_SOUNDS_WESKER
		case SPY: mode_id = MODE_SPY, amb_id = AMBIENCE_SOUNDS_SPY
	}
	// Get alive players count
	static iPlayersnum, enable, forward_id, sound[64]
	iPlayersnum = fnGetAlive()
	enable = is_gamemode_enable(mode_id)

	if((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != mode_id) && random_num(1, get_pcvar_num(cvar_mod_chance[mode_id])) == enable && iPlayersnum >= get_pcvar_num(cvar_mod_minplayers[mode_id]))
	|| mode == MODE_SET) {
		// Special Human Game Mode
		g_currentmode = mode_id
		g_lastmode = mode_id

		g_allowinfection = false // Prevent Infection

		if(mode == MODE_NONE || !id && mode == MODE_SET) id = fnGetRandomAlive(random_num(1, iPlayersnum)) // Choose player randomly?

		forward_id = id // Remember id for calling our forward later
		humanme(id, class, 0, 0) // Turn player into a special human

		for(id = 1; id <= MaxClients; id++) { // Turn the remaining players into zombies
			if(!g_isalive[id]) continue; // Not alive
			if(id == forward_id || g_zombie[id] && g_zm_special[id] == 0) continue; // special human or already a zombie
			zombieme(id, 0, 0, 1, 0) // Turn into a zombie
		}

		// Play Special human sound
		if(g_currentmode > 1) ArrayGetString(sound_mod[g_currentmode], random_num(0, ArraySize(sound_mod[g_currentmode]) - 1), sound, charsmax(sound))
		PlaySound(sound);

		// Show Special Class HUD notice
		set_hudmessage(0, 10, 255, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, hm_notice_lang[class], g_playername[forward_id])

		if(g_ambience_sounds[amb_id]) { // Start ambience sounds
			remove_task(TASK_AMBIENCESOUNDS)
			set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
		}

		g_modestarted = true // Mode fully started!
		g_newround = false // No more a new round

		ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, mode_id, forward_id); // Round start forward
		remove_task(TASK_MAKEZOMBIE) // Bug Fix
		return 1; // Stop here
	}
	return 0;
}
new const zm_notice_lang[MAX_SPECIALS_ZOMBIES][] = { "UNKNOWN", "NOTICE_NEMESIS", "NOTICE_ASSASSIN", "NOTICE_PREDATOR", "NOTICE_BOMBARDIER", "NOTICE_DRAGON" }
set_special_zombie_mode(id, mode, class) {
	if(class >= MAX_SPECIALS_ZOMBIES) return 0
	if(!zm_special_enable[class]) return 0;

	static mode_id, amb_id
	mode_id = 0
	amb_id = 0
	switch(class) {
		case NEMESIS: mode_id = MODE_NEMESIS, amb_id = AMBIENCE_SOUNDS_NEMESIS
		case ASSASSIN: mode_id = MODE_ASSASSIN, amb_id = AMBIENCE_SOUNDS_ASSASSIN
		case PREDATOR: mode_id = MODE_PREDATOR, amb_id = AMBIENCE_SOUNDS_PREDATOR
		case BOMBARDIER: mode_id = MODE_BOMBARDIER, amb_id = AMBIENCE_SOUNDS_BOMBARDIER
		case DRAGON: mode_id = MODE_DRAGON, amb_id = AMBIENCE_SOUNDS_DRAGON
	}

	// Get alive players count
	static iPlayersnum, enable, forward_id, sound[64]
	iPlayersnum = fnGetAlive()
	enable = is_gamemode_enable(mode_id)

	if((mode == MODE_NONE && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != mode_id) && random_num(1, get_pcvar_num(cvar_mod_chance[mode_id])) == enable && iPlayersnum >= get_pcvar_num(cvar_mod_minplayers[mode_id]))
	|| mode == MODE_SET) {

		// Special Zombie Mode
		g_currentmode = mode_id
		g_lastmode = mode_id
		g_allowinfection = false // Prevent Infection

		if(mode == MODE_NONE || !id && mode == MODE_SET) id = fnGetRandomAlive(random_num(1, iPlayersnum)) // Choose player randomly?

		forward_id = id // Remember id for calling our forward later
		zombieme(id, 0, class, 0, 0) // Turn player into special zombie

		if(g_escape_map) { // Escape Map Support
			if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
			else do_random_spawn(id, 1) // regular spawn
		}

		if(class == ASSASSIN) { // Turn off the lights [Taken From Speeds Zombie Mutilation]
			static ent
			ent = -1
			while((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "light")) != 0)
				dllfunc(DLLFunc_Use, ent, 0);
		}

		for(id = 1; id <= MaxClients; id++) { // Remaining players should be humans (CTs)
			if(!g_isalive[id]) continue; // Not alive
			if(forward_id == id) continue;
			if(g_zombie[id] || g_hm_special[id]) humanme(id, 0, 1, 0) // Turn others players to human (When forces start round after round alterady started by native)

			// Switch to CT
			if(fm_cs_get_user_team(id) != FM_CS_TEAM_CT) { // need to change team?
				remove_task(id+TASK_TEAM)
				fm_cs_set_user_team(id, FM_CS_TEAM_CT)
				fm_user_team_update(id)
			}
			set_screenfadein(id, 5, get_pcvar_num(cvar_zm_red[class]), get_pcvar_num(cvar_zm_green[class]), get_pcvar_num(cvar_zm_blue[class]), 255)

			// Make a screen shake [Make it horrorful]
			message_begin(MSG_ONE_UNRELIABLE, g_msgScreenShake, _, id)
			write_short(UNIT_SECOND*75) // amplitude
			write_short(UNIT_SECOND*7) // duration
			write_short(UNIT_SECOND*75) // frequency
			message_end()
		}

		// Play Special Class sound
		if(g_currentmode > 1) ArrayGetString(sound_mod[g_currentmode], random_num(0, ArraySize(sound_mod[g_currentmode]) - 1), sound, charsmax(sound))
		PlaySound(sound);

		// Show HUD notice
		set_hudmessage(get_pcvar_num(cvar_zm_red[class]), get_pcvar_num(cvar_zm_green[class]), get_pcvar_num(cvar_zm_blue[class]), HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, zm_notice_lang[class], g_playername[forward_id])

		if(g_ambience_sounds[amb_id]) { // Start ambience sounds
			remove_task(TASK_AMBIENCESOUNDS)
			set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
		}

		g_modestarted = true // Mode fully started!
		g_newround = false // No more a new round
		lighting_effects() // Set Fast Lights

		ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, mode_id, forward_id); // Round start forward
		remove_task(TASK_MAKEZOMBIE) // Bug Fix
		return 1; // Stop here

	}
	return 0 // Give chance to other game modes
}

start_custom_mode() { // Start custom game mode
	if(g_gamemodes_i == MAX_GAME_MODES) { // No custom game modes registered
		start_infection_mode(0, MODE_NONE) // Start our infection mode
		return;
	}

	g_newround = false // No more a new round

	// Loop through every custom game mode present
	// This is to ensure that every game mode is given a chance
	static game
	for(game = MAX_GAME_MODES; game < g_gamemodes_i; game++) {
		// Apply chance level and check if the last played mode was not the same as this one
		if((random_num(1, ArrayGetCell(g_gm_chance, (game - MAX_GAME_MODES))) == 1) && (!get_pcvar_num(cvar_preventconsecutive) || g_lastmode != game)
		&& is_gamemode_enable(game)) {
			// Execute our round start pre forward
			// This is were the game mode will decide whether to run itself or block it self
			ExecuteForward(g_forwards[ROUND_START_PRE], g_fwDummyResult, game)

			// The game mode didnt accept some conditions
			if(g_fwDummyResult >= ZP_PLUGIN_HANDLED)
				continue; // Give other game modes a chance

			else { // Game mode has accepted the conditions
				command_custom_game(game, 0) // Start Custom mode
				break; // Stop the loop and prevent other game modes from being given a chance [BUGFIX]
			}
		}
		else continue; // The game mode was not given a chance then continue the loop
	}
	if(!g_modestarted) start_infection_mode(0, MODE_NONE) // No game mode has started then start our good old infection mode [BUGFIX]
}
public update_team(id) {
	if(!g_isalive[id]) return

	if(!g_zombie[id]) {
		if(fm_cs_get_user_team(id) != FM_CS_TEAM_CT) { // need to change team?
			remove_task(id+TASK_TEAM)
			fm_cs_set_user_team(id, FM_CS_TEAM_CT)
			fm_user_team_update(id)
		}
	}
	else {
		if(fm_cs_get_user_team(id) != FM_CS_TEAM_T) { // need to change team?
			remove_task(id+TASK_TEAM)
			fm_cs_set_user_team(id, FM_CS_TEAM_T)
			fm_user_team_update(id)
		}
	}
}
start_infection_mode(id, mode) { // Start the default infection mode
	// Get alive players count
	static iPlayersnum, forward_id
	iPlayersnum = fnGetAlive()

	// Single Infection Mode
	g_currentmode = MODE_INFECTION
	g_lastmode = MODE_INFECTION
	g_allowinfection = true // Allow Infection

	if(mode == MODE_NONE || !id && mode == MODE_SET) id = fnGetRandomAlive(random_num(1, iPlayersnum)) // Choose player randomly?

	zombieme(id, 0, 0, 0, 0) // Turn player into the first zombie

	if(g_escape_map) {
		if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
		else do_random_spawn(id, 1) // regular spawn
	}
	forward_id = id // Remember id for calling our forward later

	for(id = 1; id <= MaxClients; id++) { // Remaining players should be humans (CTs)
		// Not alive / First zombie
		if(!g_isalive[id] || forward_id == id) continue;

		if(g_zombie[id] || g_hm_special[id])
			humanme(id, 0, 1, 0)

		// Switch to CT
		if(fm_cs_get_user_team(id) != FM_CS_TEAM_CT) { // need to change team?
			remove_task(id+TASK_TEAM)
			fm_cs_set_user_team(id, FM_CS_TEAM_CT)
			fm_user_team_update(id)
		}
	}

	// Show First Zombie HUD notice
	set_hudmessage(255, 0, 0, HUD_EVENT_X, HUD_EVENT_Y, 0, 0.0, 5.0, 1.0, 1.0, -1)
	ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_FIRST", g_playername[forward_id])

	if(g_ambience_sounds[AMBIENCE_SOUNDS_INFECTION]) { // Start ambience sounds
		remove_task(TASK_AMBIENCESOUNDS)
		set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
	}
	g_modestarted = true // Mode fully started!
	g_newround = false // No more a new round
	remove_task(TASK_MAKEZOMBIE) // Bug Fix
	ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, MODE_INFECTION, forward_id); // Round start forward
	return 1
}
// Zombie Me Function (player id, infector, turn into a nemesis, silent mode, deathmsg and rewards, turn into assassin)
zombieme(id, infector, classid, silentmode, rewards) {

	g_FW_intParam[0] = -1;
	g_FW_intParam[1] = -1;
	g_FW_intParam[2] = -1;

	ExecuteForward(g_forwards[INFECT_ATTEMP], g_fwDummyResult, id, infector, classid) // User infect attempt forward

	// One or more plugins blocked the infection. Only allow this after making sure it's
	// not going to leave us with no zombies. Take into account a last player leaving case.
	// BUGFIX: only allow after a mode has started, to prevent blocking first zombie e.g.
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED && g_modestarted && fnGetZombies() > g_lastplayerleaving) return;

	ExecuteForward(g_forwards[INFECTED_PRE], g_fwDummyResult, id, infector, classid) // Pre user infect forward
	if(g_FW_intParam[0] != -1)
		id = g_FW_intParam[0];

	if(g_FW_intParam[1] != -1)
		infector = g_FW_intParam[1];

	if(g_FW_intParam[2] != -1)
		classid = g_FW_intParam[2];

	remove_task(id+TASK_AURA) // Remove aura (bugfix)

	if(silentmode != 2) remove_task(id) // Nao buga a frozen

	// Show zombie class menu if they haven't chosen any (e.g. just connected)
	if(g_zombieclassnext[id] == NULL_CLASS && get_pcvar_num(cvar_zclasses) && classid <= 0
	|| !g_choosed_zclass[id] && get_pcvar_num(cvar_zclasses) && classid <= 0 && get_pcvar_num(cvar_chosse_instantanly[0]))
		set_task(0.2, "show_menu_zclass", id)

	g_zombieclass[id] = g_zombieclassnext[id]
	if(g_zombieclass[id] == NULL_CLASS) g_zombieclass[id] = 0

	// Way to go...
	g_zombie[id] = true
	g_zm_special[id] = 0
	g_hm_special[id] = 0
	g_damagedealt[id] = 0
	g_choosed_hclass[id] = false
	g_infammo[id] = 0

	if(silentmode != 2) g_firstzombie[id] = false
	g_user_custom_speed[id] = false

	// Remove spawn protection (bugfix)
	g_nodamage[id] = false
	set_pev(id, pev_takedamage, DAMAGE_AIM)
	set_pev(id, pev_effects, pev(id, pev_effects) &~ EF_NODRAW)

	// Reset burning duration counter (bugfix)
	if(silentmode != 2 || classid > 0) {
		remove_freeze(id) // Remove Frost
		g_burning[id] = false // Remove burn
	}

	// Show deathmsg and reward infector?
	if(rewards && infector) {
		// Send death notice and fix the "dead" attrib on scoreboard
		SendDeathMsg(infector, id, 0)
		FixDeadAttrib(id)

		// Reward frags, deaths, health, and ammo packs
		UpdateFrags(infector, id, get_pcvar_num(cvar_fragsinfect), 1, 1)
		g_ammopacks[infector] += get_pcvar_num(cvar_ammoinfect)
		fm_set_user_health(infector, fm_get_user_health(infector) + get_pcvar_num(cvar_zm_basehp[0]))
	}

	// Cache speed, and name for player's class
	g_spd[id] = float(ArrayGetCell(g_zclass_spd, g_zombieclass[id]))
	g_zombie_knockback[id] = Float:ArrayGetCell(g_zclass_kb, g_zombieclass[id])

	if(ArrayGetCell(g_zclass_lang_enable, g_zombieclass[id])) {
		ArrayGetString(g_zclass_name_lang_key, g_zombieclass[id], g_pl_classname[id], charsmax(g_pl_classname[]))
		g_pl_classname_lang[id] = true
	}
	else {
		ArrayGetString(g_zclass_name, g_zombieclass[id], g_pl_classname[id], charsmax(g_pl_classname[]))
		g_pl_classname_lang[id] = false
	}

	static sound[64] // Set zombie attributes based on the mode
	if(!silentmode) {
		if(classid >= MAX_SPECIALS_ZOMBIES) {
			g_zm_special[id] = classid

			static special_id; special_id = g_zm_special[id]-MAX_SPECIALS_ZOMBIES

			if(ArrayGetCell(g_zm_sp_health, special_id) == 0) fm_set_user_health(id, get_pcvar_num(cvar_zm_health[0]) * fnGetAlive()) // Set Health [0 = auto]
			else fm_set_user_health(id, ArrayGetCell(g_zm_sp_health, special_id))

			// Set gravity, unless frozen
			if(!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_zm_sp_gravity, special_id))
			else g_frozen_gravity[id] = Float:ArrayGetCell(g_zm_sp_gravity, special_id)

			g_spd[id] = float(ArrayGetCell(g_zm_sp_speed, special_id))
			g_custom_leap_cooldown[id] = Float:ArrayGetCell(g_zm_sp_leap_c, special_id)
			g_zombie_knockback[id] = Float:ArrayGetCell(g_zm_sp_knockback, special_id)
		}
		else if(classid > 0 && zm_special_enable[classid]) {
			g_zm_special[id] = classid

			// Set health [0 = auto]
			if(get_pcvar_num(cvar_zm_health[classid]) == 0) {
				if(get_pcvar_num(cvar_zm_basehp[classid]) == 0) fm_set_user_health(id, ArrayGetCell(g_zclass_hp, 0) * fnGetAlive())
				else fm_set_user_health(id, get_pcvar_num(cvar_zm_basehp[classid]) * fnGetAlive())
			}
			else fm_set_user_health(id, get_pcvar_num(cvar_zm_health[classid]))

			// Set gravity, unless frozen
			if(!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_zmgravity[classid]))
			else g_frozen_gravity[id] = get_pcvar_float(cvar_zmgravity[classid])

			if(classid == PREDATOR) { // Predator Powers
				g_zm_special[id] = PREDATOR
				set_task(1.0, "turn_invisible", id)
			}
			else if(classid == BOMBARDIER) { // Bombardier Powers
				give_hegrenade_bombardier(id+TASK_BOT_BOMBARDIER)
				set_task(3.0, "give_hegrenade_bombardier", id+TASK_BOT_BOMBARDIER, _, _, "b")
			}
			else if(classid == DRAGON) {
				if(g_isbot[id]) set_task(random_float(5.0, 15.0), "use_cmd", id, _, _, "b") // Dragon Skills Bot Suport
				client_print_color(id, print_team_default, "%L %L", id, "ZP_CHAT_TAG", id, "DRAGON_INFO") // Dragon Info Msg
			}

			g_zombie_knockback[id] = get_pcvar_float(cvar_zmsp_knockback[classid])
		}
		else if((fnGetZombies() == 1) && g_zm_special[id] <= 0) {
			g_firstzombie[id] = true // First zombie
			if(silentmode != 2) fm_set_user_health(id, floatround(get_pcvar_float(cvar_zm_health[0]) * float(ArrayGetCell(g_zclass_hp, g_zombieclass[id]))))

			// Set gravity, if frozen set the restore gravity value instead
			if(!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]))
			else g_frozen_gravity[id] = Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id])

			// Infection sound
			ArrayGetString(ar_sound[0], random_num(0, ArraySize(ar_sound[0]) - 1), sound, charsmax(sound))
			emit_sound(id, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
		}
		else { // Infected by someone
			// Set health and gravity, unless frozen
			if(silentmode != 2) fm_set_user_health(id, ArrayGetCell(g_zclass_hp, g_zombieclass[id]))

			// Set gravity, if frozen set the restore gravity value instead
			if(!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]))
			else g_frozen_gravity[id] = Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id])

			ArrayGetString(ar_sound[0], random_num(0, ArraySize(ar_sound[0]) - 1), sound, charsmax(sound))
			emit_sound(id, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM) // Infection sound

			// Show Infection HUD notice
			set_hudmessage(255, 0, 0, HUD_INFECT_X, HUD_INFECT_Y, 0, 0.0, 5.0, 1.0, 1.0, -1)
			if(infector) ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_INFECT2", g_playername[id], g_playername[infector])
			else ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_INFECT", g_playername[id])
		}
	}
	else { // Silent mode, no HUD messages, no infection sounds
		// Set health and gravity, unless frozen
		if(silentmode != 2) fm_set_user_health(id, ArrayGetCell(g_zclass_hp, g_zombieclass[id])) // Dont change HP when choose other zclass instantanly
		if(!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id]))
		else g_frozen_gravity[id] = Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id])
	}

	// Remove previous tasks
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)

	// Switch to T
	if(fm_cs_get_user_team(id) != FM_CS_TEAM_T) { // need to change team?
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_T)
		fm_user_team_update(id)
	}

	cs_set_user_zoom(id, CS_RESET_ZOOM, 1) // Remove any zoom (bugfix)
	cs_set_user_armor(id, 0, CS_ARMOR_NONE) // Remove armor

	// Drop weapons when infected
	drop_weapons(id, 1)
	drop_weapons(id, 2)

	// Strip zombies from guns and give them a knife
	fm_strip_user_weapons(id)
	fm_give_item(id, "weapon_knife")

	infection_effects(id) // Fancy effects

	static enable;
	enable = 0

	// Special Class aura/nvision
	if(classid >= MAX_SPECIALS_ZOMBIES) {
		if(ArrayGetCell(g_zm_sp_aurarad, classid-MAX_SPECIALS_ZOMBIES) > 0)
			set_task(0.1, "zombie_aura", id+TASK_AURA, _, _, "b")

		enable = ArrayGetCell(g_zm_sp_nvision, classid-MAX_SPECIALS_ZOMBIES)
	}
	else {
		if(classid > 0 && zm_special_enable[classid] && get_pcvar_num(cvar_zm_aura[classid]))
			set_task(0.1, "zombie_aura", id+TASK_AURA, _, _, "b")

		enable = get_pcvar_num(cvar_zm_nvggive[classid])
	}

	if(cs_get_user_nvg(id)) { // Remove CS nightvision if player owns one (bugfix)
		cs_set_user_nvg(id, 0)
		nvision_toggle_off(id)
	}
	// Give Zombies Night Vision?
	if(enable) {
		g_nvision[id] = true
		if(g_isbot[id])
			cs_set_user_nvg(id, 1); // turn on NVG for bots
		else if(enable == 1) { // Turn on Night Vision automatically?
			g_nvisionenabled[id] = true
			user_nightvision(id, 1)
		}
		else nvision_toggle_off(id)
	}
	else if(g_nvision[id]) { // Disable nightvision when turning into special class (bugfix)
		nvision_toggle_off(id)
		g_nvision[id] = false
	}

	if(get_pcvar_num(cvar_zombiefov) != 90 && get_pcvar_num(cvar_zombiefov) != 0) { // Set custom FOV?
		message_begin(MSG_ONE, g_msgSetFOV, _, id)
		write_byte(get_pcvar_num(cvar_zombiefov)) // fov angle
		message_end()
	}

	if(g_zm_special[id] <= 0 && get_pcvar_num(cvar_zombiebleeding)) set_task(0.7, "make_blood", id+TASK_BLOOD, _, _, "b") // Call the bloody task

	if(g_zm_special[id] <= 0) set_task(random_float(50.0, 70.0), "zombie_play_idle", id+TASK_BLOOD, _, _, "b") // Idle sounds task

	turn_off_flashlight(id) // Turn off zombie's flashlight


	reset_player_models(id) // Set models
	if(!g_frozen[id]) reset_user_rendering(id) // Reset Rendering
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id) // Set class speed

	ExecuteForward(g_forwards[INFECTED_POST], g_fwDummyResult, id, infector, classid) // Post user infect forward
	fnCheckLastZombie() // Last Zombie Check
}
humanme(id, classid, silentmode, attacker) { // Function Human Me (player id, turn into a survivor, silent mode)
	g_FW_intParam[0] = -1;
	g_FW_intParam[1] = -1;
	g_FW_intParam[2] = -1;
	ExecuteForward(g_forwards[HUMANIZE_ATTEMP], g_fwDummyResult, id, classid, attacker) // User humanize attempt forward

	// One or more plugins blocked the "humanization". Only allow this after making sure it's
	// not going to leave us with no humans. Take into account a last player leaving case.
	// BUGFIX: only allow after a mode has started, to prevent blocking first survivor e.g.
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED && g_modestarted && fnGetHumans() > g_lastplayerleaving) return;

	ExecuteForward(g_forwards[HUMANIZED_PRE], g_fwDummyResult, id, classid, attacker) // Pre user humanize forward

	if(g_FW_intParam[0] != -1)
		id = g_FW_intParam[0];

	if(g_FW_intParam[1] != -1)
		classid = g_FW_intParam[1];

	if(g_FW_intParam[2] != -1)
		attacker = g_FW_intParam[2];

	// Remove previous tasks
	remove_task(id+TASK_BLOOD)
	remove_task(id+TASK_AURA)
	remove_task(id+TASK_NVISION)
	remove_task(id)

	// Reset some vars
	g_zombie[id] = false
	g_zm_special[id] = 0
	g_firstzombie[id] = false
	g_canbuy[id] = 2
	g_user_custom_speed[id] = false
	g_choosed_zclass[id] = false
	g_buytime[id] = get_gametime()
	g_damagedealt[id] = 0

	remove_task(id+TASK_AURA) // Remove survivor/sniper/berserker's aura (bugfix)

	// Remove spawn protection (bugfix)
	g_nodamage[id] = false
	set_pev(id, pev_takedamage, DAMAGE_AIM)
	set_pev(id, pev_effects, pev(id, pev_effects) &~ EF_NODRAW)

	remove_freeze(id)
	g_burning[id] = false

	if(cs_get_user_nvg(id)) { // Remove CS nightvision if player owns one (bugfix)
		cs_set_user_nvg(id, 0)
		nvision_toggle_off(id)
	}


	// Setting before drop weapons for Fix a knife model bug
	g_hm_special[id] = (classid > 0) ? classid : 0

	drop_weapons(id, 1) // Drop previous weapons
	drop_weapons(id, 2)

	// Strip off from weapons
	fm_strip_user_weapons(id)
	fm_give_item(id, "weapon_knife")

	// Show deathmsg and reward infector?
	if(attacker) {
		// Send death notice and fix the "dead" attrib on scoreboard
		SendDeathMsg(attacker, id, 1)
		FixDeadAttrib(id)

		// Reward frags, deaths, health, and ammo packs
		UpdateFrags(attacker, id, get_pcvar_num(cvar_frags_disinfect), 1, 1)
		g_ammopacks[attacker] += get_pcvar_num(cvar_ammo_disinfect)
		//fm_set_user_health(infector, pev(infector, pev_health) + get_pcvar_num(cvar_zm_basehp[0]))
	}

	if(classid >= MAX_SPECIALS_HUMANS) { // Set human attributes based on the mode
		static special_id; special_id = g_hm_special[id]-MAX_SPECIALS_HUMANS

		if(ArrayGetCell(g_hm_sp_health, special_id) == 0) fm_set_user_health(id, get_pcvar_num(cvar_hm_health[0]) * fnGetAlive()) // Set Health [0 = auto]
		else fm_set_user_health(id, ArrayGetCell(g_hm_sp_health, special_id))

		// Set gravity, unless frozen
		if(!g_frozen[id]) set_pev(id, pev_gravity, Float:ArrayGetCell(g_hm_sp_gravity, special_id))
		else g_frozen_gravity[id] = Float:ArrayGetCell(g_hm_sp_gravity, special_id)

		g_spd[id] = float(ArrayGetCell(g_hm_sp_speed, special_id))
		g_custom_leap_cooldown[id] = Float:ArrayGetCell(g_hm_sp_leap_c, special_id)

		turn_off_flashlight(id) // Turn off his flashlight

		if(ArrayGetCell(g_hm_sp_aurarad, special_id) > 0) set_task(0.1, "human_aura", id+TASK_AURA, _, _, "b") // Give the special a nice aura

		// Special Humans bots will also need nightvision to see in the dark
		if(g_isbot[id]) {
			g_nvision[id] = true
			cs_set_user_nvg(id, 1)
		}

		g_infammo[id] = ArrayGetCell(g_hm_sp_cliptype, g_hm_special[id]-MAX_SPECIALS_HUMANS)
	}
	else if(classid > 0 && hm_special_enable[classid]) {
		// Set Health [0 = auto]
		if(get_pcvar_num(cvar_hm_health[classid]) == 0) {
			if(get_pcvar_num(cvar_hm_basehp[classid]) == 0) fm_set_user_health(id, get_pcvar_num(cvar_hm_health[0]) * fnGetAlive())
			else fm_set_user_health(id, get_pcvar_num(cvar_hm_basehp[classid]) * fnGetAlive())
		}
		else fm_set_user_health(id, get_pcvar_num(cvar_hm_health[classid]))

		// Set gravity, unless frozen
		if(!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_hmgravity[classid]))
		else g_frozen_gravity[id] = get_pcvar_float(cvar_hmgravity[classid])

		turn_off_flashlight(id) // Turn off his flashlight

		if(get_pcvar_num(cvar_hm_aura[classid])) set_task(0.1, "human_aura", id+TASK_AURA, _, _, "b") // Give the class a nice aura

		// Special Humans bots will also need nightvision to see in the dark
		if(g_isbot[id]) {
			g_nvision[id] = true
			cs_set_user_nvg(id, 1)
		}

		// Set human attributes based on the mode
		if(g_hm_special[id] == SURVIVOR) {
			static survweapon[32], wpn_id; get_pcvar_string(cvar_survweapon, survweapon, charsmax(survweapon))
			wpn_id = cs_weapon_name_to_id(survweapon)
			fm_give_item(id, survweapon)
			ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[wpn_id], AMMOTYPE[wpn_id], MAXBPAMMO[wpn_id])
		}
		else if(g_hm_special[id] == SNIPER) {
			fm_give_item(id, "weapon_awp")
			ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[CSW_AWP], AMMOTYPE[CSW_AWP], MAXBPAMMO[CSW_AWP])
		}
		else if(g_hm_special[id] == BERSERKER) {
			fm_give_item(id, "weapon_knife")
			//g_currentweapon[id] = CSW_KNIFE
			//replace_weapon_models(id, g_currentweapon[id])
		}
		else if(g_hm_special[id] == WESKER) {
			fm_give_item(id, "weapon_deagle")
			ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[CSW_DEAGLE], AMMOTYPE[CSW_DEAGLE], MAXBPAMMO[CSW_DEAGLE])
		}
		else if(g_hm_special[id] == SPY) {
			fm_give_item(id, "weapon_m3")
			ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[CSW_M3], AMMOTYPE[CSW_M3], MAXBPAMMO[CSW_M3])
			set_task(1.0, "turn_invisible", id)
		}

		if(g_hm_special[id] != BERSERKER)
			g_infammo[id] = get_pcvar_num(cvar_hm_infammo[g_hm_special[id]])
		else
			g_infammo[id] = 0

	}
	else if(!g_hclass_i) { // Default human if not have human classes
		fm_set_user_health(id, get_pcvar_num(cvar_hm_health[0])) // Set health

		// Set gravity, unless frozen
		if(!g_frozen[id]) set_pev(id, pev_gravity, get_pcvar_float(cvar_hmgravity[0]))
		else g_frozen_gravity[id] = get_pcvar_float(cvar_hmgravity[0])

		g_infammo[id] = get_pcvar_num(cvar_hm_infammo[0])

		if(get_pcvar_num(cvar_buycustom)) set_task(0.2, "menu_buy_show", id+TASK_SPAWN) // Show custom buy menu?
	}
	else { // Human class attributes
		set_hclass_attributes(id)
	}

	if(!silentmode && classid <= 0) { // Silent mode = no HUD messages, no antidote sound
		// Antidote sound
		static sound[64]
		ArrayGetString(ar_sound[18], random_num(0, ArraySize(ar_sound[18]) - 1), sound, charsmax(sound))
		emit_sound(id, CHAN_ITEM, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)

		// Show Antidote HUD notice
		set_hudmessage(10, 255, 235, HUD_INFECT_X, HUD_INFECT_Y, 1, 0.0, 5.0, 1.0, 1.0, -1)
		ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_ANTIDOTE", g_playername[id])
	}

	// Switch to CT
	if(fm_cs_get_user_team(id) != FM_CS_TEAM_CT) { // need to change team?
		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_CT)
		fm_user_team_update(id)
	}

	// Restore FOV?
	if(get_pcvar_num(cvar_zombiefov) != 90 && get_pcvar_num(cvar_zombiefov) != 0) {
		message_begin(MSG_ONE, g_msgSetFOV, _, id)
		write_byte(90) // angle
		message_end()
	}

	// Give nvision for humans ?
	static enable; enable = 0
	if(classid >= MAX_SPECIALS_HUMANS) enable = ArrayGetCell(g_hm_sp_nvision, classid-MAX_SPECIALS_HUMANS)
	else enable = get_pcvar_num(cvar_hm_nvggive[classid])

	if(enable) {
		g_nvision[id] = true
		if(g_isbot[id])
			cs_set_user_nvg(id, 1);
		if(enable == 1) { // Turn on Night Vision automatically?
			g_nvisionenabled[id] = true
			user_nightvision(id, 1)
		}
		else nvision_toggle_off(id)
	}
	else if(g_nvision[id]) { // Disable nightvision when turning into human/survivor (bugfix)
		nvision_toggle_off(id)
		g_nvision[id] = false
	}

	reset_player_models(id) // Set models
	if(!g_frozen[id]) reset_user_rendering(id) // Reset Rendering
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id) // Set class speed

	ExecuteForward(g_forwards[HUMANIZED_POST], g_fwDummyResult, id, classid, attacker) // Post user humanize forward
	fnCheckLastZombie() // Last Zombie Check
}

set_hclass_attributes(id)
{
	if(!is_user_valid_alive(id))
		return;

	static CvarHclasses;
	CvarHclasses = get_pcvar_num(cvar_hclasses);
	if(g_hclass_next[id] == NULL_CLASS && CvarHclasses || !g_choosed_hclass[id] && CvarHclasses && get_pcvar_num(cvar_chosse_instantanly[1]))
		set_task(0.2, "show_menu_human_class", id+TASK_SPAWN)
	else if(get_pcvar_num(cvar_buycustom) && g_canbuy[id]) {
		if(g_canbuy[id] == 2) set_task(0.2, "menu_buy_show", id+TASK_SPAWN); // Show custom buy menu?
		else if(g_canbuy[id] == 1) show_menu_buy(id, 1);
	}


	g_user_hclass[id] = g_hclass_next[id]
	if(g_user_hclass[id] == NULL_CLASS) g_user_hclass[id] = 0

	static ClassArmor, userHealth, Float:Gravity
	ClassArmor = ArrayGetCell(g_hclass_armor, g_user_hclass[id])
	userHealth = ArrayGetCell(g_hclass_hp, g_user_hclass[id])
	Gravity = Float:ArrayGetCell(g_hclass_gravity, g_user_hclass[id])
	g_spd[id] = float(ArrayGetCell(g_hclass_speed, g_user_hclass[id]))
	g_infammo[id] = get_pcvar_num(cvar_hm_infammo[0])

	// If Gravity/Armor/Health are equal or less than 0 use a default internal human configs
	if(g_spd[id] <= 0)
		g_spd[id] = get_pcvar_float(cvar_hm_spd[0])
	if(Gravity <= 0.0)
		Gravity = get_pcvar_float(cvar_hmgravity[0])

	fm_set_user_health(id, (userHealth > 0) ? userHealth : get_pcvar_num(cvar_hm_health[0])) // Dont change HP when choose other hclass instantanly

	// Set Class Armor
	if(ClassArmor > 0)
		set_pev(id, pev_armorvalue, float(ClassArmor))
	else cs_set_user_armor(id, 0, CS_ARMOR_NONE)

	// Set gravity, unless frozen
	if(!g_frozen[id]) set_pev(id, pev_gravity, Gravity)
	else g_frozen_gravity[id] = Gravity

	if(ArrayGetCell(g_hclass_lang_enable, g_user_hclass[id])) {
		ArrayGetString(g_hclass_name_lang_key, g_user_hclass[id], g_pl_classname[id], charsmax(g_pl_classname[]))
		//formatex(g_pl_classname[id], charsmax(g_pl_classname[]), "%L", id, g_pl_classname[id])
		g_pl_classname_lang[id] = true
	}
	else {
		ArrayGetString(g_hclass_name, g_user_hclass[id], g_pl_classname[id], charsmax(g_pl_classname[]))
		g_pl_classname_lang[id] = false
	}
}


/*================================================================================
 [Other Functions and Tasks]
=================================================================================*/
public cache_cvars() {
	g_cached_zombiesilent = get_pcvar_num(cvar_zombiesilent)
	g_cached_customflash = get_pcvar_num(cvar_customflash)
	g_cached_buytime = get_pcvar_float(cvar_buyzonetime)

	static i
	for(i = 1; i < MAX_SPECIALS_HUMANS; i++) {
		g_hm_cached_leap[i] = get_pcvar_num(cvar_leap_hm_allow[i])
		g_hm_cached_cooldown[i] = get_pcvar_float(cvar_leap_hm_cooldown[i])
	}
	for(i = 0; i < MAX_SPECIALS_ZOMBIES; i++)  {
		g_zm_cached_leap[i] = get_pcvar_num(cvar_leap_zm_allow[i])
		g_zm_cached_cooldown[i] = get_pcvar_float(cvar_leap_zm_cooldown[i])
	}
}
load_customization_from_files() {
	static path[64]; get_configsdir(path, charsmax(path))
	format(path, charsmax(path), "%s/%s", path, ZP_CUSTOMIZATION_FILE)

	// File not present
	if(!file_exists(path)) {
		set_fail_state("[ZP Special] Cannot load customization file %s!", path)
		return;
	}

	// Automate for noobs
	if(!amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Advanced Configs", "ENABLE AUTO SETTINGS", g_automate_setting)) {
		amx_save_setting_int(ZP_CUSTOMIZATION_FILE, "Advanced Configs", "ENABLE AUTO SETTINGS", 1)
		g_automate_setting = 1
	}

	// Zombie Escape Map Suport
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Escape Maps", "ZOMBIE ESCAPE SUPPORT MAPS", g_escape_maps)
	if(is_escape_map()) g_escape_map = true

	static i, x, szKey[150], num, user_access[40]
	new zombie_special_names[MAX_SPECIALS_ZOMBIES][] = { "ZOMBIE", "NEMESIS", "ASSASSIN", "PREDATOR", "BOMBARDIER", "DRAGON" }
	new human_special_names[MAX_SPECIALS_HUMANS][] = { "HUMAN", "SURVIVOR", "SNIPER", "BERSERKER", "WESKER", "SPY" }

	// Section Main Configs
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Main Configs", "GAME NAME", g_modname, charsmax(g_modname));
	amx_load_setting_float(ZP_CUSTOMIZATION_FILE, "Main Configs", "NADE EXPLOSION RADIUS", NADE_EXPLOSION_RADIUS);

	for(i = 1; i < MAX_SPECIALS_ZOMBIES; i++) {
		num = 0
		formatex(szKey, charsmax(szKey), "ENABLE %s", zombie_special_names[i])
		amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Main Configs", szKey, num)

		if(CheckAllowed(num)) zm_special_enable[i] =  true
		else zm_special_enable[i] =  false
	}

	for(i = 1; i < MAX_SPECIALS_HUMANS; i++) {
		num = 0
		amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Main Configs", fmt("ENABLE %s", human_special_names[i]), num)

		if(CheckAllowed(num)) hm_special_enable[i] =  true
		else hm_special_enable[i] =  false
	}

	// Section Access Flags
	new access_names[MAX_ACCESS_FLAGS][] = { "ADMIN MENU OF CLASSES", "START MODE INFECTION", "START MODE NEMESIS", "START MODE ASSASSIN", "START MODE PREDATOR",
	"START MODE BOMBARDIER", "START MODE DRAGON", "START MODE SURVIVOR", "START MODE SNIPER", "START MODE BERSERKER", "START MODE WESKER", "START MODE SPY",
	"START MODE SWARM", "START MODE MULTI", "START MODE PLAGUE", "START MODE LNJ", 	"ADMIN MENU OF MODES", "ADMIN MENU MAIN ACCESS", "ADMIN MODELS", "VIP MODELS",
	"RESPAWN PLAYERS",	"MAKE ZOMBIE", "MAKE HUMAN", "MAKE NEMESIS", "MAKE SURVIVOR", "MAKE SNIPER", "MAKE ASSASSIN", "MAKE BERSERKER", "MAKE PREDATOR", "MAKE WESKER",
	"MAKE BOMBARDIER", "MAKE SPY", "MAKE DRAGON" }

	for(i = 0; i < MAX_ACCESS_FLAGS; i++) {
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", access_names[i], user_access, charsmax(user_access));
		g_access_flag[i] = read_flags(user_access);
	}

	// Player Models
	for(i = 0; i < MAX_SPECIALS_HUMANS; i++) {
		amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Player Models", human_special_names[i], model_human[i])
		amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", fmt("%s BODY", human_special_names[i]), model_human_body[i])
		amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", fmt("%s SKIN", human_special_names[i]), model_human_skin[i])
		AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_human[i], model_human_body[i], "Player Models", fmt("%s BODY", human_special_names[i]), 0)
		AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_human[i], model_human_skin[i], "Player Models", fmt("%s SKIN", human_special_names[i]), 0)

	}
	for(i = 1; i < MAX_SPECIALS_ZOMBIES; i++) {
		amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Player Models", zombie_special_names[i], model_zm_special[i])
		amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", fmt("%s BODY", zombie_special_names[i]), model_zm_special_body[i])
		amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", fmt("%s SKIN", zombie_special_names[i]), model_zm_special_skin[i])
		AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_zm_special[i], model_zm_special_body[i], "Player Models", fmt("%s BODY", human_special_names[i]), 0)
		AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_zm_special[i], model_zm_special_skin[i], "Player Models", fmt("%s SKIN", human_special_names[i]), 0)
	}

	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ADMIN ZOMBIE", model_adm_zm)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ADMIN ZOMBIE BODY", model_adm_zm_body)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ADMIN ZOMBIE SKIN", model_adm_zm_skin)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_adm_zm, model_adm_zm_body, "Player Models", "ADMIN ZOMBIE BODY", 0)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_adm_zm, model_adm_zm_skin, "Player Models", "ADMIN ZOMBIE SKIN", 0)

	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "VIP ZOMBIE", model_vip_zm)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "VIP ZOMBIE BODY", model_vip_zm_body)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "VIP ZOMBIE SKIN", model_vip_zm_skin)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_vip_zm, model_vip_zm_body, "Player Models", "VIP ZOMBIE BODY", 0)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_vip_zm, model_vip_zm_skin, "Player Models", "VIP ZOMBIE SKIN", 0)

	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ADMIN HUMAN", model_adm_hm)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ADMIN HUMAN BODY", model_adm_hm_body)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ADMIN HUMAN SKIN", model_adm_hm_skin)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_adm_hm, model_adm_hm_body, "Player Models", "ADMIN HUMAN BODY", 0)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_adm_hm, model_adm_hm_skin, "Player Models", "ADMIN HUMAN SKIN", 0)

	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "VIP HUMAN", model_vip_hm)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "VIP HUMAN BODY", model_vip_hm_body)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "VIP HUMAN SKIN", model_vip_hm_skin)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_vip_hm, model_vip_hm_body, "Player Models", "VIP HUMAN BODY", 0)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, model_vip_hm, model_vip_hm_skin, "Player Models", "VIP HUMAN SKIN", 0)

	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Player Models", "FORCE CONSISTENCY", g_force_consistency)
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Player Models", "SAME MODELS FOR ALL", g_same_models_for_all)

	if(g_same_models_for_all) {
		amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ZOMBIE", g_zclass_playermodel)
		amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ZOMBIE BODY", g_zclass_body)
		amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Player Models", "ZOMBIE SKIN", g_zclass_skin)
		AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, g_zclass_playermodel, g_zclass_body, "Player Models", "ZOMBIE BODY", 0)
		AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, g_zclass_playermodel, g_zclass_skin, "Player Models", "ZOMBIE SKIN", 0)

		for(i = 0; i < ArraySize(g_zclass_playermodel); i++) { // Precache model and retrieve its modelindex
			ArrayGetString(g_zclass_playermodel, i, szKey, charsmax(szKey))
			precache_player_model(szKey)
		}

	}

	// Weapon Models
	for(i = 1; i < MAX_SPECIALS_ZOMBIES; i++) {
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("V_KNIFE %s", zombie_special_names[i]), model_vknife_zm_special[i], charsmax(model_vknife_zm_special[]))
	}

	new special_hm_wpn_names[MAX_SPECIALS_HUMANS][] = { "KNIFE HUMAN", "WEAPON SURVIVOR", "AWP SNIPER", "KNIFE BERSERKER", "DEAGLE WESKER", "M3 SPY" }
	for(i = 0; i < MAX_SPECIALS_HUMANS; i++) {
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("V_%s", special_hm_wpn_names[i]), model_v_weapon_human[i], charsmax(model_v_weapon_human[]));
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("P_%s", special_hm_wpn_names[i]), model_p_weapon_human[i], charsmax(model_p_weapon_human[]));
	}
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_KNIFE ADMIN HUMAN", model_knife_admin_human[VIEW_MODEL], charsmax(model_knife_admin_human[]))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "P_KNIFE ADMIN HUMAN", model_knife_admin_human[PLAYER_MODEL], charsmax(model_knife_admin_human[]))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_KNIFE VIP HUMAN", model_knife_vip_human[VIEW_MODEL], charsmax(model_knife_vip_human[]))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "P_KNIFE VIP HUMAN", model_knife_vip_human[PLAYER_MODEL], charsmax(model_knife_vip_human[]))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_KNIFE ADMIN ZOMBIE", model_vknife_admin_zombie, charsmax(model_vknife_admin_zombie))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", "V_KNIFE VIP ZOMBIE", model_vknife_vip_zombie, charsmax(model_vknife_vip_zombie))

	new wpn_mdl_type[MAX_WPN_MDL][] = { "V", "P", "W" }
	for(i = 0; i < MAX_WPN_MDL; i++) {
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("%s_GRENADE INFECT", wpn_mdl_type[i]), model_grenade_infect[i], charsmax(model_grenade_infect[]))
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("%s_GRENADE BOMBARDIER", wpn_mdl_type[i]), model_grenade_bombardier[i], charsmax(model_grenade_bombardier[]))
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("%s_GRENADE FIRE", wpn_mdl_type[i]), model_grenade_fire[i], charsmax(model_grenade_fire[]))
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("%s_GRENADE FROST", wpn_mdl_type[i]), model_grenade_frost[i], charsmax(model_grenade_frost[]))
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weapon Models", fmt("%s_GRENADE FLARE", wpn_mdl_type[i]), model_grenade_flare[i], charsmax(model_grenade_flare[]))
	}

	// Grenade Sprites
	new const grenade_type_str[MAX_GRENADES][] = { "FIRE", "FROST", "FLARE", "INFECTION" }
	static rgb_str[32], rgb[3][10]
	for(i = 0; i < MAX_GRENADES; i++) {
		amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", fmt("ENABLE %s TRAIL", grenade_type_str[i]), enable_trail[i])
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", fmt("%s TRAIL", grenade_type_str[i]), sprite_grenade_trail[i], charsmax(sprite_grenade_trail[]))

		if(i == FLARE)
			continue;

		amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", fmt("ENABLE %s EXPLODE", grenade_type_str[i]), enable_explode[i])
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", fmt("%s EXPLODE", grenade_type_str[i]), sprite_grenade_explode[i], charsmax(sprite_grenade_explode[]))
		amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", fmt("ENABLE %s GIB", grenade_type_str[i]), enable_gib[i])
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", fmt("%s GIB", grenade_type_str[i]), sprite_grenade_gib[i], charsmax(sprite_grenade_gib[]))
		amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", fmt("%s GRENADE RGB", grenade_type_str[i]), rgb_str, charsmax(rgb_str))


		parse(rgb_str, rgb[0], charsmax(rgb[]), rgb[1], charsmax(rgb[]), rgb[2], charsmax(rgb[]))
		for(x = 0; x < 3; x++) grenade_rgb[i][x] = str_to_num(rgb[x])
	}
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", "RING", sprite_grenade_ring, charsmax(sprite_grenade_ring))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", "FIRE", sprite_grenade_fire, charsmax(sprite_grenade_fire))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", "SMOKE", sprite_grenade_smoke, charsmax(sprite_grenade_smoke))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Grenade Sprites", "GLASS", sprite_grenade_glass, charsmax(sprite_grenade_glass))

	// Sounds
	new const ar_sounds_str[MAX_ARRAY_SOUNDS][] = { "ZOMBIE INFECT", "ZOMBIE DIE", "ZOMBIE FALL", "ZOMBIE MISS SLASH", "ZOMBIE MISS WALL", "ZOMBIE HIT NORMAL", "ZOMBIE HIT STAB",
	"ZOMBIE IDLE", "ZOMBIE IDLE LAST", "ZOMBIE MADNESS", "GRENADE INFECT EXPLODE", "GRENADE INFECT PLAYER", "GRENADE FIRE EXPLODE", "GRENADE FIRE PLAYER", "GRENADE FROST EXPLODE",
	"GRENADE FROST PLAYER", "GRENADE FROST BREAK", "GRENADE FLARE", "ANTIDOTE", "THUNDER" }

	for(i = 0; i < MAX_ARRAY_SOUNDS; i++)
		amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", ar_sounds_str[i], ar_sound[i])

	for(i = 0; i < MAX_SPECIALS_ZOMBIES; i++)
	{
		if(i == 0) amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", "DEFAULT ZOMBIE PAIN", zombie_pain[i])
		else amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", fmt("%s PAIN", zombie_special_names[i]), zombie_pain[i])
	}

	new mode_name_str[MAX_GAME_MODES][] = { "NONE", "INFECTION", "NEMESIS", "ASSASSIN", "PREDATOR", "BOMBARDIER", "DRAGON",
	"SURVIVOR", "SNIPER", "BERSERKER", "WESKER", "SPY", "SWARM", "MULTI", "PLAGUE", "LNJ" }

	for(i = 2; i < MAX_GAME_MODES; i++) {
		amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", fmt("ROUND %s", mode_name_str[i]), sound_mod[i])
	}

	// End Round Sound
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "End Round Sound", "ENABLE END ROUND SOUNDS", g_enable_end_round_sounds)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "End Round Sound", "WIN ZOMBIES", sound_win_zombies)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "End Round Sound", "WIN HUMANS", sound_win_humans)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "End Round Sound", "WIN NO ONE", sound_win_no_one)

	// Ambience Sounds
	new ambience_snd_names[MAX_AMBIENCE_SOUNDS][] = { "INFECTION", "NEMESIS", "ASSASSIN", "PREDATOR", "BOMBARDIER", "DRAGON", "SURVIVOR", "SNIPER", "BERSERKER", "WESKER", "SPY", "SWARM", "MULTI", "PLAGUE", "LNJ" }

	for(i = 0; i < MAX_AMBIENCE_SOUNDS; i++) {
		amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s ENABLE", ambience_snd_names[i]), g_ambience_sounds[i])
		if(g_ambience_sounds[i]) {
			amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s SOUNDS", ambience_snd_names[i]), sound_ambience[i])
			amx_load_setting_float_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s DURATIONS", ambience_snd_names[i]), sound_ambience_duration[i])
			AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, sound_ambience[i], sound_ambience_duration[i], "Ambience Sounds", fmt("%s DURATIONS", ambience_snd_names[i]), 2)
		}
	}

	// Buy Menu Weapons
	static wpn_ids[32]
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Buy Menu Weapons", "DEFAULT WEAPONS USE LANG", g_def_wpn_use_lang)
	for(x = 0; x < 2; x++) {
		amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Buy Menu Weapons", (x == 0) ? "PRIMARY" : "SECONDARY", g_wpn_realname[x])
		for(i = 0; i < ArraySize(g_wpn_realname[x]); i++) {
			ArrayGetString(g_wpn_realname[x], i, wpn_ids, charsmax(wpn_ids))
			ArrayPushCell(g_wpn_ids[x], cs_weapon_name_to_id(wpn_ids))
			ArrayPushString(g_wpn_name[x], WEAPONNAMES[cs_weapon_name_to_id(wpn_ids)])
			ArrayPushCell(g_wpn_name_by_lang[x], g_def_wpn_use_lang)
			ArrayPushString(g_wpn_lang_key[x], WPN_LANG_KEYS[cs_weapon_name_to_id(wpn_ids)])
			ArrayPushCell(g_wpn_is_custom[x], 0)
			g_wpn_i[x]++
		}
	}
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Buy Menu Weapons", "ADDITIONAL ITEMS", g_additional_items)

	// Extra Items: Weapons and their costs
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Extra Items: Weapons and their costs", "NAMES", g_extraweapon_names)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Extra Items: Weapons and their costs", "ITEMS", g_extraweapon_items)
	amx_load_setting_int_arr(ZP_CUSTOMIZATION_FILE, "Extra Items: Weapons and their costs", "COSTS", g_extraweapon_costs)
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Extra Items: Weapons and their costs", "NAMES BY LANG", g_extraweapon_name_by_lang)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Extra Items: Weapons and their costs", "LANG KEY", g_extraweapon_lang_key)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, g_extraweapon_items, g_extraweapon_names, "Extra Items: Weapons and their costs", "NAMES", 1)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, g_extraweapon_names, g_extraweapon_items, "Extra Items: Weapons and their costs", "ITEMS", 1)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, g_extraweapon_names, g_extraweapon_lang_key, "Extra Items: Weapons and their costs", "LANG KEY", 1)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, g_extraweapon_names, g_extraweapon_costs, "Extra Items: Weapons and their costs", "COSTS", 0)

	// Hard Coded Items Costs
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Hard Coded Items Costs", "NIGHT VISION", g_extra_costs2[EXTRA_NVISION])
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Hard Coded Items Costs", "ANTIDOTE", g_extra_costs2[EXTRA_ANTIDOTE])
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Hard Coded Items Costs", "ZOMBIE MADNESS", g_extra_costs2[EXTRA_MADNESS])
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Hard Coded Items Costs", "INFECTION BOMB", g_extra_costs2[EXTRA_INFBOMB])

	// Weather Effects
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Weather Effects", "RAIN", g_ambience_rain)
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Weather Effects", "SNOW", g_ambience_snow)
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Weather Effects", "FOG", g_ambience_fog)
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weather Effects", "FOG DENSITY", g_fog_density, charsmax(g_fog_density))
	amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Weather Effects", "FOG COLOR", g_fog_color, charsmax(g_fog_color))

	// Custom Skies
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Custom Skies", "ENABLE", g_sky_enable)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Custom Skies", "SKY NAMES", g_sky_names)

	if(g_sky_enable) { // Choose random sky and precache sky files
		static skyname[32]
		for(i = 0; i < ArraySize(g_sky_names); i++) {
			ArrayGetString(g_sky_names, i, skyname, charsmax(skyname))
			engfunc(EngFunc_PrecacheGeneric, fmt("gfx/env/%sbk.tga", skyname));
			engfunc(EngFunc_PrecacheGeneric, fmt("gfx/env/%sdn.tga", skyname));
			engfunc(EngFunc_PrecacheGeneric, fmt("gfx/env/%sft.tga", skyname));
			engfunc(EngFunc_PrecacheGeneric, fmt("gfx/env/%slf.tga", skyname));
			engfunc(EngFunc_PrecacheGeneric, fmt("gfx/env/%srt.tga", skyname));
			engfunc(EngFunc_PrecacheGeneric, fmt("gfx/env/%sup.tga", skyname));
		}
	}
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Lightning Lights Cycle", "LIGHTS", lights_thunder) // Lightning Lights Cycle
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Zombie Decals", "DECALS", zombie_decals) // Zombie Decals

	// Knockback Power for Weapons / Weapon Weight
	static wpn_key
	for(i = 1; i < sizeof WEAPONENTNAMES; i++) {
		if(!WEAPONENTNAMES[i][0]) continue;

		wpn_key = cs_weapon_name_to_id(WEAPONENTNAMES[i])
		static buffer[32]; format(buffer, charsmax(buffer), "%s", WEAPONENTNAMES[i])
		replace_string(buffer, charsmax(buffer), "weapon_", "")
		strtoupper(buffer)

		amx_load_setting_float(ZP_CUSTOMIZATION_FILE, "Knockback Power for Weapons", buffer, kb_weapon_power[wpn_key])
		amx_load_setting_float(ZP_CUSTOMIZATION_FILE, "Weapon Weight Speed Multi", buffer, weapon_spd_multi[wpn_key])
	}

	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Objective Entities", "CLASSNAMES", g_objective_ents) // Objective Entities

	// SVC_BAD Prevention
	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "SVC_BAD Prevention", "SET MODELINDEX OFFSET", g_set_modelindex_offset)


	static Array:ArrDeathSnd, szSound[64]
	ArrDeathSnd = ArrayCreate(64, 1)
	for(x = 1; x < MAX_SPECIALS_ZOMBIES; x++) {
		// Load Zombie Special Class Death Sounds //
		ArrayPushCell(g_zm_sp_deathsnd_handle, ArrDeathSnd)
		amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", fmt("%s DEATH", zombie_special_names[x]), ArrDeathSnd)
		if(ArraySize(ArrDeathSnd) > 0) {
			ArrayPushCell(g_zm_sp_use_deathsnd, true)
			for(i = 0; i < ArraySize(ArrDeathSnd); i++) {
				ArrayGetString(ArrDeathSnd, i, szSound, charsmax(szSound))
				engfunc(EngFunc_PrecacheSound, szSound) // Precache Pain Sound
			}
		}
		else {
			amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Sounds", fmt("%s DEATH", zombie_special_names[x]), "")
			ArrayPushCell(g_zm_sp_use_deathsnd, false)
		}
	}
}

public disable_minmodels(id) { // Disable minmodels task
	if(!g_isconnected[id]) return;
	client_cmd(id, "cl_minmodels 0")
	client_cmd(id, "gl_fog 1")
}
public bot_buy_extras(taskid) { // Bots automatically buy extra items
	// Specials bots have nothing to buy by default
	if(!g_isalive[ID_SPAWN] || g_hm_special[ID_SPAWN] > 0 || g_zm_special[ID_SPAWN] > 0 || g_bot_extra_count[ID_SPAWN] >= get_pcvar_num(cvar_bot_maxitem)) return;

	if(!g_zombie[ID_SPAWN]) buy_extra_item(ID_SPAWN, EXTRA_NVISION, 1) // Attempt to buy Night Vision
	buy_extra_item(ID_SPAWN, random_num(0, g_extraitem_i-1), 1) // Attempt to buy a item

	set_task(get_pcvar_float(cvar_bot_buyitem_interval), "bot_buy_extras", ID_SPAWN+TASK_SPAWN)
}
public refill_bpammo(const args[], id) { // Refill BP Ammo Task
	if(!g_isalive[id] || g_zombie[id]) return; // Player died or turned into a zombie

	set_msg_block(g_msgAmmoPickup, BLOCK_ONCE)
	ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[REFILL_WEAPONID], AMMOTYPE[REFILL_WEAPONID], MAXBPAMMO[REFILL_WEAPONID])
}
balance_teams() { // Balance Teams Task
	static iPlayersnum; iPlayersnum = fnGetPlaying() // Get amount of users playing

	if(iPlayersnum < 1) return; // No players, don't bother

	// Split players evenly
	static iTerrors, iMaxTerrors, id, team[33]
	iMaxTerrors = iPlayersnum/2
	iTerrors = 0

	// First, set everyone to CT
	for(id = 1; id <= MaxClients; id++) {
		if(!g_isconnected[id]) continue; // Skip if not connected

		team[id] = fm_cs_get_user_team(id)
		if(team[id] == FM_CS_TEAM_SPECTATOR || team[id] == FM_CS_TEAM_UNASSIGNED) continue; // Skip if not playing

		remove_task(id+TASK_TEAM)
		fm_cs_set_user_team(id, FM_CS_TEAM_CT) // Set team
		team[id] = FM_CS_TEAM_CT
	}

	while(iTerrors < iMaxTerrors) { // Then randomly set half of the players to Terrorists
		if(++id > MaxClients) id = 1 // Keep looping through all players

		if(!g_isconnected[id]) continue; // Skip if not connected

		if(team[id] != FM_CS_TEAM_CT) continue; // Skip if not playing or already a Terrorist

		if(random_num(0, 1)) { // Random chance
			fm_cs_set_user_team(id, FM_CS_TEAM_T)
			team[id] = FM_CS_TEAM_T
			iTerrors++
		}
	}
}
public welcome_msg() { // Welcome Message Task
	client_print_color(0, print_team_default, "^1**** ^4Zombie Plague Special %s^1 ****", VERSION) // Show mod info
	client_print_color(0, print_team_default, "%L %L", LANG_PLAYER, "ZP_CHAT_TAG", LANG_PLAYER, "NOTICE_INFO1")
	if(!get_pcvar_num(cvar_hm_infammo[0])) client_print_color(0, print_team_default, "%L %L", LANG_PLAYER, "ZP_CHAT_TAG", LANG_PLAYER, "NOTICE_INFO2")

	set_hudmessage(0, 125, 200, HUD_EVENT_X, HUD_EVENT_Y, 1, 0.0, 3.0, 2.0, 1.0, -1) // Show T-virus HUD notice
	ShowSyncHudMsg(0, g_MsgSync[0], "%L", LANG_PLAYER, "NOTICE_VIRUS_FREE")
}
public respawn_player_check_task(taskid) { // Respawn Player Check Task (if killed by worldspawn)
	if(g_isalive[ID_SPAWN] || g_endround) return; // Successfully spawned or round ended

	static team; team = fm_cs_get_user_team(ID_SPAWN) // Get player's team

	if(team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED) return; // Player moved to spectators

	// If player was being spawned as a zombie, set the flag again
	if(g_zombie[ID_SPAWN]) g_respawn_as_zombie[ID_SPAWN] = true
	else g_respawn_as_zombie[ID_SPAWN] = false

	respawn_player_manually(ID_SPAWN)
}
public respawn_player_task(taskid) { // Respawn Player Task
	static team; team = fm_cs_get_user_team(ID_SPAWN) // Get player's team

	if(team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED)
		return;

	if((!g_endround && !g_isalive[ID_SPAWN]) && (!isCustomMode() || g_deathmatchmode)) {
		// Infection rounds = none of the above
		if(g_currentmode == MODE_NONE) {
			g_respawn_as_zombie[ID_SPAWN] = false
			respawn_player_manually(ID_SPAWN)
			return;
		}
		else {
			if(!get_pcvar_num(cvar_mod_allow_respawn[MODE_INFECTION]) && (g_currentmode == MODE_INFECTION || g_currentmode == MODE_MULTI))
				return;

			if(g_currentmode < MAX_GAME_MODES && g_currentmode != MODE_INFECTION && g_currentmode != MODE_MULTI) {
				if(!get_pcvar_num(cvar_mod_allow_respawn[g_currentmode]))
					return;
			}

			// Override respawn as zombie setting on nemesis, assassin, survivor, sniper and berserker rounds
			if(g_currentmode >= MODE_SURVIVOR && g_currentmode < MODE_SWARM) g_respawn_as_zombie[ID_SPAWN] = true
			else if(g_currentmode >= MODE_NEMESIS && g_currentmode < MODE_SURVIVOR) g_respawn_as_zombie[ID_SPAWN] = false

			g_respawn_count[ID_SPAWN]++
			respawn_player_manually(ID_SPAWN)
		}
	}
}
respawn_player_manually(id) { // Respawn Player Manually (called after respawn checks are done)
	// Set proper team before respawning, so that the TeamInfo message that's sent doesn't confuse PODBots
	if(g_respawn_as_zombie[id]) fm_cs_set_user_team(id, FM_CS_TEAM_T)
	else fm_cs_set_user_team(id, FM_CS_TEAM_CT)

	ExecuteHamB(Ham_CS_RoundRespawn, id) // Respawning a player has never been so easy
}

check_round(leaving_player) { // Check Round Task -check that we still have both zombies and humans on a round-
	if(g_endround || task_exists(TASK_MAKEZOMBIE)) return; // Round ended or make_a_zombie task still active

	// Get alive players count
	static iPlayersnum, id
	iPlayersnum = fnGetAlive()

	if(iPlayersnum < 2) return; // Last alive player, don't bother

	if(g_zombie[leaving_player] && fnGetZombies() == 1) { // Last zombie disconnecting
		if(fnGetHumans() == 1 && fnGetPlayersInTeam(FM_CS_TEAM_CT) == 1) return; // Only one CT left, don't bother

		// Pick a random one to take his place
		while((id = fnGetRandomAlive(random_num(1, iPlayersnum))) == leaving_player) { /* keep looping */ }

		client_print_color(0, print_team_default, "%L %L", LANG_PLAYER, "ZP_CHAT_TAG", LANG_PLAYER, "LAST_ZOMBIE_LEFT", g_playername[id]) // Show last zombie left notice

		g_lastplayerleaving = true // Set player leaving flag
		zombieme(id, 0, g_zm_special[leaving_player], 0, 0) // Turn into a Special class or just a zombie?
		g_lastplayerleaving = false // Remove player leaving flag

		// If Specials, set chosen player's health to that of the one who's leaving
		if(get_pcvar_num(cvar_keephealthondisconnect) && isDefaultSpecialZombie(leaving_player))
			fm_set_user_health(id, fm_get_user_health(leaving_player))
	}
	else if(isDefaultHuman(leaving_player) && fnGetHumans() == 1) { // Last human disconnecting
		if(fnGetZombies() == 1 && fnGetPlayersInTeam(FM_CS_TEAM_T) == 1) return; // Only one T left, don't bother

		// Pick a random one to take his place
		while((id = fnGetRandomAlive(random_num(1, iPlayersnum))) == leaving_player) { /* keep looping */ }

		client_print_color(0, print_team_default, "%L %L", LANG_PLAYER, "ZP_CHAT_TAG", LANG_PLAYER, "LAST_HUMAN_LEFT", g_playername[id]) // Show last human left notice

		g_lastplayerleaving = true // Set player leaving flag
		humanme(id, g_hm_special[leaving_player], 0, 0) // Turn into a Special class or just a human?
		g_lastplayerleaving = false // Remove player leaving flag

		if(get_pcvar_num(cvar_keephealthondisconnect) && (g_hm_special[leaving_player] > 0))
			fm_set_user_health(id, fm_get_user_health(leaving_player))
	}
}
public lighting_effects() { // Lighting Effects Task
	cache_cvars() // Cache some CVAR values at every 5 secs

	// Get lighting style
	static lighting[5]
	if(g_custom_light) formatex(lighting, charsmax(lighting), custom_lighting)
	else if(g_currentmode == MODE_ASSASSIN) formatex(lighting, charsmax(lighting), "a") // no lighting in assassin round
	else get_pcvar_string(cvar_lighting, lighting, charsmax(lighting))

	strtolower(lighting)

	if(lighting[0] == '0') return; // Lighting disabled? ["0"]

	if(lighting[0] >= 'a' && lighting[0] <= 'd') { // Darkest light settings?
		static thunderclap_in_progress, Float:thunder
		thunderclap_in_progress = task_exists(TASK_THUNDER)
		thunder = get_pcvar_float(cvar_thunder)

		if(thunder > 0.0 && !task_exists(TASK_THUNDER_PRE) && !thunderclap_in_progress) { // Set thunderclap tasks if not existant
			g_lights_i = 0
			ArrayGetString(lights_thunder, random_num(0, ArraySize(lights_thunder) - 1), g_lights_cycle, charsmax(g_lights_cycle))
			g_lights_cycle_len = strlen(g_lights_cycle)
			set_task(thunder, "thunderclap", TASK_THUNDER_PRE)
		}

		if(!thunderclap_in_progress) {
			//engfunc(EngFunc_LightStyle, 0, lighting) // Set lighting only when no thunderclaps are going on
			set_all_light(lighting)
		}
	}
	else {
		remove_task(TASK_THUNDER_PRE) // Remove thunderclap tasks
		remove_task(TASK_THUNDER)
		set_all_light(lighting)
		//engfunc(EngFunc_LightStyle, 0, lighting)  // Set lighting
	}
}
public thunderclap() { // Thunderclap task
	if(g_lights_i == 0) { // Play thunder sound
		static sound[64]
		ArrayGetString(ar_sound[19], random_num(0, ArraySize(ar_sound[19]) - 1), sound, charsmax(sound))
		PlaySound(sound)
	}

	// Set lighting
	static light[2]
	light[0] = g_lights_cycle[g_lights_i]
	//engfunc(EngFunc_LightStyle, 0, light)
	set_all_light(light)

	g_lights_i++

	if(g_lights_i >= g_lights_cycle_len) { // Lighting cycle end?
		remove_task(TASK_THUNDER)
		lighting_effects()
	}
	else if(!task_exists(TASK_THUNDER)) set_task(0.1, "thunderclap", TASK_THUNDER, _, _, "b") // Lighting cycle start?
}
public ambience_sound_effects(taskid) { // Ambience Sound Effects Task
	static sound[64], iRand, Float:duration// Play a random sound depending on the round
	static Array:ArrDuration, Array:ArrSound

	if(g_currentmode < MAX_GAME_MODES) {
		ArrSound = sound_ambience[g_currentmode-1];
		ArrDuration = sound_ambience_duration[g_currentmode-1];
	}
	else {
		ArrSound = ArrayGetCell(g_gm_amb_sound_handle, g_currentmode-MAX_GAME_MODES)
		ArrDuration = ArrayGetCell(g_gm_amb_duration_handle, g_currentmode-MAX_GAME_MODES)
	}

	iRand = random_num(0, ArraySize(ArrSound) - 1)
	ArrayGetString(ArrSound, iRand, sound, charsmax(sound))
	duration = Float:ArrayGetCell(ArrDuration, iRand);

	PlaySound(sound) // Play it on clients
	set_task(duration, "ambience_sound_effects", TASK_AMBIENCESOUNDS) // Set the task for when the sound is done playing
}

public ambience_sound_stop() {
	ExecuteForward(g_forwards[STOP_SOUND], g_fwDummyResult); // Sound Stop pre
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED)
		return;

	remove_task(TASK_AMBIENCESOUNDS)
	client_cmd(0, "mp3 stop; stopsound"); // Ambience Sounds Stop Task
}

public flashlight_charge(taskid) { // Flashlight Charge Task
	// Drain or charge?
	if(g_flashlight[ID_CHARGE]) g_flashbattery[ID_CHARGE] -= get_pcvar_num(cvar_flashdrain)
	else g_flashbattery[ID_CHARGE] += get_pcvar_num(cvar_flashcharge)

	if(g_flashbattery[ID_CHARGE] >= 100) { // Battery fully charged

		g_flashbattery[ID_CHARGE] = 100 // Don't exceed 100%

		// Update flashlight battery on HUD
		message_begin(MSG_ONE, g_msgFlashBat, _, ID_CHARGE)
		write_byte(100) // battery
		message_end()

		remove_task(taskid); // Task not needed anymore
		return;
	}

	if(g_flashbattery[ID_CHARGE] <= 0) { // Battery depleted

		g_flashlight[ID_CHARGE] = false // Turn it off
		g_flashbattery[ID_CHARGE] = 0

		emit_sound(ID_CHARGE, CHAN_ITEM, cs_sounds[0], 1.0, ATTN_NORM, 0, PITCH_NORM) // Play flashlight toggle sound

		// Update flashlight status on HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, ID_CHARGE)
		write_byte(0) // toggle
		write_byte(0) // battery
		message_end()

		remove_task(ID_CHARGE+TASK_FLASH) // Remove flashlight task for this player
	}
	else { // Update flashlight battery on HUD
		message_begin(MSG_ONE_UNRELIABLE, g_msgFlashBat, _, ID_CHARGE)
		write_byte(g_flashbattery[ID_CHARGE]) // battery
		message_end()
	}
}
public remove_spawn_protection(taskid) { // Remove Spawn Protection Task
	if(!g_isalive[ID_SPAWN]) return; // Not alive

	// Remove spawn protection
	g_nodamage[ID_SPAWN] = false
	set_pev(ID_SPAWN, pev_takedamage, DAMAGE_AIM)
	set_pev(ID_SPAWN, pev_effects, pev(ID_SPAWN, pev_effects) & ~EF_NODRAW)
}
public task_hide_money(taskid) { // Hide Player's Money Task
	if(!g_isalive[ID_SPAWN]) return; // Not alive

	// Hide money
	message_begin(MSG_ONE, g_msgHideWeapon, _, ID_SPAWN)
	write_byte(HIDE_MONEY) // what to hide bitsum
	message_end()

	// Hide the HL crosshair that's drawn
	message_begin(MSG_ONE, g_msgCrosshair, _, ID_SPAWN)
	write_byte(0) // toggle
	message_end()
}
turn_off_flashlight(id) { // Turn Off Flashlight and Restore Batteries
	fm_cs_set_user_batteries(id, 100) // Restore batteries for the next use

	// Check if flashlight is on
	if(pev(id, pev_effects) & EF_DIMLIGHT) set_pev(id, pev_impulse, IMPULSE_FLASHLIGHT) // Turn it off
	else set_pev(id, pev_impulse, 0) // Clear any stored flashlight impulse (bugfix)

	if(g_cached_customflash) { // Turn off custom flashlight
		g_flashlight[id] = false // Turn it off
		g_flashbattery[id] = 100

		// Update flashlight HUD
		message_begin(MSG_ONE, g_msgFlashlight, _, id)
		write_byte(0) // toggle
		write_byte(100) // battery
		message_end()

		// Remove previous tasks
		remove_task(id+TASK_CHARGE)
		remove_task(id+TASK_FLASH)
	}
}
public event_show_status(id) { // Some one aimed at someone
	if(!g_isbot[id] && g_isconnected[id] && get_pcvar_num(cvar_aiminfo)) { // Not a bot and is still connected

		static aimid, class[64], special_name[64], sp_id;
		aimid = read_data(2) // Retrieve the aimed player's id
		if(g_zombie[id] == g_zombie[aimid] || get_pcvar_num(cvar_aiminfo) == 2) {
			if(isCustomSpecialZombie(aimid)) {
				sp_id = g_zm_special[aimid]-MAX_SPECIALS_ZOMBIES
				if(ArrayGetCell(g_zm_sp_name_by_lang, sp_id)) {
					ArrayGetString(g_zm_sp_lang_key, sp_id, special_name, charsmax(special_name))
					formatex(special_name, charsmax(special_name), "%L", id, special_name)
				}
				else ArrayGetString(g_zm_sp_name, sp_id, special_name, charsmax(special_name))

				formatex(class, charsmax(class), "%L %s", id, "CLASS_CLASS", special_name)
			}
			else if(isCustomSpecialHuman(aimid)) {
				sp_id = g_hm_special[aimid]-MAX_SPECIALS_HUMANS

				if(ArrayGetCell(g_hm_sp_name_by_lang, sp_id)) {
					ArrayGetString(g_hm_sp_lang_key, sp_id, special_name, charsmax(special_name))
					formatex(special_name, charsmax(special_name), "%L", id, special_name)
				}
				else ArrayGetString(g_hm_sp_name, sp_id, special_name, charsmax(special_name))

				formatex(class, charsmax(class), "%L %s", id, "CLASS_CLASS", special_name)
			}
			else formatex(class, charsmax(class), "%L %L", id, "CLASS_CLASS", aimid, g_zombie[aimid] ? zm_special_class_langs[g_zm_special[aimid]] : hm_special_class_langs[g_hm_special[aimid]])

			// Show the notice
			set_hudmessage(g_zombie[aimid] ? 255 : 0, 50, g_zombie[aimid] ? 0 : 255, -1.0, 0.60, 1, 0.01, 3.0, 0.01, 0.01, -1)
			ShowSyncHudMsg(id, g_MsgSync[2], "%L", id, "AIM_INFO", g_playername[aimid], class, fm_get_user_health(aimid), pev(aimid, pev_armorvalue), g_ammopacks[aimid])
		}
		else {
			set_hudmessage(g_zombie[aimid] ? 255 : 0, 50, g_zombie[aimid] ? 0 : 255, -1.0, 0.60, 1, 0.01, 3.0, 0.01, 0.01, -1)
			ShowSyncHudMsg(id, g_MsgSync[2], "%s", g_playername[aimid])
		}
	}
}
public event_hide_status(id) ClearSyncHud(id, g_MsgSync[2]); // Remove the aim-info message

grenade_explode(ent, type) { // Grenade Explosion
	if(g_endround && type == NADE_TYPE_INFECTION) return; // Round ended (bugfix)

	static Float:originF[3], attacker, sound[64], victim
	pev(ent, pev_origin, originF) // Get origin

	switch(type) {
		case NADE_TYPE_INFECTION: {
			create_blast(originF, INFECTION_BOMB) // Make the explosion
			ArrayGetString(ar_sound[10], random_num(0, ArraySize(ar_sound[10]) - 1), sound, charsmax(sound))
		}
		case NADE_TYPE_FROST: {
			create_blast(originF, FROST) // Make the explosion
			ArrayGetString(ar_sound[14], random_num(0, ArraySize(ar_sound[14]) - 1), sound, charsmax(sound))
		}
		case NADE_TYPE_NAPALM: {
			create_blast(originF, FIRE) // Make the explosion
			ArrayGetString(ar_sound[12], random_num(0, ArraySize(ar_sound[12]) - 1), sound, charsmax(sound))
		}
	}

	emit_sound(ent, CHAN_WEAPON, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)  // Infection nade explode sound

	attacker = pev(ent, pev_owner) // Get attacker
	victim = -1

	if(!is_user_valid_connected(attacker)) { // Infection bomb owner disconnected? (bugfix)
		engfunc(EngFunc_RemoveEntity, ent) // Get rid of the grenade
		return;
	}

	while((victim = engfunc(EngFunc_FindEntityInSphere, victim, originF, NADE_EXPLOSION_RADIUS)) != 0) { // Collisions
		if(!is_user_valid_alive(victim) || g_nodamage[victim]) continue; // Only effect alive players

		if(type == NADE_TYPE_INFECTION) {
			if(g_zombie[victim]) continue; // Only effect alive humans

			g_FW_intParam[0] = -1
			g_FW_intParam[1] = -1
			ExecuteForward(g_forwards[INFECTED_BY_BOMB_PRE], g_fwDummyResult, victim, attacker);

			if(g_FW_intParam[0] != -1) victim = g_FW_intParam[0];
			if(g_FW_intParam[1] != -1) attacker = g_FW_intParam[1];

			if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE) continue;

			if(fnGetHumans() == 1 || g_zm_special[attacker] == BOMBARDIER || !g_allowinfection) { // Last human is killed / Bombardier bomb can kill only
				ExecuteHamB(Ham_Killed, victim, attacker, 0)
				continue;
			}

			ArrayGetString(ar_sound[11], random_num(0, ArraySize(ar_sound[11]) - 1), sound, charsmax(sound))
			emit_sound(victim, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM) // Infected victim's sound

			zombieme(victim, attacker, 0, 1, 1) // Turn into zombie
			ExecuteForward(g_forwards[INFECTED_BY_BOMB_POST], g_fwDummyResult, victim, attacker);
		}
		else {
			if(!g_zombie[victim] || g_frozen[victim] && type == NADE_TYPE_FROST)  continue; // Only effect zombies

			if(type == NADE_TYPE_FROST) set_user_frozen(victim, 1, get_pcvar_float(cvar_freezeduration))
			else set_user_burn(victim, 1, get_pcvar_float(cvar_fireduration))
		}
	}
	engfunc(EngFunc_RemoveEntity, ent) // Get rid of the grenade
}
public remove_freeze(id) { // Remove freeze task
	if(!g_isalive[id] || !g_frozen[id]) return; // Not alive or not frozen anymore

	g_frozen[id] = false; // Unfreeze

	// Restore gravity and maxspeed (bugfix)
	set_pev(id, pev_gravity, g_frozen_gravity[id])
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id)

	reset_user_rendering(id) // Reset Glow

	// Gradually remove screen's blue tint
	message_begin(MSG_ONE, g_msgScreenFade, _, id)
	write_short(UNIT_SECOND) // duration
	write_short(0) // hold time
	write_short(FFADE_IN) // fade type
	write_byte(0) // red
	write_byte(50) // green
	write_byte(200) // blue
	write_byte(100) // alpha
	message_end()

	static sound[64] // Broken glass sound
	ArrayGetString(ar_sound[16], random_num(0, ArraySize(ar_sound[16]) - 1), sound, charsmax(sound))
	emit_sound(id, CHAN_BODY, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)

	static origin2[3]; get_user_origin(id, origin2) // Get player's origin

	// Glass shatter
	message_begin(MSG_PVS, SVC_TEMPENTITY, origin2)
	write_byte(TE_BREAKMODEL) // TE id
	write_coord(origin2[0]) // x
	write_coord(origin2[1]) // y
	write_coord(origin2[2]+24) // z
	write_coord(16) // size x
	write_coord(16) // size y
	write_coord(16) // size z
	write_coord(random_num(-50, 50)) // velocity x
	write_coord(random_num(-50, 50)) // velocity y
	write_coord(25) // velocity z
	write_byte(10) // random velocity
	write_short(g_glassSpr) // model
	write_byte(10) // count
	write_byte(25) // life
	write_byte(BREAK_GLASS) // flags
	message_end()

	ExecuteForward(g_forwards[USER_UNFROZEN], g_fwDummyResult, id);
}
public remove_stuff() { // Remove Stuff Task
	static ent; ent = -1;
	if(get_pcvar_num(cvar_removedoors) > 0) { // Remove rotating doors
		while((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "func_door_rotating")) != 0)
			engfunc(EngFunc_SetOrigin, ent, Float:{8192.0 ,8192.0 ,8192.0})
	}
	if(get_pcvar_num(cvar_removedoors) > 1) { // Remove all doors
		while((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "func_door")) != 0)
			engfunc(EngFunc_SetOrigin, ent, Float:{8192.0 ,8192.0 ,8192.0})
	}
	if(!get_pcvar_num(cvar_triggered)) { // Triggered lights
		while((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", "light")) != 0) {
			dllfunc(DLLFunc_Use, ent, 0); // turn off the light
			set_pev(ent, pev_targetname, 0) // prevent it from being triggered
		}
	}
}
replace_weapon_models(id, weaponid) { // Set Custom Weapon Models
	static userFlags
	userFlags = get_user_flags(id)
	switch (weaponid) {
		case CSW_KNIFE: { // Custom knife models
			if(g_zombie[id]) { // Zombies
				static szKnifeModel[64]
				if(isCustomSpecialZombie(id)) {
					ArrayGetString(g_zm_sp_knifemodel, g_zm_special[id]-MAX_SPECIALS_ZOMBIES, szKnifeModel, charsmax(szKnifeModel))
					set_pev(id, pev_viewmodel2, szKnifeModel)
				}
				else if(isDefaultSpecialZombie(id)) {
					if(zm_special_enable[g_zm_special[id]]) set_pev(id, pev_viewmodel2, model_vknife_zm_special[g_zm_special[id]])
				}
				else {
					// Admin knife models?
					if(get_pcvar_num(cvar_adminknifemodelszombie) && userFlags & g_access_flag[ACCESS_ADMIN_MODELS])
						set_pev(id, pev_viewmodel2, model_vknife_admin_zombie)
					else if(get_pcvar_num(cvar_vipknifemodelszombie) && userFlags & g_access_flag[ACCESS_VIP_MODELS])
						set_pev(id, pev_viewmodel2, model_vknife_vip_zombie)
					else {
						static clawmodel[100]
						ArrayGetString(g_zclass_clawmodel, g_zombieclass[id], clawmodel, charsmax(clawmodel))
						set_pev(id, pev_viewmodel2, fmt("models/zombie_plague/%s", clawmodel))
					}
				}
				set_pev(id, pev_weaponmodel2, "")
			}
			else { // Humans
				if(g_hm_special[id] == BERSERKER && hm_special_enable[BERSERKER]) {
					set_pev(id, pev_viewmodel2, model_v_weapon_human[BERSERKER])
					set_pev(id, pev_weaponmodel2, model_p_weapon_human[BERSERKER])
				}
				else if(get_pcvar_num(cvar_adminknifemodelshuman) && userFlags & g_access_flag[ACCESS_ADMIN_MODELS]) {
					set_pev(id, pev_viewmodel2, model_knife_admin_human[VIEW_MODEL])
					set_pev(id, pev_weaponmodel2, model_knife_admin_human[PLAYER_MODEL])
				}
				else if(get_pcvar_num(cvar_vipknifemodelshuman) && userFlags & g_access_flag[ACCESS_VIP_MODELS]) {
					set_pev(id, pev_viewmodel2, model_knife_vip_human[VIEW_MODEL])
					set_pev(id, pev_weaponmodel2, model_knife_vip_human[PLAYER_MODEL])
				}
				else {
					set_pev(id, pev_viewmodel2, model_v_weapon_human[0])
					set_pev(id, pev_weaponmodel2, model_p_weapon_human[0])
				}
			}
		}
		case CSW_AWP: { // Sniper's AWP
			if(g_hm_special[id] == SNIPER && hm_special_enable[SNIPER]) {
				set_pev(id, pev_viewmodel2, model_v_weapon_human[SNIPER])
				set_pev(id, pev_weaponmodel2, model_p_weapon_human[SNIPER])
			}
		}
		case CSW_DEAGLE: { // Wesker's Deagle
			if(g_hm_special[id] == WESKER && hm_special_enable[WESKER]) {
				set_pev(id, pev_viewmodel2, model_v_weapon_human[WESKER])
				set_pev(id, pev_weaponmodel2, model_p_weapon_human[WESKER])
			}
		}
		case CSW_M3: { // Spy's M3
			if(g_hm_special[id] == SPY && hm_special_enable[SPY]) {
				set_pev(id, pev_viewmodel2, model_v_weapon_human[SPY])
				set_pev(id, pev_weaponmodel2, model_p_weapon_human[SPY])
			}

		}
		case CSW_HEGRENADE: { // Infection bomb or fire grenade
			if(g_zombie[id]) {
				set_pev(id, pev_viewmodel2, g_zm_special[id] == BOMBARDIER ? model_grenade_bombardier[VIEW_MODEL] : model_grenade_infect[VIEW_MODEL])
				set_pev(id, pev_weaponmodel2, g_zm_special[id] == BOMBARDIER ? model_grenade_bombardier[PLAYER_MODEL] : model_grenade_infect[PLAYER_MODEL])
			}
			else {
				set_pev(id, pev_viewmodel2, model_grenade_fire[VIEW_MODEL])
				set_pev(id, pev_weaponmodel2, model_grenade_fire[PLAYER_MODEL])
			}
		}
		case CSW_FLASHBANG: { // Frost grenade
			set_pev(id, pev_viewmodel2, model_grenade_frost[VIEW_MODEL])
			set_pev(id, pev_weaponmodel2, model_grenade_frost[PLAYER_MODEL])
		}
		case CSW_SMOKEGRENADE: { // Flare grenade
			set_pev(id, pev_viewmodel2, model_grenade_flare[VIEW_MODEL])
			set_pev(id, pev_weaponmodel2, model_grenade_flare[PLAYER_MODEL])
		}
	}
	static survweaponname[32] // Survivor's custom weapon model
	get_pcvar_string(cvar_survweapon, survweaponname, charsmax(survweaponname))
	if(g_hm_special[id] == SURVIVOR && weaponid == cs_weapon_name_to_id(survweaponname)) {
		set_pev(id, pev_viewmodel2, model_v_weapon_human[SURVIVOR])
		set_pev(id, pev_weaponmodel2, model_p_weapon_human[SURVIVOR])
	}
}
reset_vars(id, resetall) { // Reset Player Vars
	g_zombie[id] = false
	g_zm_special[id] = 0
	g_hm_special[id] = 0
	g_firstzombie[id] = false
	g_lastzombie[id] = false
	g_lasthuman[id] = false
	g_frozen[id] = false
	g_nodamage[id] = false
	set_pev(id, pev_takedamage, DAMAGE_AIM)
	g_respawn_as_zombie[id] = false
	g_nvision[id] = false
	g_nvisionenabled[id] = false
	g_flashlight[id] = false
	g_flashbattery[id] = 100
	g_canbuy[id] = 2
	g_user_custom_speed[id] = false
	g_madness_used[id] = false
	g_burning[id] = false

	if(resetall) {
		g_ammopacks[id] = get_pcvar_num(cvar_startammopacks)
		g_zombieclass[id] = NULL_CLASS
		g_zombieclassnext[id] = NULL_CLASS
		g_user_hclass[id] = NULL_CLASS
		g_hclass_next[id] = NULL_CLASS
		g_choosed_zclass[id] = false
		g_choosed_hclass[id] = false
		g_damagedealt[id] = 0
		WPN_AUTO_ON = 0
		WPN_STARTID = 0
		PL_ACTION = 0
		MENU_PAGE_ZCLASS = 0
		MENU_PAGE_EXTRAS = 0
		MENU_PAGE_PLAYERS = 0
		MENU_PAGE_GAMEMODES = 0
		MENU_PAGE_SPECIAL_CLASS = 0
		MENU_PAGE_CUSTOM_SP_Z = 0
		MENU_PAGE_CUSTOM_SP_H = 0
		g_hud_color[0][id] = 0
		g_hud_color[1][id] = 0
		g_nv_color[0][id] = 0
		g_nv_color[1][id] = 0
		g_flashlight_color[id] = 0
		g_hud_type[id] = get_pcvar_num(cvar_hud_mode);
		if(g_hud_type[id] < 0 || g_hud_type[id] > 5)
			g_hud_type[id] = 0
	}
}
public spec_nvision(id) { // Set spectators nightvision
	if(!g_isconnected[id] || g_isalive[id] || g_isbot[id]) return; // Not connected, alive, or bot

	// Give Night Vision?
	if(!get_pcvar_num(cvar_spec_nvggive))
		return;

	g_nvision[id] = true

	if(get_pcvar_num(cvar_spec_nvggive) == 1) { // Turn on Night Vision automatically?
		g_nvisionenabled[id] = true
		user_nightvision(id, 1)
	}
}

public ShowHUD(taskid) { // Show HUD Task
	if(!get_pcvar_num(cvar_huddisplay)) return;

	static id; id = ID_SHOWHUD;

	if(!is_user_valid_alive(id)) { // Player died?
		id = pev(id, PEV_SPEC_TARGET) // Get spectating target
		if(!is_user_valid_alive(id)) return; // Target not alive
	}

	g_AdditionalHudText[0] = 0
	ExecuteForward(g_forwards[PLAYER_SHOW_HUD], g_fwDummyResult, ID_SHOWHUD, (ID_SHOWHUD == id) ? 0 : id, g_hud_type[ID_SHOWHUD]); // Player Show Hud
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED)
		return;

	static class[32], rgb[3], sp_id // Format classname

	switch(g_hud_color[g_zombie[id] ? 1 : 0][id]) { // Hud Color
		case 1: rgb = { 255, 255, 255 }
		case 2: rgb = { 255, 0, 0 }
		case 3: rgb = { 0, 255, 0 }
		case 4: rgb = { 0, 0, 255 }
		case 5: rgb = { 0, 255, 255 }
		case 6: rgb = { 255, 0, 255 }
		case 7: rgb = { 255, 255, 0 }
		default: {
			static i;
			for(i = 0; i < 3; i++)
				rgb[i] = get_pcvar_num(g_zombie[id] ? cvar_hud_zm_rgb[i] : cvar_hud_hm_rgb[i]);
		}
	}

	if(g_zombie[id]) { // Zombies
		if(isCustomSpecialZombie(id)) {
			sp_id = g_zm_special[id]-MAX_SPECIALS_ZOMBIES
			if(ArrayGetCell(g_zm_sp_name_by_lang, sp_id)) {
				ArrayGetString(g_zm_sp_lang_key, sp_id, class, charsmax(class))
				formatex(class, charsmax(class), "%L", ID_SHOWHUD, class)
			}
			else ArrayGetString(g_zm_sp_name, sp_id, class, charsmax(class))
		}
		else if(isDefaultSpecialZombie(id))
			formatex(class, charsmax(class), "%L", ID_SHOWHUD, zm_special_class_langs[g_zm_special[id]])
		else {
			if(g_pl_classname_lang[id])
				formatex(class, charsmax(class), "%L", ID_SHOWHUD, g_pl_classname[id])
			else
				copy(class, charsmax(class), g_pl_classname[id])
		}
	}
	else { // Humans
		if(isCustomSpecialHuman(id)) {
			sp_id = g_hm_special[id]-MAX_SPECIALS_HUMANS
			if(ArrayGetCell(g_hm_sp_name_by_lang, sp_id)) {
				ArrayGetString(g_hm_sp_lang_key, sp_id, class, charsmax(class))
				formatex(class, charsmax(class), "%L", ID_SHOWHUD, class)
			}
			else ArrayGetString(g_hm_sp_name, sp_id, class, charsmax(class))
		}
		else if(isDefaultSpecialHuman(id) || !g_hclass_i)
			formatex(class, charsmax(class), "%L", ID_SHOWHUD, hm_special_class_langs[g_hm_special[id]])
		else {
			if(g_pl_classname_lang[id])
				formatex(class, charsmax(class), "%L", ID_SHOWHUD, g_pl_classname[id])
			else
				copy(class, charsmax(class), g_pl_classname[id])
		}
	}

	if(id != ID_SHOWHUD) { // Spectating someone else?
		// Show name, health, class, and ammo packs and armor
		set_hudmessage(rgb[0], rgb[1], rgb[2], HUD_SPECT_X, HUD_SPECT_Y, 1, 6.0, 1.1, 0.0, 0.0, -1)
		ShowSyncHudMsg(ID_SHOWHUD, g_MsgSync[1], "%L %s^nHP: %s - %L %s - %L %s - %L %s%s", ID_SHOWHUD, "SPECTATING", g_playername[id],
		add_point(fm_get_user_health(id)), ID_SHOWHUD, "CLASS_CLASS", class, ID_SHOWHUD, "AMMO_PACKS1", add_point(g_ammopacks[id]), ID_SHOWHUD, "ARMOR", add_point(pev(id, pev_armorvalue)), g_AdditionalHudText)
		return;
	}

	static g_ModeName[64], gm_id
	if(isCustomMode() && !g_endround) {
		gm_id = (g_currentmode - MAX_GAME_MODES)

		if(ArrayGetCell(g_gm_name_by_lang, gm_id)) {
			ArrayGetString(g_gm_lang_key, gm_id, g_ModeName, charsmax(g_ModeName)) // Retrieve the game mode's name
			formatex(g_ModeName, charsmax(g_ModeName), "%L", ID_SHOWHUD, g_ModeName)
		}
		else ArrayGetString(g_gm_name, gm_id, g_ModeName, charsmax(g_ModeName)) // Retrieve the game mode's name
	}
	else formatex(g_ModeName, charsmax(g_ModeName), "%L", ID_SHOWHUD, g_endround ? "ROUND_ENDED" : mode_langs[g_currentmode])

	static szHealth[64], szArmor[64], szAmmoPack[64], userDeaths, userFrags, userSpd;
	szHealth = add_point(fm_get_user_health(id));
	szArmor = add_point(get_user_armor(id));
	szAmmoPack = add_point(g_ammopacks[id]);
	userDeaths = get_user_deaths(id);
	userFrags = get_user_frags(id);
	userSpd = fm_get_speed(id);

	switch(g_hud_type[id]) {
		case 0: { // Default
			set_hudmessage(rgb[0], rgb[1], rgb[2], 0.78, 0.18, 0, 6.0, 1.1, 0.0, 0.0, -1)
			ShowSyncHudMsg(id, g_MsgSync[1], "[%L: %s]^n[%L %s]^n[%L %s]^n[%L: %s]^n[%L: %d]^n[%L: %i]^n[%L: %d]^n[%L: %s]%s", id, "ZOMBIE_ATTRIB1", szHealth, id, "CLASS_CLASS",
			class, id, "AMMO_PACKS1", szAmmoPack, id, "ZOMBIE_ATTRIB5", szArmor, id, "ZOMBIE_ATTRIB8", userDeaths, id, "ZOMBIE_ATTRIB7", userFrags, id, "ZOMBIE_ATTRIB2", userSpd, id, "ZOMBIE_ATTRIB6", g_ModeName, g_AdditionalHudText);
		}
		case 1: { // Classic
			set_hudmessage(rgb[0], rgb[1], rgb[2], 0.02, 0.9, 0, 6.0, 1.1, 0.0, 0.0, -1)
			ShowSyncHudMsg(id, g_MsgSync[1], "HP: %s - %L %s - %L %s%s", szHealth, id, "CLASS_CLASS", class, id, "AMMO_PACKS1", szAmmoPack, g_AdditionalHudText)
		}
		case 2: { // Center
			set_hudmessage(rgb[0], rgb[1], rgb[2], -1.0, 0.60, 0, 6.0, 1.1, 0.0, 0.0, -1)
			ShowSyncHudMsg(id, g_MsgSync[1], "[%L: %s]^n[%L %s]^n[%L %s]^n[%L: %s]^n[%L: %d]^n[%L: %i]^n[%L: %d]^n[%L: %s]%s", id, "ZOMBIE_ATTRIB1", szHealth, id, "CLASS_CLASS",
			class, id, "AMMO_PACKS1", szAmmoPack, id, "ZOMBIE_ATTRIB5", szArmor, id, "ZOMBIE_ATTRIB8", userDeaths, id, "ZOMBIE_ATTRIB7", userFrags, id, "ZOMBIE_ATTRIB2", userSpd, id, "ZOMBIE_ATTRIB6", g_ModeName, g_AdditionalHudText);
		}
		case 3: { // Antrax Style
			set_hudmessage(rgb[0], rgb[1], rgb[2], 0.57, 0.75, 1, 6.0, 1.1, 0.0, 0.0, -1)
			ShowSyncHudMsg(id, g_MsgSync[1], "[%s]^n[%L] [%s] - [%L] [%s]^n[%L] [%s] - [%L] [%s]^n[%L] [%s]%s", g_playername[id], id, "ZOMBIE_ATTRIB1", szHealth, id, "ZOMBIE_ATTRIB5", szArmor, id, "CLASS_CLASS", class, id, "AMMO_PACKS1",
			szAmmoPack, id, "CURRENT_MODE", g_ModeName, g_AdditionalHudText)
		}
		case 4: { // Under Radar
			set_hudmessage(rgb[0], rgb[1], rgb[2], 0.01, 0.22, 0, 6.0, 1.1, 0.0, 0.0, -1)
			ShowSyncHudMsg(id, g_MsgSync[1], "[%L: %s]^n[%L %s]^n[%L %s]^n[%L: %s]^n[%L: %d]^n[%L: %i]^n[%L: %d]^n[%L: %s]%s", id, "ZOMBIE_ATTRIB1", szHealth, id, "CLASS_CLASS",
			class, id, "AMMO_PACKS1", szAmmoPack, id, "ZOMBIE_ATTRIB5", szArmor, id, "ZOMBIE_ATTRIB8", userDeaths, id, "ZOMBIE_ATTRIB7", userFrags, id, "ZOMBIE_ATTRIB2", userSpd, id, "ZOMBIE_ATTRIB6", g_ModeName, g_AdditionalHudText);
		}
		case 5: { // Center Antrax
			set_hudmessage(rgb[0], rgb[1], rgb[2], -1.0, 0.75, 1, 6.0, 1.1, 0.0, 0.0, -1)
			ShowSyncHudMsg(id, g_MsgSync[1], "[%s]^n[%L] [%s] - [%L] [%s]^n[%L] [%s] - [%L] [%s]^n[%L] [%s]%s", g_playername[id], id, "ZOMBIE_ATTRIB1", szHealth, id, "ZOMBIE_ATTRIB5", szArmor, id, "CLASS_CLASS", class, id, "AMMO_PACKS1",
			szAmmoPack, id, "CURRENT_MODE", g_ModeName, g_AdditionalHudText)
		}
	}
}
public zombie_play_idle(taskid) { // Play idle zombie sounds
	if(g_endround || g_newround || !get_pcvar_num(cvar_zm_idle_sound)) return; // Round ended/new one starting

	static sound[64]
	ArrayGetString(g_lastzombie[ID_BLOOD] ? ar_sound[8] : ar_sound[7], random_num(0, ArraySize(g_lastzombie[ID_BLOOD] ? ar_sound[8] : ar_sound[7]) - 1), sound, charsmax(sound))
	emit_sound(ID_BLOOD, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
}

public madness_over(taskid) {
	g_nodamage[ID_BLOOD] = false
	set_pev(ID_BLOOD, pev_takedamage, DAMAGE_AIM)

	if(get_pcvar_float(cvar_madness_use_countdown) > 0.0)
		set_task(get_pcvar_float(cvar_madness_use_countdown), "delay_madness", ID_BLOOD+TASK_MADNESS)
	else
		g_madness_used[ID_BLOOD] = false

	static sound[64]
	ArrayGetString(ar_sound[9], random_num(0, ArraySize(ar_sound[9]) - 1), sound, charsmax(sound))
	emit_sound(ID_BLOOD, CHAN_VOICE, sound, 0.0, ATTN_NORM, 0, PITCH_NORM)
	remove_task(ID_BLOOD+TASK_BLOOD)
}
public delay_madness(id) {
	id -= TASK_MADNESS
	g_madness_used[id] = false
}
do_random_spawn(id, regularspawns = 0) { // Place user at a random spawn
	static hull, sp_index, i

	hull = (pev(id, pev_flags) & FL_DUCKING) ? HULL_HEAD : HULL_HUMAN // Get whether the player is crouching

	if(!regularspawns) { // Use regular spawns?

		if(!g_spawnCount) return; // No spawns?

		sp_index = random_num(0, g_spawnCount - 1) // Choose random spawn to start looping at

		for(i = sp_index + 1; /*no condition*/; i++) { // Try to find a clear spawn
			if(i >= g_spawnCount) i = 0 // Start over when we reach the end

			if(is_hull_vacant(g_spawns[i], hull)) { // Free spawn space?
				engfunc(EngFunc_SetOrigin, id, g_spawns[i]) // Engfunc_SetOrigin is used so ent's mins and maxs get updated instantly
				break;
			}
			if(i == sp_index) break; // Loop completed, no free space found
		}
		ExecuteForward(g_forwards[UNSTUCK_POST], g_fwDummyResult, id);
	}
	else {
		if(!g_spawnCount2) return; // No spawns?

		sp_index = random_num(0, g_spawnCount2 - 1) // Choose random spawn to start looping at

		for(i = sp_index + 1; /*no condition*/; i++) { // Try to find a clear spawn
			if(i >= g_spawnCount2) i = 0 // Start over when we reach the end

			if(is_hull_vacant(g_spawns2[i], hull)) { // Free spawn space?
				engfunc(EngFunc_SetOrigin, id, g_spawns2[i]) // Engfunc_SetOrigin is used so ent's mins and maxs get updated instantly
				break;
			}
			if(i == sp_index) break; // Loop completed, no free space found
		}
		ExecuteForward(g_forwards[UNSTUCK_POST], g_fwDummyResult, id);
	}
}
fnGetZombies() { // Get Zombies -returns alive zombies number-
	static iZombies, id; iZombies = 0
	for(id = 1; id <= MaxClients; id++) if(g_isalive[id] && g_zombie[id]) iZombies++

	return iZombies;
}
fnGetHumans() { // Get Humans -returns alive humans number-
	static iHumans, id; iHumans = 0
	for(id = 1; id <= MaxClients; id++) if(g_isalive[id] && !g_zombie[id]) iHumans++

	return iHumans;
}
fnGetSpecials(zombie, specialid) { // Get Specials -returns alive Specials number-
	static count, id; count = 0
	for(id = 1; id <= MaxClients; id++) if(g_isalive[id] && (zombie && g_zm_special[id] == specialid || !zombie && g_hm_special[id] == specialid)) count++

	return count;
}
stock fnGetAlive(const team = 0) { // Get Alive -returns alive players number-
	static iAlive, id; iAlive = 0

	for(id = 1; id <= MaxClients; id++) {
		if(!g_isalive[id]) continue;

		if(team == 1 && g_zombie[id] || team >= 2 && !g_zombie[id]) continue

		iAlive++
	}
	return iAlive;
}
stock fnGetRandomAlive(n) { // Get Random Alive -returns index of alive player number n -
	static iAlive, id; iAlive = 0
	for(id = 1; id <= MaxClients; id++) {
		if(!g_isalive[id]) continue;

		iAlive++

		if(iAlive == n) return id;
	}
	return -1;
}
stock fnGetRandomAliveByTeam(const team = 0) {
	static iRandom, id
	id = 0
	iRandom = 0

	if(!fnGetAlive() || !fnGetZombies() && team == 2 || !fnGetHumans() && team == 1) return -1

	while(iRandom == 0) {
		if((++id) > MaxClients) id = 1 // Keep looping through all players

		if(!g_isalive[id]) continue; // Dead

		if(team == 1 && g_zombie[id] || team >= 2 && !g_zombie[id]) continue; // Check Team

		if(random_num(1, 5) == 1) { // Random chance
			iRandom = id;
			break;
		}
	}

	if(iRandom) return iRandom;

	return -1;
}
fnGetPlaying() { // Get Playing -returns number of users playing-
	static iPlaying, id, team; iPlaying = 0
	for(id = 1; id <= MaxClients; id++) {
		if(g_isconnected[id]) {
			team = fm_cs_get_user_team(id)
			if(team != FM_CS_TEAM_SPECTATOR && team != FM_CS_TEAM_UNASSIGNED) iPlaying++
		}
	}
	return iPlaying;
}
fnGetPlayersInTeam(team) { // Get X Team -returns number of X Team connected-
	static count, id; count = 0
	for(id = 1; id <= MaxClients; id++) if(g_isconnected[id]) if(fm_cs_get_user_team(id) == team) count++

	return count;
}

fnCheckLastZombie() { // Last Zombie Check -check for last zombie and set its flag-
	static id, NumZombie, NumHuman
	NumZombie = fnGetZombies();
	NumHuman = fnGetHumans();
	for(id = 1; id <= MaxClients; id++) {
		if(!g_isalive[id])
			continue;

		if(isDefaultZombie(id) && NumZombie == 1) { // Last zombie
			if(!g_lastzombie[id]) ExecuteForward(g_forwards[USER_LAST_ZOMBIE], g_fwDummyResult, id); // Last zombie forward
			g_lastzombie[id] = true
		}
		else g_lastzombie[id] = false

		if(isDefaultHuman(id) && NumHuman == 1) { // Last human
			if(!g_lasthuman[id]) {
				ExecuteForward(g_forwards[USER_LAST_HUMAN], g_fwDummyResult, id); // Last human forward
				fm_set_user_health(id, fm_get_user_health(id) + get_pcvar_num(cvar_hm_basehp[0])) // Reward extra hp
			}
			g_lasthuman[id] = true
		}
		else g_lasthuman[id] = false
	}
}
save_stats(id) { // Save player's stats to database
	if(db_name[id][0] && !equal(g_playername[id], db_name[id])) { // Check whether there is another record already in that slot
		if(db_slot_i >= sizeof db_name) db_slot_i = MaxClients+1 // If DB size is exceeded, write over old records

		// Move previous record onto an additional save slot
		copy(db_name[db_slot_i], charsmax(db_name[]), db_name[id])
		db_ammopacks[db_slot_i] = db_ammopacks[id]
		db_zombieclass[db_slot_i] = db_zombieclass[id]
		db_humanclass[db_slot_i] = db_humanclass[id]
		db_slot_i++
	}

	// Now save the current player stats
	copy(db_name[id], charsmax(db_name[]), g_playername[id]) // name
	db_ammopacks[id] = g_ammopacks[id] // ammo packs
	db_zombieclass[id] = g_zombieclassnext[id] // zombie class
	db_humanclass[id] =	g_hclass_next[id]

	// Save Player Configuration -- (Not Works)
	//client_cmd(id, "setinfo ^"zpspdata^" ^"%d-%d-%d-%d-%d-%d^"", g_hud_type[id], g_hud_color[0][id], g_hud_color[1][id], g_flashlight_color[id], g_nv_color[0][id], g_nv_color[1][id])
}

load_stats(id) { // Load player's stats from database (if a record is found)
	static i // Look for a matching record
	for(i = 0; i < sizeof db_name; i++) {
		if(equal(g_playername[id], db_name[i])) { // Bingo!
			g_ammopacks[id] = db_ammopacks[i]
			g_zombieclass[id] = db_zombieclass[i]
			g_zombieclassnext[id] = db_zombieclass[i]
			g_hclass_next[id] = db_humanclass[i]
			return;
		}
	}

	// Load configuration -- (Not Works)
	/*static data[64], value[6][32]
	get_user_info(id, "zpspdata", data, charsmax(data))
	replace_string(data, charsmax(data), "-", " ");

	parse(data, value[0], charsmax(value[]), value[1], charsmax(value[]), value[2], charsmax(value[]), value[3], charsmax(value[]), value[4], charsmax(value[]),
	value[5], charsmax(value[]));

	if(value[0][0]) g_hud_type[id] = str_to_num(value[0])
	if(value[1][0]) g_hud_color[0][id] = str_to_num(value[1])
	if(value[2][0]) g_hud_color[1][id] = str_to_num(value[2])
	if(value[3][0]) g_flashlight_color[id] = str_to_num(value[3])
	if(value[4][0]) g_nv_color[0][id] = str_to_num(value[4])
	if(value[5][0]) g_nv_color[1][id] = str_to_num(value[5])*/
}
allowed_zombie(id) { // Checks if a player is allowed to be zombie
	if(isDefaultZombie(id) || g_endround || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && !g_zombie[id] && fnGetHumans() == 1))
		return false;

	return true;
}
allowed_human(id) { // Checks if a player is allowed to be human
	if(isDefaultHuman(id) || g_endround || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_zombie[id] && fnGetZombies() == 1))
		return false;

	return true;
}
allowed_special(id, zombie, specialid) { // Checks if a player is allowed to be a special class
	if(zombie) {
		if(specialid < MAX_SPECIALS_ZOMBIES) if(!zm_special_enable[specialid]) return false;

		if(g_endround || g_zm_special[id] == specialid || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && !g_zombie[id] && fnGetHumans() == 1))
			return false;
	}
	else {
		if(specialid < MAX_SPECIALS_HUMANS) if(!hm_special_enable[specialid]) return false;

		if(g_endround || g_hm_special[id] == specialid || !g_isalive[id] || task_exists(TASK_WELCOMEMSG) || (!g_newround && g_zombie[id] && fnGetZombies() == 1))
			return false;
	}
	return true;
}
allowed_respawn(id) { // Checks if a player is allowed to respawn
	static team; team = fm_cs_get_user_team(id)
	if(g_endround || team == FM_CS_TEAM_SPECTATOR || team == FM_CS_TEAM_UNASSIGNED || g_isalive[id]) return false;

	return true;
}
allowed_game_mode(mode) {
	static alive_count;
	alive_count = fnGetAlive();

	switch(mode) {
		case MODE_NEMESIS: if(!zm_special_enable[NEMESIS]) return -1;
		case MODE_ASSASSIN: if(!zm_special_enable[ASSASSIN]) return -1;
		case MODE_PREDATOR: if(!zm_special_enable[PREDATOR]) return -1;
		case MODE_BOMBARDIER: if(!zm_special_enable[BOMBARDIER]) return -1;
		case MODE_DRAGON: if(!zm_special_enable[DRAGON]) return -1;
		case MODE_SURVIVOR: if(!hm_special_enable[SURVIVOR]) return -1;
		case MODE_SNIPER: if(!hm_special_enable[SNIPER]) return -1;
		case MODE_BERSERKER: if(!hm_special_enable[BERSERKER]) return -1;
		case MODE_WESKER: if(!hm_special_enable[WESKER]) return -1;
		case MODE_SPY: if(!hm_special_enable[SPY]) return -1;
		case MODE_MULTI: {
			if(floatround(alive_count*get_pcvar_float(cvar_multiratio), floatround_ceil) < 2 || floatround(alive_count*get_pcvar_float(cvar_multiratio), floatround_ceil) >= alive_count)
				return 0;
		}
		case MODE_PLAGUE: {
			if(!hm_special_enable[SURVIVOR] || !zm_special_enable[NEMESIS]) return -1

			if(floatround((alive_count-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil) < 1
			|| alive_count-(get_pcvar_num(cvar_plaguesurvnum)+get_pcvar_num(cvar_plaguenemnum)+floatround((alive_count-(get_pcvar_num(cvar_plaguenemnum)+get_pcvar_num(cvar_plaguesurvnum)))*get_pcvar_float(cvar_plagueratio), floatround_ceil)) < 1)
				return 0;
		}
		case MODE_LNJ: if(!hm_special_enable[SURVIVOR] || !zm_special_enable[NEMESIS]) return -1;
	}

	if(g_endround || !g_newround || task_exists(TASK_WELCOMEMSG)) return 0;

	if(mode > MODE_INFECTION && mode < MAX_GAME_MODES) if(alive_count < get_pcvar_num(cvar_mod_minplayers[mode])) return 0;

	return 1;
}
allowed_custom_game() { // Checks if a custom game mode is allowed
	if(g_endround || !g_newround || task_exists(TASK_WELCOMEMSG) || fnGetAlive() < 2) return false;

	return true;
}
command_zombie(id, player) { // Admin Command. zp_zombie
	zp_log_message(id, player, "CMD_INFECT") // Log and Print Message

	if(g_newround) { // New round?
		remove_task(TASK_MAKEZOMBIE)
		start_infection_mode(player, MODE_SET) // Set as first zombie

		ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, MODE_INFECTION, id)
	}
	else zombieme(player, 0, 0, 0, 0) // Just infect
}
command_human(id, player) { // Admin Command. zp_human
	zp_log_message(id, player, "CMD_DISINFECT") // Log and Print Message
	humanme(player, 0, 0, 0) // Turn to human
}

new const hm_cmd_langs[MAX_SPECIALS_HUMANS-1][] = { "CMD_SURVIVAL", "CMD_SNIPER", "CMD_BERSERKER", "CMD_WESKER", "CMD_SPY" }
new const zm_cmd_langs[MAX_SPECIALS_ZOMBIES-1][] = { "CMD_NEMESIS", "CMD_ASSASSIN", "CMD_PREDATOR", "CMD_BOMBARDIER", "CMD_DRAGON" }
command_special(id, player, spid, zm) {
	if(!hm_special_enable[spid] && !zm || !zm_special_enable[spid] && zm) return

	ExecuteForward(g_forwards[zm ? ZM_SP_CHOSSED_PRE : HM_SP_CHOSSED_PRE], g_fwDummyResult, id, spid);
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) return

	zp_log_message(id, player, zm ? zm_cmd_langs[spid-1] : hm_cmd_langs[spid-1]) // Log and Print Message

	static mode_id; mode_id = 0
	if(g_newround) { // New round?
		remove_task(TASK_MAKEZOMBIE)
		if(zm) {
			switch(spid) {
				case NEMESIS: mode_id = MODE_NEMESIS
				case ASSASSIN: mode_id = MODE_ASSASSIN
				case PREDATOR: mode_id = MODE_PREDATOR
				case BOMBARDIER: mode_id = MODE_BOMBARDIER
				case DRAGON: mode_id = MODE_DRAGON
			}
			set_special_zombie_mode(player, MODE_SET, spid)
			ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, mode_id, id)
		}
		else {
			switch(spid) {
				case SURVIVOR: mode_id = MODE_SURVIVOR
				case SNIPER: mode_id = MODE_SNIPER
				case BERSERKER: mode_id = MODE_BERSERKER
				case WESKER: mode_id = MODE_WESKER
				case SPY: mode_id = MODE_SPY
			}
			set_special_human_mode(player, MODE_SET, spid)
			ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, mode_id, id)
		}
	}
	else { // Turn player into a Special Class
		if(zm) zombieme(player, 0, spid, 0, 0)
		else humanme(player, spid, 0, 0)
	}
	ExecuteForward(g_forwards[zm ? ZM_SP_CHOSSED_POST : HM_SP_CHOSSED_POST], g_fwDummyResult, id, spid);
}
command_custom_special(id, player, spid, zombie) {
	ExecuteForward(g_forwards[zombie ? ZM_SP_CHOSSED_POST : HM_SP_CHOSSED_PRE], g_fwDummyResult, id, spid);
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) return

	static special_name[32], sp_id, Array:Arr_Sp[3]
	if(zombie) {
		sp_id = spid-MAX_SPECIALS_ZOMBIES
		Arr_Sp[0] = g_zm_sp_name_by_lang
		Arr_Sp[1] = g_zm_sp_lang_key
		Arr_Sp[2] = g_zm_sp_name
	}
	else {
		sp_id = spid-MAX_SPECIALS_HUMANS
		Arr_Sp[0] = g_hm_sp_name_by_lang
		Arr_Sp[1] = g_hm_sp_lang_key
		Arr_Sp[2] = g_hm_sp_name
	}

	if(ArrayGetCell(Arr_Sp[0], sp_id)) {
		ArrayGetString(Arr_Sp[1], sp_id, special_name, charsmax(special_name))
		formatex(special_name, charsmax(special_name), "%L", LANG_PLAYER, special_name)
	}
	else ArrayGetString(Arr_Sp[2], sp_id, special_name, charsmax(special_name))

	switch (get_pcvar_num(cvar_showactivity)) {
		case 1: client_print_color(0, print_team_default, "^4*ADMIN*^1 %s ^3- %L", g_playername[player], LANG_PLAYER, "CMD_CUSTOM_SP", special_name);
		case 2: client_print_color(0, print_team_default, "^4*ADMIN*^1 %s ^3-^1 %s^3 %L", g_playername[id], g_playername[player], LANG_PLAYER, "CMD_CUSTOM_SP", special_name);
	}

	if(get_pcvar_num(cvar_logcommands)) { // Log to Zombie Plague log file?
		static logdata[500], authid[32], ip[16], filename[100]
		get_user_authid(id, authid, charsmax(authid))
		get_user_ip(id, ip, charsmax(ip), 1)

		ArrayGetString(Arr_Sp[2], sp_id, special_name, charsmax(special_name))
		formatex(logdata, charsmax(logdata), "*ADMIN* %s <%s><%s> - %s %L (Players: %d/%d)", g_playername[id], authid, ip, g_playername[player], LANG_SERVER, "CMD_CUSTOM_SP", special_name, fnGetPlaying(), MaxClients)

		format_time(filename, charsmax(filename), "%d-%m-%Y");
		format(filename, charsmax(filename), "zombie_plague_special_%s.log", filename);
		log_to_file(filename, logdata)
	}
	if(zombie) zombieme(player, 0, spid, 0, 0)
	else humanme(player, spid, 0, 0)

	ExecuteForward(g_forwards[zombie ? ZM_SP_CHOSSED_POST : HM_SP_CHOSSED_POST], g_fwDummyResult, id, spid);
}
command_respawn(id, player) { // Admin Command. zp_respawn
	zp_log_message(id, player, "CMD_RESPAWN") // Log and Print Message

	// Respawn as zombie?
	if(isCustomMode()) { // Custom round ?
		if(RespawnAsZombie(g_deathmatchmode))
			g_respawn_as_zombie[player] = true
	}
	else { // Normal round
		static dm_mode;	dm_mode = get_pcvar_num(cvar_deathmatch);
		if(RespawnAsZombie(dm_mode))
			g_respawn_as_zombie[player] = true
	}


	// Override respawn as zombie setting on nemesis, assassin, survivor, sniper and berserker rounds
	if(g_currentmode >= MODE_SURVIVOR && g_currentmode < MODE_SWARM) g_respawn_as_zombie[player] = true
	else if(g_currentmode >= MODE_NEMESIS && g_currentmode < MODE_SURVIVOR) g_respawn_as_zombie[player] = false

	respawn_player_manually(player);
}

command_swarm(id) { // Admin Command. zp_swarm
	zp_log_message(id, 0, "CMD_SWARM") // Log and Print Message

	// Call Swarm Mode
	remove_task(TASK_MAKEZOMBIE)
	start_swarm_mode(0, MODE_SET)
	ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, MODE_SWARM, id)
}
command_multi(id) { // Admin Command. zp_multi
	zp_log_message(id, 0, "CMD_MULTI") // Log and Print Message

	// Call Multi Infection
	remove_task(TASK_MAKEZOMBIE)
	start_multi_mode(0, MODE_SET)
	ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, MODE_MULTI, id)
}
command_plague(id) { // Admin Command. zp_plague
	if(!hm_special_enable[SURVIVOR] || !zm_special_enable[NEMESIS]) return

	zp_log_message(id, 0, "CMD_PLAGUE") // Log and Print Message

	// Call Plague Mode
	remove_task(TASK_MAKEZOMBIE)
	start_plague_mode(0, MODE_SET)
	ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, MODE_PLAGUE, id)
}
command_lnj(id) { // Admin Command. zp_lnj
	if(!hm_special_enable[SURVIVOR] || !zm_special_enable[NEMESIS]) return

	zp_log_message(id, 0, "CMD_LNJ") // Log and Print Message

	// Call Armageddon Mode
	remove_task(TASK_MAKEZOMBIE)
	start_lnj_mode(0, MODE_SET)
	ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, MODE_LNJ, id)
}
command_custom_game(gameid, id) { // Admin command for a custom game mode
	// Retrieve the game mode name as it will be used
	static buffer[32], gm_id, i;

	gm_id = (gameid - MAX_GAME_MODES)

	if(id != 0) {
		if(ArrayGetCell(g_gm_name_by_lang, gm_id)) {
			ArrayGetString(g_gm_lang_key, gm_id, buffer, charsmax(buffer)) // Retrieve the game mode's name
			formatex(buffer, charsmax(buffer), "%L", LANG_PLAYER, buffer)
		}
		else ArrayGetString(g_gm_name, gm_id, buffer, charsmax(buffer)) // Retrieve the game mode's name

		switch (get_pcvar_num(cvar_showactivity)) { // Show activity?
			case 1: client_print_color(0, print_team_default, "^3*ADMIN*^1 - %L %s", LANG_PLAYER, "MENU_ADMIN2_CUSTOM", buffer)
			case 2: client_print_color(0, print_team_default, "^4*ADMIN*^1 %s ^3- %L %s", g_playername[id], LANG_PLAYER, "MENU_ADMIN2_CUSTOM", buffer)
		}

		if(get_pcvar_num(cvar_logcommands)) { // Log to Zombie Plague Special log file?
			static logdata[500], authid[32], ip[16], filename[100]
			get_user_authid(id, authid, charsmax(authid))
			get_user_ip(id, ip, charsmax(ip), 1)

			ArrayGetString(g_gm_name, gm_id, buffer, charsmax(buffer)) // Retrieve the game mode's name
			formatex(logdata, charsmax(logdata), "*ADMIN* %s <%s><%s> - %L %s (Players: %d/%d)", g_playername[id], authid, ip, LANG_SERVER, "MENU_ADMIN2_CUSTOM", buffer, fnGetPlaying(), MaxClients)

			format_time(filename, charsmax(filename), "%d-%m-%Y");
			format(filename, charsmax(filename), "zombie_plague_special_%s.log", filename);
			log_to_file(filename, logdata)
		}
	}


	remove_task(TASK_MAKEZOMBIE) // Remove make a zombie task
	g_newround = false // No more a new round
	g_currentmode = gameid // Current game mode and last game mode are equal to the game mode id
	g_lastmode = gameid
	g_allowinfection = (ArrayGetCell(g_gm_allow, gm_id) == 1) ? true : false // Check whether or not to allow infection during this game mode
	g_deathmatchmode = ArrayGetCell(g_gm_dm, gm_id) // Check the death match mode required by the game mode
	g_modestarted = true // Our custom game mode has fully started

	if(ArrayGetCell(g_gm_use_rstart_snd, gm_id)) {
		static Array:ArrSound, szSound[64];
		ArrSound = ArrayGetCell(g_gm_rstart_snd_handler, gm_id)
		ArrayGetString(ArrSound, random_num(0, ArraySize(ArrSound)-1), szSound, charsmax(szSound))
		PlaySound(szSound)
	}

	if(ArrayGetCell(g_gm_amb_enable, gm_id) > 0) { // Start ambience sounds
		remove_task(TASK_AMBIENCESOUNDS)
		set_task(2.0, "ambience_sound_effects", TASK_AMBIENCESOUNDS)
	}

	ExecuteForward(g_forwards[GAME_MODE_SELECTED], g_fwDummyResult, gameid, id) // Execute our game mode selected forward
	ExecuteForward(g_forwards[ROUND_START], g_fwDummyResult, gameid, 0) // Execute our round start forward with the game mode id [BUGFIX]

	for(i = 1; i <= MaxClients; i++) {
		update_team(i)	// Fix Team Change
		if(g_zombie[i] && g_escape_map) { // Escape Map Support
			if(get_pcvar_num(cvar_randspawn)) do_random_spawn(i) // random spawn (including CSDM)
			else do_random_spawn(i, 1) // regular spawn
		}
	}
}
stock zp_log_message(id, player, const lang[]) {
	if(player > 0) {
		switch (get_pcvar_num(cvar_showactivity)) { // Show activity?
			case 1: client_print_color(0, print_team_default, "^4*ADMIN*^1 %s ^3- %L", g_playername[player], LANG_PLAYER, lang)
			case 2: client_print_color(0, print_team_default, "^4*ADMIN*^1 %s ^3-^1 %s^3 %L", g_playername[id], g_playername[player], LANG_PLAYER, lang)
		}
	}
	else {
		switch (get_pcvar_num(cvar_showactivity)) { // Show activity?
			case 1: client_print_color(0, print_team_default, "^4*ADMIN*^3 - %L", LANG_PLAYER, lang)
			case 2: client_print_color(0, print_team_default, "^4*ADMIN*^1 %s ^3- %L", g_playername[id], LANG_PLAYER, lang)
		}
	}

	if(get_pcvar_num(cvar_logcommands)) { // Log to Zombie Plague log file?
		static logdata[500], authid[32], ip[16], filename[100]
		get_user_authid(id, authid, charsmax(authid))
		get_user_ip(id, ip, charsmax(ip), 1)

		if(player > 0) formatex(logdata, charsmax(logdata), "*ADMIN* %s <%s><%s> - %s %L (Players: %d/%d)", g_playername[id], authid, ip, g_playername[player], LANG_SERVER, lang, fnGetPlaying(), MaxClients)
		else formatex(logdata, charsmax(logdata), "*ADMIN* %s <%s><%s> - %L (Players: %d/%d)", g_playername[id], authid, ip, LANG_SERVER, lang, fnGetPlaying(), MaxClients)

		format_time(filename, charsmax(filename), "%d-%m-%Y");
		format(filename, charsmax(filename), "zombie_plague_special_%s.log", filename);
		log_to_file(filename, logdata)
	}
}
/*================================================================================
 [Custom Natives]
=================================================================================*/
public native_get_user_zombie(plugin_id, num_params) { // Native: zp_get_user_zombie
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_zombie[id];
}
public native_get_user_nemesis(plugin_id, num_params) { // Native: zp_get_user_nemesis
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;

	return g_zm_special[id] == NEMESIS;
}
public native_get_user_survivor(plugin_id, num_params) { // Native: zp_get_user_survivor
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;

	return g_hm_special[id] == SURVIVOR;
}
public native_get_user_first_zombie(plugin_id, num_params) { // Native: zp_get_user_first_zombie
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_firstzombie[id];
}
public native_get_human_special_class(plugin_id, num_params) { // Native: zp_get_human_special_class
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_zombie[id] ? 0 : g_hm_special[id];
}
public native_get_zombie_special_class(plugin_id, num_params) { // Native: zp_get_zombie_special_class
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_zombie[id] ? g_zm_special[id] : 0
}
public native_get_user_last_zombie(plugin_id, num_params) { // Native: zp_get_user_last_zombie
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_lastzombie[id];
}
public native_get_user_last_human(plugin_id, num_params) { // Native: zp_get_user_last_human
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_lasthuman[id];
}
public native_get_user_madness(plugin_id, num_params) { // Native: zp_get_user_madness
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_nodamage[id];
}
public native_get_user_zombie_class(plugin_id, num_params) { // Native: zp_get_user_zombie_class
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	if(g_zm_special[id] > 0) return -1 // Fix Bug of Special Classes using Zombie Classes's Skills
	return g_zombieclass[id];
}
public native_get_user_next_class(plugin_id, num_params) { // Native: zp_get_user_next_class
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_zombieclassnext[id];
}
// Native: zp_get_user_default_gravity(id)
public Float:native_get_user_default_gravity(plugin_id, num_params) {
	static id; id = get_param(1);
	return get_gravity_default(id);
}
// Native: zp_set_user_gravity(id, Float:Gravity)
public native_set_user_gravity(plugin_id, num_params) {
	static id, Float:Gravity;
	id = get_param(1);
	Gravity = get_param_f(2);
	if(!is_user_valid(id)) return false;
	if(!g_isalive[id]) return false;

	if(Gravity < 0.0) // Reset if Gravity are less than 0
		Gravity = get_gravity_default(id);

	set_pev(id, pev_gravity, Gravity)

	return true;
}
public Float:get_gravity_default(id) {
	if(!is_user_valid(id)) return -1.0;
	if(!g_isalive[id]) return -1.0;

	if(g_zombie[id]) {
		if(isCustomSpecialZombie(id))
			return Float:ArrayGetCell(g_zm_sp_gravity, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)
		else if(isDefaultSpecialZombie(id))
			return get_pcvar_float(cvar_zmgravity[g_zm_special[id]])
		else if(g_zombieclass[id] != NULL_CLASS)
			return Float:ArrayGetCell(g_zclass_grav, g_zombieclass[id])
	}
	else {
		if(isCustomSpecialHuman(id))
			return Float:ArrayGetCell(g_hm_sp_gravity, g_hm_special[id]-MAX_SPECIALS_HUMANS)
		else if(isDefaultSpecialHuman(id) || g_hm_special[id] == 0 && !g_hclass_i)
			return get_pcvar_float(cvar_hmgravity[0])
		else if(g_user_hclass[id] != NULL_CLASS) {
			static Float:Gravity
			Gravity = Float:ArrayGetCell(g_hclass_gravity, g_user_hclass[id])
			if(Gravity > 0.0)
				return Gravity
			else
				return get_pcvar_float(cvar_hmgravity[0])
		}
	}
	return 1.0;
}

public native_set_user_zombie_class(plugin_id, num_params) { // Native: zp_set_user_zombie_class
	static id, classid;
	id = get_param(1);
	classid = get_param(2);

	if(!is_user_valid(id)) return false;

	if(classid < 0 || classid >= g_zclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid zombie class id (%d)", classid)
		return false;
	}
	g_zombieclassnext[id] = classid
	return true;
}
public native_get_user_human_class(plugin_id, num_params) { // Native: zp_get_user_human_class
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	if(g_hm_special[id] > 0) return -1
	return g_user_hclass[id];
}
public native_get_next_human_class(plugin_id, num_params) { // Native: zp_get_next_human_class
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_hclass_next[id];
}
public native_set_user_human_class(plugin_id, num_params) { // Native: zp_set_user_human_class
	static id, classid;
	id = get_param(1);
	classid = get_param(2);

	if(!is_user_valid(id)) return false;

	if(classid < 0 || classid >= g_hclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid human class id (%d)", classid)
		return false;
	}
	g_hclass_next[id] = classid
	return true;
}

public native_get_user_ammo_packs(plugin_id, num_params) { // Native: zp_get_user_ammo_packs
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_ammopacks[id];
}
public native_set_user_ammo_packs(plugin_id, num_params) { // Native: zp_set_user_ammo_packs
	static id, amount;
	id = get_param(1);
	amount = get_param(2);
	if(!is_user_valid(id)) return false;
	g_ammopacks[id] = amount;
	return true;
}
public native_get_user_frozen(plugin_id, num_params) { // Native: zp_get_user_frozen
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_frozen[id];
}
public native_get_user_burn(plugin_id, num_params) { // Native: zp_get_user_burn
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_burning[id])
}
public native_get_user_infectnade(plugin_id, num_params) { // Native: zp_get_user_infectnade
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_zombie[id] && g_zm_special[id] <= 0 && user_has_weapon(id, CSW_HEGRENADE));
}

public native_get_user_maxhealth(plugin_id, num_params) { // Native: zp_get_user_maxhealth/zp_get_zombie_maxhealth
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	if(!g_isalive[id]) return -1;

	static basehealth, health
	if(g_zombie[id]) {
		if(isCustomSpecialZombie(id)) {
			health = ArrayGetCell(g_zm_sp_health, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)
			if(health == 0)
				return (get_pcvar_num(cvar_zm_health[0]) * fnGetAlive())
			else
				return health
		}

		else if(isDefaultSpecialZombie(id)) {
			basehealth = get_pcvar_num(cvar_zm_basehp[g_zm_special[id]])
			if(get_pcvar_num(cvar_zm_health[g_zm_special[id]]) == 0) {
				if(basehealth == 0)
					return (ArrayGetCell(g_zclass_hp, 0) * fnGetAlive())
				else
					return (basehealth * fnGetAlive())
			}
			else return get_pcvar_num(cvar_zm_health[g_zm_special[id]]);
		}

		else if(isDefaultZombie(id)) {
			if(g_firstzombie[id]) return floatround(float(ArrayGetCell(g_zclass_hp, g_zombieclass[id])) * get_pcvar_float(cvar_zm_health[0]))
			else return ArrayGetCell(g_zclass_hp, g_zombieclass[id])
		}
	}
	else {
		if(isCustomSpecialHuman(id)) {
			health = ArrayGetCell(g_hm_sp_health, g_hm_special[id]-MAX_SPECIALS_HUMANS)
			if(health == 0)
				return (get_pcvar_num(cvar_hm_health[0]) * fnGetAlive())
			else
				return health
		}
		else if(isDefaultSpecialHuman(id)) {
			basehealth = get_pcvar_num(cvar_hm_basehp[g_hm_special[id]])
			if(get_pcvar_num(cvar_hm_health[g_hm_special[id]]) == 0) {
				if(basehealth == 0)
					return (get_pcvar_num(cvar_hm_health[0]) * fnGetAlive())
				else
					return (basehealth * fnGetAlive())
			}
			else return get_pcvar_num(cvar_hm_health[g_hm_special[id]]);
		}
		else if(!g_hclass_i || g_user_hclass[id] == NULL_CLASS) {
			return get_pcvar_num(cvar_hm_health[0])
		}
		else {
			health = ArrayGetCell(g_hclass_hp, g_user_hclass[id])
			return (health > 0) ? health : get_pcvar_num(cvar_hm_health[0])
		}
	}
	return -1;
}
public native_get_user_batteries(plugin_id, num_params) { // Native: zp_get_user_batteries
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return g_flashbattery[id];
}
public native_set_user_batteries(plugin_id, num_params) { // Native: zp_set_user_batteries
	static id, value;
	id = get_param(1);
	value = get_param(2);
	if(!is_user_valid(id) || !is_user_valid_connected(id)) return false;

	g_flashbattery[id] = clamp(value, 0, 100);
	if(g_cached_customflash) { // Set the flashlight charge task to update battery status
		remove_task(id+TASK_CHARGE)
		set_task(1.0, "flashlight_charge", id+TASK_CHARGE, _, _, "b")
	}
	return true;
}
public native_get_user_nightvision(plugin_id, num_params) { // Native: zp_get_user_nightvision
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;

	if(g_nvisionenabled[id])
		return 2;

	if(g_nvision[id])
		return 1;

	return 0;
}
public native_set_rendering(plugin_id, num_params) { // Native: zp_set_user_rendering
	static id, fx, rgb[3], render, amount
	id = get_param(1);
	fx = get_param(2);
	rgb[0] = get_param(3);
	rgb[1] = get_param(4);
	rgb[2] = get_param(5);
	render = get_param(6);
	amount = get_param(7);

	if(!is_user_valid(id)) return false;
	if(!g_isconnected[id] || !g_isalive[id]) return false;

	fm_set_rendering(id, fx, rgb[0], rgb[1], rgb[2], render, amount)
	return true;
}
public native_reset_user_rendering(plugin_id, num_params) { // Native: zp_reset_user_rendering
	static id; id = get_param(1)
	if(!is_user_valid(id)) return false;
	reset_user_rendering(id)
	return true
}
public native_get_extra_item_cost(plugin_id, num_params) { // Native: zp_get_extra_item_cost
	static itemid; itemid = get_param(1);
	if(itemid < 0 || itemid >= g_extraitem_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid extra item id (%d)", itemid)
		return -1;
	}
	return ArrayGetCell(g_extraitem_cost, itemid)
}
public native_get_extra_item_name(plugin_id, num_params) { // Native: zp_get_extra_item_name
	if(num_params != 3) return -1;

	static itemid, buffer[50]
	itemid = get_param(1)

	if(itemid < 0 || itemid >= g_extraitem_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid extra item id (%d)", itemid)
		return -1;
	}
	ArrayGetString(g_extraitem_name, itemid, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}
public native_get_weapon_name(plugin_id, num_params) { // Native: zp_get_weapon_name
	if(num_params != 4)
		return -1;

	static wpn_type, itemid, buffer[50]
	wpn_type = get_param(1)
	itemid = get_param(2)

	if(itemid < 0 || itemid >= g_wpn_i[wpn_type]) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Weapon id (%d)", itemid)
		return -1;
	}

	ArrayGetString(g_wpn_name[wpn_type], itemid, buffer, charsmax(buffer))
	set_string(3, buffer, get_param(4))
	return 1;
}
public native_get_weapon_realname(plugin_id, num_params) { // Native: zp_get_weapon_realname
	if(num_params != 4) return -1;

	static wpn_type, itemid, buffer[50]
	wpn_type = get_param(1)
	itemid = get_param(2)

	if(itemid < 0 || itemid >= g_wpn_i[wpn_type]) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Weapon id (%d)", itemid)
		return -1;
	}
	ArrayGetString(g_wpn_realname[wpn_type], itemid, buffer, charsmax(buffer))
	set_string(3, buffer, get_param(4))
	return 1;
}
public native_weapon_is_custom(plugin_id, num_params) { // Native: zp_weapon_is_custom
	static wpn_type, wpn_id
	wpn_type = get_param(1);
	wpn_id = get_param(2)

	if(wpn_id < 0 || wpn_id >= g_wpn_i[wpn_type]) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Weapon id (%d)", wpn_id)
		return -1;
	}
	return ArrayGetCell(g_wpn_is_custom[wpn_type], wpn_id);
}
public native_weapon_count(plugin_id, num_params) { // Native: zp_weapon_count
	static wpn_type, skip_def_custom
	wpn_type = get_param(1)
	skip_def_custom = get_param(2)
	if(!skip_def_custom) return g_wpn_i[wpn_type]

	static count, i; count = 0
	for(i = 0; i < ArraySize(g_wpn_realname[wpn_type]); i++) {
		if(skip_def_custom == 1 && !ArrayGetCell(g_wpn_is_custom[wpn_type], i) || skip_def_custom == 2 && ArrayGetCell(g_wpn_is_custom[wpn_type], i))
			continue;

		count++
	}
	return count
}
public native_special_class_name(plugin_id, num_params) { // Native: zp_get_special_class_name
	if(num_params != 3) return -1;

	static id; id = get_param(1)

	if(!is_user_valid(id)) return -1;
	if(!g_isconnected[id]) return 0;

	new zm_specials_names[][] = { "Zombie", "Nemesis", "Assassin", "Predator", "Bombardier", "Dragon" }
	new hm_specials_names[][] = { "Human", "Survivor", "Sniper", "Berserker", "Wesker", "Spy" }

	static sp_name[64]
	if(g_zombie[id]) {
		if(isCustomSpecialZombie(id)) ArrayGetString(g_zm_sp_realname, (g_zm_special[id] - MAX_SPECIALS_ZOMBIES), sp_name, charsmax(sp_name))
		else formatex(sp_name, charsmax(sp_name), "%s", zm_specials_names[g_zm_special[id]])
	}
	else {
		if(isCustomSpecialHuman(id)) ArrayGetString(g_hm_sp_realname, (g_hm_special[id] - MAX_SPECIALS_HUMANS), sp_name, charsmax(sp_name))
		else formatex(sp_name, charsmax(sp_name), "%s", hm_specials_names[g_hm_special[id]])
	}
	set_string(2, sp_name, get_param(3))

	return 1;
}
public native_get_current_mode_name(plugin_id, num_params) { // Native: zp_get_current_mode_name(name[], len)
	if(num_params != 2) return -1;

	new const mode_name[][] = { "None", "Infection", "Nemesis", "Assassin", "Predator", "Bombardier", "Dragon",
	"Survivor", "Sniper", "Berserker", "Wesker", "Spy", "Swarm", "Multi-Infection", "Plague", "Armageddon", "Undefined" }

	static g_ModeName[64]
	if(isCustomMode()) ArrayGetString(g_gm_name, (g_currentmode - MAX_GAME_MODES), g_ModeName, charsmax(g_ModeName))
	else formatex(g_ModeName, charsmax(g_ModeName), "%s", mode_name[g_currentmode])

	set_string(1, g_ModeName, get_param(2))

	return 1;
}
public native_get_gamemode_id(plugin_id, num_params) { // Native: zp_get_gamemode_id(const name[])

	static name[32];
	get_string(1, name, charsmax(name))

	new const mode_name[][] = { "None", "Infection", "Nemesis", "Assassin", "Predator", "Bombardier", "Dragon",
	"Survivor", "Sniper", "Berserker", "Wesker", "Spy", "Swarm", "Multi-Infection", "Plague", "Armageddon", "Undefined" }

	static i, mode_id;
	mode_id = -1

	for(i = 0; i < sizeof mode_name; i++) {
		if(equal(name, mode_name[i])) {
			mode_id = i
			break;
		}
	}
	if(mode_id == -1) {
		static gameid, custom_gamemode_name[32]
		for(i = MAX_GAME_MODES; i < g_gamemodes_i; i++) {
			gameid = i-MAX_GAME_MODES
			ArrayGetString(g_gm_realname, gameid, custom_gamemode_name, charsmax(custom_gamemode_name)) // Add real name
			if(equal(name, custom_gamemode_name)) {
				mode_id = i
				break;
			}
		}
	}
	if(mode_id == -1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Game Mode (%s) Not Found", name)
		return -1;
	}
	return mode_id
}
public native_get_extra_item_realname(plugin_id, num_params) { // Native: zp_get_extra_item_realname
	if(num_params != 3) return -1;

	static itemid, buffer[50]
	itemid = get_param(1)

	if(itemid < 0 || itemid >= g_extraitem_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid extra item id (%d)", itemid)
		return -1;
	}
	ArrayGetString(g_extraitem_realname, itemid, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}

public native_get_human_class_name(plugin_id, num_params) { // Native: zp_get_human_class_name
	if(num_params != 3) return -1;

	static class, buffer[50]
	class = get_param(1)

	if(class < 0 || class >= g_hclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid human class id (%d)", class)
		return -1;
	}
	ArrayGetString(g_hclass_name, class, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}
public native_get_hclass_realname(plugin_id, num_params) { // Native: zp_get_human_class_realname
	if(num_params != 3) return -1;

	static class, buffer[50]
	class = get_param(1)

	if(class < 0 || class >= g_hclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid human class id (%d)", class)
		return -1;
	}
	ArrayGetString(g_hclass_real_name, class, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}
public native_get_human_class_info(plugin_id, num_params) { // Native: zp_get_human_class_info
	if(num_params != 3) return -1;

	static class, buffer[50]
	class = get_param(1)

	if(class < 0 || class >= g_hclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid human class id (%d)", class)
		return -1;
	}
	ArrayGetString(g_hclass_info, class, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}
public native_set_human_class_info(plugin_id, num_params) { // Native: zp_set_human_class_info
	static classid, newinfo[64];
	classid = get_param(1);
	get_string(2, newinfo, charsmax(newinfo))

	if(classid < 0 || classid >= g_hclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid human class id (%d)", classid)
		return false;
	}
	ArraySetString(g_hclass_info, classid, newinfo)
	ArraySetCell(g_hclass_lang_enable, classid, 0)
	return true
}
public native_set_human_class_name(plugin_id, num_params) { // Native: zp_set_human_class_name
	static classid, newname[32];
	classid = get_param(1);
	get_string(2, newname, charsmax(newname))

	if(classid < 0 || classid >= g_hclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid human class id (%d)", classid)
		return false;
	}
	ArraySetString(g_hclass_name, classid, newname)
	ArraySetCell(g_hclass_lang_enable, classid, 0)
	return true
}

public native_get_zombie_class_name(plugin_id, num_params) { // Native: zp_get_zombie_class_name
	if(num_params != 3) return -1;

	static class, buffer[50]
	class = get_param(1)

	if(class < 0 || class >= g_zclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid zombie class id (%d)", class)
		return -1;
	}
	ArrayGetString(g_zclass_name, class, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}
public native_get_zclass_realname(plugin_id, num_params) { // Native: zp_get_zombie_class_realname
	if(num_params != 3) return -1;

	static class, buffer[50]
	class = get_param(1)

	if(class < 0 || class >= g_zclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid zombie class id (%d)", class)
		return -1;
	}
	ArrayGetString(g_zclass_real_name, class, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}
public native_get_zombie_class_info(plugin_id, num_params) { // Native: zp_get_zombie_class_info
	if(num_params != 3) return -1;

	static class, buffer[50]
	class = get_param(1)

	if(class < 0 || class >= g_zclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid zombie class id (%d)", class)
		return -1;
	}
	ArrayGetString(g_zclass_info, class, buffer, charsmax(buffer))
	set_string(2, buffer, get_param(3))
	return 1;
}
public native_set_zombie_class_info(plugin_id, num_params) { // Native: zp_set_zombie_class_info
	static classid, newinfo[64];
	classid = get_param(1);
	get_string(2, newinfo, charsmax(newinfo))

	if(classid < 0 || classid >= g_zclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid zombie class id (%d)", classid)
		return false;
	}
	ArraySetString(g_zclass_info, classid, newinfo)
	ArraySetCell(g_zclass_lang_enable, classid, 0)
	return true
}
public native_set_zombie_class_name(plugin_id, num_params) { // Native: zp_set_zombie_class_name
	static classid, newname[32];
	classid = get_param(1);
	get_string(2, newname, charsmax(newname))

	if(classid < 0 || classid >= g_zclass_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid zombie class id (%d)", classid)
		return false;
	}
	ArraySetString(g_zclass_name, classid, newname)
	ArraySetCell(g_zclass_lang_enable, classid, 0)
	return true
}
public native_set_extra_item_team(plugin_id, num_params) { // Native: zp_set_extra_item_team
	static itemid, team;
	itemid = get_param(1);
	team = get_param(2);
	if(itemid < 0 || itemid >= g_extraitem_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid extra item id (%d)", itemid)
		return false;
	}
	ArraySetCell(g_extraitem_team, itemid, team)
	return true
}
public native_set_extra_item_cost(plugin_id, num_params) { // Native: zp_set_extra_item_cost
	static itemid, cost;
	itemid = get_param(1);
	cost = get_param(2);
	if(itemid < 0 || itemid >= g_extraitem_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid extra item id (%d)", itemid)
		return false;
	}
	ArraySetCell(g_extraitem_cost, itemid, cost)
	return true;
}
public native_set_extra_item_name(plugin_id, num_params)  { // Native: zp_set_extra_item_name
	static itemid, newname[32];
	itemid = get_param(1);
	get_string(2, newname, charsmax(newname));
	if(itemid < 0 || itemid >= g_extraitem_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid extra item id (%d)", itemid)
		return false;
	}
	ArraySetString(g_extraitem_name, itemid, newname)
	ArraySetCell(g_extraitem_name_by_lang, itemid, 0)
	return true
}
public native_set_weapon_name(plugin_id, num_params) { // Native: zp_set_weapon_name
	static wpn_type, itemid, newname[32]
	wpn_type = get_param(1);
	itemid = get_param(2);
	get_string(3, newname, charsmax(newname))

	if(itemid < 0 || itemid >= g_wpn_i[wpn_type]) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Weapon id (%d)", itemid)
		return false;
	}
	ArraySetString(g_wpn_name[wpn_type], itemid, newname)
	ArraySetCell(g_wpn_name_by_lang[wpn_type], itemid, 0)
	return true
}

// Native: zp_set_extra_damage / zp_set_user_extra_damage
public native_set_extra_damage(plugin_id, num_params) {

	static victim, attacker, damage, weaponDescription[32], dmg_dealth;
	victim = get_param(1);
	attacker = get_param(2);
	damage = get_param(3);
	get_string(4, weaponDescription, charsmax(weaponDescription))

	if(num_params > 4)
		dmg_dealth = get_param(5)
	else
		dmg_dealth = 0

	return set_user_extra_damage(victim, attacker, damage, weaponDescription, dmg_dealth);
}

public set_user_extra_damage(victim, attacker, damage, const weaponDescription[], dmg_dealth) {
	if(!is_user_valid_alive(attacker) || !is_user_valid_alive(victim))
		return 0;

	if(pev(victim, pev_takedamage) == DAMAGE_NO || damage <= 0 || g_nodamage[victim])
		return 0;

	if(get_user_health(victim) - damage <= 0) {
		set_msg_block(get_user_msgid("DeathMsg"), BLOCK_SET);
		ExecuteHamB(Ham_Killed, victim, attacker, 2);
		set_msg_block(get_user_msgid("DeathMsg"), BLOCK_NOT);

		message_begin(MSG_BROADCAST, get_user_msgid("DeathMsg"));
		write_byte(attacker);
		write_byte(victim);
		write_byte(0);
		write_string(weaponDescription);
		message_end();

		set_pev(attacker, pev_frags, float(get_user_frags(attacker) + 1));

		static kname[32], vname[32], kauthid[32], vauthid[32], kteam[10], vteam[10];
		get_user_name(attacker, kname, 31); get_user_team(attacker, kteam, 9); get_user_authid(attacker, kauthid, 31);
		get_user_name(victim, vname, 31); get_user_team(victim, vteam, 9); get_user_authid(victim, vauthid, 31);

		log_message("^"%s<%d><%s><%s>^" killed ^"%s<%d><%s><%s>^" with ^"%s^"", kname, get_user_userid(attacker), kauthid, kteam,
		vname, get_user_userid(victim), vauthid, vteam, weaponDescription);
	}
	else {
		ExecuteHam(Ham_TakeDamage, victim, 0, attacker, float(damage), DMG_BLAST)

		if(dmg_dealth)
			damage_dealth(attacker, victim, damage);
	}
	return 1;
}
public native_set_user_maxspeed(plugin_id, num_params) { // Native: zp_set_user_maxspeed
	static id, Float:Speed
	id = get_param(1);
	Speed = get_param_f(2);

	if(!is_user_valid(id)) return false;

	if(!g_isalive[id]) return false;

	g_user_custom_speed[id] = true
	g_current_maxspeed[id] = Speed
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id)

	return true
}
public Float:native_get_user_maxspeed(plugin_id, num_params) { // Native: zp_get_user_maxspeed
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1.0;

	if(g_user_custom_speed[id]) return g_current_maxspeed[id];
	else if(isDefaultZombie(id)) return get_pcvar_float(cvar_zm_spd[g_zm_special[id]]);
	else if(isCustomSpecialHuman(id) || isCustomSpecialZombie(id) || g_hclass_i && isDefaultHuman(id)) return g_spd[id];

	return get_pcvar_float(cvar_hm_spd[g_hm_special[id]]);
}
public native_reset_user_maxspeed(plugin_id, num_params) { // Native: zp_reset_user_maxspeed
	static id; id = get_param(1)
	if(!is_user_valid(id)) return false;

	if(g_user_custom_speed[id]) {
		g_user_custom_speed[id] = false
		g_current_maxspeed[id] = 0.0
	}
	ExecuteHamB(Ham_Player_ResetMaxSpeed, id)
	return true;
}
public native_set_user_nightvision(plugin_id, num_params) { // Native: zp_set_user_nightvision
	static id, set;
	id = get_param(1)
	set = get_param(2)

	if(!is_user_valid_connected(id)) return false;

	if(set) {
		g_nvision[id] = true

		if(!g_isbot[id]) {
			g_nvisionenabled[id] = (set == 1) ? true : false
			user_nightvision(id, set)
		}
		else cs_set_user_nvg(id, 1)
	}
	else {
		cs_set_user_nvg(id, 0) // Remove CS nightvision if player owns one (bugfix)
		g_nvision[id] = false
		nvision_toggle_off(id)
	}
	return true;
}

// Native zp_set_user_madness(id, set, Float:Duration)
public native_set_user_madness(plugin_id, num_params) {
	static id, set, Float:Duration

	id = get_param(1)
	set = get_param(2)

	if(num_params < 3) Duration = -1.0
	else Duration = get_param_f(3)

	return set_user_madness(id, set, Duration);
}

public set_user_madness(id, set, Float:Duration) {
	if(!is_user_valid(id)) return false;

	if(set) {
		if(g_nodamage[id]) return false;

		g_nodamage[id] = true
		g_madness_used[id] = true
		set_task(0.1, "zombie_aura", id+TASK_AURA, _, _, "b")

		if(Duration <= -1.0)
			Duration = get_pcvar_float(cvar_madnessduration)

		if(Duration)
			set_task(Duration, "madness_over", id+TASK_BLOOD)

		set_pev(id, pev_takedamage, DAMAGE_NO)

		static sound[64]
		ArrayGetString(ar_sound[9], random_num(0, ArraySize(ar_sound[9]) - 1), sound, charsmax(sound))
		emit_sound(id, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
	}
	else madness_over(id+TASK_BLOOD)

	return true;
}
// Native: zp_set_user_frozen
public native_set_user_frozen(plugin_id, num_params) {

	static id, set, Float:Duration

	id = get_param(1)
	set = get_param(2)

	if(num_params > 2) Duration = get_param_f(3);
	else Duration = -1.0

	if(Duration == -1.0)
		Duration = get_pcvar_float(cvar_freezeduration)

	return set_user_frozen(id, set, Duration);
}

public set_user_frozen(id, set, Float:Duration) {
	if(!is_user_valid(id)) return false;

	static sound[64]
	if(set) {
		if(!is_user_valid_alive(id) || g_nodamage[id] || g_frozen[id]) return false; // Only effect alive unfrozen zombies

		ExecuteForward(g_forwards[FROZEN_PRE], g_fwDummyResult, id);
		if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) return false;

		if(set < 2) { // Specials Zombies shouldn't be frozen
			if(!get_allowed_frost(id) || g_hm_special[id] > 0) {

				static origin2[3]; get_user_origin(id, origin2) // Get player's origin

				ArrayGetString(ar_sound[16], random_num(0, ArraySize(ar_sound[16]) - 1), sound, charsmax(sound))
				emit_sound(id, CHAN_BODY, sound, 1.0, ATTN_NORM, 0, PITCH_NORM) // Broken glass sound

				// Glass shatter
				message_begin(MSG_PVS, SVC_TEMPENTITY, origin2)
				write_byte(TE_BREAKMODEL) // TE id
				write_coord(origin2[0]) // x
				write_coord(origin2[1]) // y
				write_coord(origin2[2]+24) // z
				write_coord(16) // size x
				write_coord(16) // size y
				write_coord(16) // size z
				write_coord(random_num(-50, 50)) // velocity x
				write_coord(random_num(-50, 50)) // velocity y
				write_coord(25) // velocity z
				write_byte(10) // random velocity
				write_short(g_glassSpr) // model
				write_byte(10) // count
				write_byte(25) // life
				write_byte(BREAK_GLASS) // flags
				message_end()

				return true;
			}
		}
		if(get_pcvar_num(cvar_hudicons)) { // Freeze icon?
			message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, id)
			write_byte(0) // damage save
			write_byte(0) // damage take
			write_long(DMG_DROWN) // damage type - DMG_FREEZE
			write_coord(0) // x
			write_coord(0) // y
			write_coord(0) // z
			message_end()
		}

		// Light blue glow while frozen
		fm_set_rendering(id, kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 25)

		ArrayGetString(ar_sound[15], random_num(0, ArraySize(ar_sound[15]) - 1), sound, charsmax(sound))
		emit_sound(id, CHAN_BODY, sound, 1.0, ATTN_NORM, 0, PITCH_NORM) // Freeze sound

		// Add a blue tint to their screen
		message_begin(MSG_ONE, g_msgScreenFade, _, id)
		write_short(0) // duration
		write_short(0) // hold time
		write_short(FFADE_STAYOUT) // fade type
		write_byte(0) // red
		write_byte(50) // green
		write_byte(200) // blue
		write_byte(100) // alpha
		message_end()

		g_frozen[id] = true; // Set a task to remove the freeze
		pev(id, pev_gravity, g_frozen_gravity[id]) // Save player's old gravity (bugfix)

		// Prevent from jumping
		if(pev(id, pev_flags) & FL_ONGROUND) set_pev(id, pev_gravity, 999999.9) // set really high
		else set_pev(id, pev_gravity, 0.000001) // no gravity

		ExecuteHamB(Ham_Player_ResetMaxSpeed, id) // Prevent from moving
		ExecuteForward(g_forwards[FROZEN_POST], g_fwDummyResult, id);

		if(Duration)
			set_task(Duration, "remove_freeze", id)
	}
	else remove_freeze(id)

	return true
}
public native_set_user_burn(plugin_id, num_params) {
	static id, set, Float:Duration

	id = get_param(1)
	set = get_param(2)

	if(num_params > 2) Duration = get_param_f(3)
	else Duration = -1.0

	if(Duration == -1.0)
		Duration = get_pcvar_float(cvar_fireduration)

	return set_user_burn(id, set, Duration)
}

public set_user_burn(id, set, Float:Duration) {
	if(!is_user_valid(id)) return false;
	if(set) {
		if(!is_user_valid_alive(id) || g_nodamage[id]) return false; // Only effect alive zombies

		ExecuteForward(g_forwards[BURN_PRE], g_fwDummyResult, id);
		if(g_fwDummyResult >= ZP_PLUGIN_HANDLED) return false;

		if(get_pcvar_num(cvar_hudicons)) { // Heat icon?
			message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, id)
			write_byte(0) // damage save
			write_byte(0) // damage take
			write_long(DMG_BURN) // damage type
			write_coord(0) // x
			write_coord(0) // y
			write_coord(0) // z
			message_end()
		}

		if(Duration) {
			if(!get_allowed_burn(id) && set > 2 || g_hm_special[id] > 0 && set > 2)
				Flame_Create(id, Duration * 0.5)
			else
				Flame_Create(id, Duration)
		}
		else Flame_Create(id, -1.0)

		ExecuteForward(g_forwards[BURN_POST], g_fwDummyResult, id);
	}
	else g_burning[id] = false
	return true;
}
public native_set_user_infectnade(plugin_id, num_params) {
	static id, set;
	id = get_param(1);
	set = get_param(2);

	if(!is_user_valid_alive(id)) return false;
	if(!g_zombie[id] || !g_isalive[id]) return false;

	if(set) fm_give_item(id, "weapon_hegrenade");
	else cs_set_user_bpammo(id, CSW_HEGRENADE, 0), engclient_cmd(id, "weapon_knife")

	return true;

}
public native_infect_user(plugin_id, num_params) { // Native: zp_infect_user
	static id, infector, silent, rewards;
	id = get_param(1);
	infector = get_param(2);
	silent = get_param(3)
	rewards = get_param(4)

	if(!is_user_valid_alive(id)) return false;
	if(!allowed_zombie(id)) return false; // Not allowed to be zombie

	if(g_newround) { // New round?
		remove_task(TASK_MAKEZOMBIE)
		start_infection_mode(id, MODE_SET) // Set as first zombie
	}
	else zombieme(id, is_user_valid_alive(infector) ? infector : 0, 0, (silent == 1) ? 1 : 0, (rewards == 1) ? 1 : 0) // Just infect (plus some checks)

	return true;
}
public native_disinfect_user(plugin_id, num_params) { // Native: zp_disinfect_user
	static id, silent, attacker
	id = get_param(1)
	silent = get_param(2)

	if(num_params > 2)
		attacker = get_param(3)
	else
		attacker = 0

	if(!is_user_valid_alive(id)) return false;
	if(!allowed_human(id)) return false; // Not allowed to be human

	humanme(id, 0, (silent == 1) ? 1 : 0, attacker) // Turn to human
	return true;
}


public native_make_user_nemesis(plugin_id, num_params) return make_user_special(get_param(1), NEMESIS, 1);  // Native: zp_make_user_nemesis
public native_make_user_survivor(plugin_id, num_params) return make_user_special(get_param(1), SURVIVOR, 0);  // Native: zp_make_user_survivor
public native_make_user_sniper(plugin_id, num_params) return make_user_special(get_param(1), SNIPER, 0);  // Native: zp_make_user_sniper
public native_make_user_assassin(plugin_id, num_params) return make_user_special(get_param(1), ASSASSIN, 1);  // Native: zp_make_user_assassin
public native_make_user_predator(plugin_id, num_params) return make_user_special(get_param(1), PREDATOR, 1);  // Native: zp_make_user_predator
public native_make_user_bombardier(plugin_id, num_params) return make_user_special(get_param(1), BOMBARDIER, 1);  // Native: zp_make_user_bombardier
public native_make_user_dragon(plugin_id, num_params) return make_user_special(get_param(1), DRAGON, 1);  // Native: zp_make_user_dragon
public native_make_user_berserker(plugin_id, num_params) return make_user_special(get_param(1), BERSERKER, 0);  // Native: zp_make_user_berserker
public native_make_user_wesker(plugin_id, num_params) return make_user_special(get_param(1), WESKER, 0);  // Native: zp_make_user_wesker
public native_make_user_spy(plugin_id, num_params) return make_user_special(get_param(1), SPY, 0); // Native: zp_make_user_spy
public native_make_user_special(plugin_id, num_params) return make_user_special(get_param(1), get_param(2), get_param(3)); // Native: zp_make_user_special
public make_user_special(id, spid, zombie) {
	if(!is_user_valid_alive(id)) return -1;

	if(spid >= g_zm_specials_i && zombie || spid >= g_hm_specials_i && !zombie) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Special class id (%d)", spid)
		return -1;
	}
	if(!allowed_special(id, zombie, spid)) return 0; // Not allowed to be special

	if(g_newround && spid < MAX_SPECIALS_HUMANS && !zombie || g_newround && spid < MAX_SPECIALS_ZOMBIES && zombie) { // New round?
		remove_task(TASK_MAKEZOMBIE)
		if(zombie) set_special_zombie_mode(id, MODE_SET, spid)
		else set_special_human_mode(id, MODE_SET, spid)
	}
	else { // Turn player into a Special Class
		if(zombie) zombieme(id, 0, spid, 0, 0)
		else humanme(id, spid, 0, 0)
	}
	return 1;
}
public native_force_user_class(plugin_id, num_params) {
	static id, spid, zombie, attacker, silent
	id = get_param(1)
	spid = get_param(2)
	zombie = get_param(3)
	attacker = get_param(4)
	silent = get_param(5)

	if(!is_user_valid_alive(id)) return -1;

	if(spid >= g_zm_specials_i && zombie || spid >= g_hm_specials_i && !zombie
	|| spid < 0 && zombie || spid < 0 && !zombie) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Special class id (%d)", spid)
		return -1;
	}

	if(zombie)
		zombieme(id, attacker, spid, silent, 1)
	else
		humanme(id, spid, silent, attacker)

	return 1;
}
public native_respawn_user(plugin_id, num_params) { // Native: zp_respawn_user
	static id, team;
	id = get_param(1);
	team = get_param(2);

	if(!is_user_valid_connected(id)) return false;
	if(!allowed_respawn(id)) return false; // Respawn not allowed

	g_respawn_as_zombie[id] = (team == GetTeamIndex(TEAM_ZOMBIE)) ? true : false // Respawn as zombie?
	respawn_player_manually(id) // Respawnish!
	return true;
}
public native_force_buy_extra_item(plugin_id, num_params) { // Native: zp_force_buy_extra_item
	static id, itemid, ignorecost;
	id = get_param(1);
	itemid = get_param(2);
	ignorecost = get_param(3);

	if(!is_user_valid_alive(id)) return false;

	if(itemid < 0 || itemid >= g_extraitem_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid extra item id (%d)", itemid)
		return false;
	}
	buy_extra_item(id, itemid, ignorecost)
	return true;
}
public native_get_user_sniper(plugin_id, num_params) { // Native: zp_get_user_sniper
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_hm_special[id] == SNIPER);
}
public native_get_user_assassin(plugin_id, num_params) { // Native: zp_get_user_assassin
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_zm_special[id] == ASSASSIN);
}
public native_get_user_predator(plugin_id, num_params) { // Native: zp_get_user_predator
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_zm_special[id] == PREDATOR);
}
public native_get_user_bombardier(plugin_id, num_params) { // Native: zp_get_user_bombardier
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_zm_special[id] == BOMBARDIER);
}
public native_get_user_dragon(plugin_id, num_params) { // Native: zp_get_user_dragon
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_zm_special[id] == DRAGON);
}
public native_get_user_berserker(plugin_id, num_params) { // Native: zp_get_user_berserker
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_hm_special[id] == BERSERKER);
}
public native_get_user_wesker(plugin_id, num_params) { // Native: zp_get_user_wesker
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_hm_special[id] == WESKER);
}
public native_get_user_spy(plugin_id, num_params) { // Native: zp_get_user_spy
	static id; id = get_param(1)
	if(!is_user_valid(id)) return -1;
	return (g_hm_special[id] == SPY);
}
public native_get_user_model(plugin_id, num_params) { // Native: zp_get_user_model
	if(num_params != 3) return -1; // Insufficient number of arguments

	static id; id = get_param(1) // Retrieve the player's index
	if(!is_user_valid_alive(id)) return 0; // Not an alive player or invalid player

	static current_model[32] // Retrieve the player's current model
	cs_get_user_model(id, current_model, charsmax(current_model))

	set_string(2, current_model, get_param(3)) // Copy the model name into the array passed
	return 1;
}

public native_override_user_model(plugin_id, num_params)  { // Native: zp_override_user_model
	static id, newmodel[32], modelindex;
	id = get_param(1);
	get_string(2, newmodel, charsmax(newmodel));
	modelindex = get_param(3);

	return override_user_model(id, newmodel, 0, 0, modelindex);
}

public native_override_user_model2(plugin_id, num_params)  {// Native: zpsp_override_user_model
	static id, newmodel[32], body, skin, modelindex;
	id = get_param(1);
	get_string(2, newmodel, charsmax(newmodel));
	body = get_param(3);
	skin = get_param(4);
	modelindex = get_param(5);
	return override_user_model(id, newmodel, body, skin, modelindex);
}

public override_user_model(id, const newmodel[], body, skin, modelindex) {
	if(!is_user_valid_alive(id)) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Player (%d)", id)
		return false;
	}

	ExecuteForward(g_forwards[MODEL_CHANGE_PRE], g_fwDummyResult, id, newmodel, body, skin)

	if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE) return false // The game mode didnt accept some conditions

	static currentmodel[32] // Custom models stuff
	cs_get_user_model(id, currentmodel, charsmax(currentmodel))// Get current model for comparing it with the current one

	if(!equal(currentmodel, newmodel)) { // Set the right model, after checking that we don't already have it
		copy(g_playermodel[id], charsmax(g_playermodel[]), newmodel)
		cs_set_user_model(id, newmodel, modelindex ? true : false)
	}

	g_playerbody[id] = body
	g_playerskin[id] = skin

	set_pev(id, pev_body, g_playerbody[id]);
	set_pev(id, pev_skin, g_playerskin[id]);

	ExecuteForward(g_forwards[MODEL_CHANGE_POST], g_fwDummyResult, id, newmodel, body, skin)
	return true;
}
public native_has_round_started(plugin_id, num_params) { // Native: zp_has_round_started
	if(g_newround) return 0; // not started
	if(g_modestarted) return 1; // started
	return 2; // starting
}
public native_get_current_mode(plugin_id, num_params) return g_currentmode; // Native: zp_get_current_mode
public native_get_last_mode(plugin_id, num_params) return g_lastmode; // Native: zp_get_last_mode
public native_has_round_ended(plugin_id, num_params) return g_endround;  // Native: zp_has_round_ended
public native_is_nemesis_round(plugin_id, num_params) return (g_currentmode == MODE_NEMESIS); // Native: zp_is_nemesis_round
public native_is_survivor_round(plugin_id, num_params) return (g_currentmode == MODE_SURVIVOR); // Native: zp_is_survivor_round
public native_is_swarm_round(plugin_id, num_params) return (g_currentmode == MODE_SWARM); // Native: zp_is_swarm_round
public native_is_plague_round(plugin_id, num_params) return (g_currentmode == MODE_PLAGUE); // Native: zp_is_plague_round
public native_get_zombie_count(plugin_id, num_params) return fnGetZombies(); // Native: zp_get_zombie_count
public native_get_human_count(plugin_id, num_params) return fnGetHumans(); // Native: zp_get_human_count
public native_get_nemesis_count(plugin_id, num_params) return fnGetSpecials(1, NEMESIS); // Native: zp_get_nemesis_count
public native_get_survivor_count(plugin_id, num_params) return fnGetSpecials(0, SURVIVOR); // Native: zp_get_survivor_count
public native_is_sniper_round(plugin_id, num_params) return (g_currentmode == MODE_SNIPER); // Native: zp_is_sniper_round
public native_get_sniper_count(plugin_id, num_params) return fnGetSpecials(0, SNIPER); // Native: zp_get_sniper_count
public native_is_assassin_round(plugin_id, num_params) return (g_currentmode == MODE_ASSASSIN); // Native: zp_is_assassin_round
public native_get_assassin_count(plugin_id, num_params) return fnGetSpecials(1, ASSASSIN); // Native: zp_get_assassin_count
public native_is_predator_round(plugin_id, num_params) return (g_currentmode == MODE_PREDATOR); // Native: zp_is_predator_round
public native_get_predator_count(plugin_id, num_params) return fnGetSpecials(1, PREDATOR); // Native: zp_get_predator_count
public native_is_bombardier_round(plugin_id, num_params) return (g_currentmode == MODE_BOMBARDIER); // Native: zp_is_bombardier_round
public native_get_bombardier_count(plugin_id, num_params) return fnGetSpecials(1, BOMBARDIER); // Native: zp_get_bombardier_count
public native_is_dragon_round(plugin_id, num_params) return (g_currentmode == MODE_DRAGON); // Native: zp_is_dragon_round
public native_get_dragon_count(plugin_id, num_params) return fnGetSpecials(1, DRAGON); // Native: zp_get_dragon_count
public native_is_berserker_round(plugin_id, num_params) return (g_currentmode == MODE_BERSERKER); // Native: zp_is_berserker_round
public native_is_wesker_round(plugin_id, num_params) return (g_currentmode == MODE_WESKER); // Native: zp_is_wesker_round
public native_is_spy_round(plugin_id, num_params) return (g_currentmode == MODE_SPY); // Native: zp_is_spy_round
public native_get_berserker_count(plugin_id, num_params) return fnGetSpecials(0, BERSERKER); // Native: zp_get_berserker_count
public native_get_wesker_count(plugin_id, num_params) return fnGetSpecials(0, WESKER); // Native: zp_get_wesker_count
public native_get_spy_count(plugin_id, num_params) return fnGetSpecials(0, SPY); // Native: zp_get_spy_count
public native_is_lnj_round(plugin_id, num_params) return (g_currentmode == MODE_LNJ); // Native: zp_is_lnj_round
public native_get_special_count(plugin_id, num_params) {
	static is_zombie, specialid;
	is_zombie = get_param(1)
	specialid = get_param(2)

	if(specialid < 0 || specialid >= g_zm_specials_i && is_zombie || specialid >= g_hm_specials_i && !is_zombie) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Special class id (%d)", specialid)
		return -1;
	}
	return fnGetSpecials(is_zombie, specialid);
}

// Native: zp_register_human_special
public native_register_human_special(plugin_id, num_params) {
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static i, sp_name[32], name[32]
	get_string(1, name, charsmax(name))
	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register Custom Special Class with an empty name")
		return -1;
	}
	for(i = MAX_SPECIALS_HUMANS; i < g_hm_specials_i; i++) {
		ArrayGetString(g_hm_sp_realname, i-MAX_SPECIALS_HUMANS, sp_name, charsmax(sp_name))
		if(equali(name, sp_name)) {
			log_error(AMX_ERR_NATIVE, "[ZP] Custom Special Class already registered (%s)", sp_name)
			return -1;
		}
	}

	static model[32], hp, speed, Float:gravity, flags, clip_type, aura_radius, glow, rgb[3]
	get_string(2, model, charsmax(model));
	hp = get_param(3);
	speed = get_param(4);
	gravity = get_param_f(5);
	flags = get_param(6);
	clip_type = get_param(7);
	aura_radius = get_param(8);
	glow = get_param(9);
	rgb[0] = get_param(10);
	rgb[1] = get_param(11);
	rgb[2] = get_param(12);

	static section[32], szPrecache[64]
	formatex(section, charsmax(section), "H:%s", name)
	ArrayPushString(g_hm_sp_realname, name)

	// Replace Name
	static value, Float:value_f, szValue[64];
	if(!amx_load_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "NAME", name)
	ArrayPushString(g_hm_sp_name, name)

	// Load Models/Body/Skin //
	static Array:ArrModelTemp, Array:ArrBodyTemp, Array:ArrSkinTemp;
	ArrModelTemp = ArrayCreate(32, 1)
	ArrBodyTemp = ArrayCreate(1, 1)
	ArrSkinTemp = ArrayCreate(1, 1)
	amx_load_setting_string_arr(ZP_SPECIAL_CLASSES_FILE, section, "MODEL", ArrModelTemp)
	amx_load_setting_int_arr(ZP_SPECIAL_CLASSES_FILE, section, "BODY", ArrBodyTemp)
	amx_load_setting_int_arr(ZP_SPECIAL_CLASSES_FILE, section, "SKIN", ArrSkinTemp)
	AddSettingParamForNoobs(ZP_SPECIAL_CLASSES_FILE, ArrModelTemp, ArrBodyTemp, section, "BODY", 0)
	AddSettingParamForNoobs(ZP_SPECIAL_CLASSES_FILE, ArrModelTemp, ArrSkinTemp, section, "SKIN", 0)

	if(ArraySize(ArrModelTemp) > 0) {
		// Precache player models
		for (i = 0; i < ArraySize(ArrModelTemp); i++) {
			ArrayGetString(ArrModelTemp, i, szPrecache, charsmax(szPrecache))
			precache_player_model(szPrecache)
		}
	}
	else {
		ArrayPushString(ArrModelTemp, model)
		ArrayPushCell(ArrBodyTemp, 0)
		ArrayPushCell(ArrSkinTemp, 0)
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "MODEL", model)
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "BODY", 0)
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "SKIN", 0)
		precache_player_model(model)
	}
	ArrayPushCell(g_hm_sp_mdl_handle, ArrModelTemp)
	ArrayPushCell(g_hm_sp_body_handle, ArrBodyTemp)
	ArrayPushCell(g_hm_sp_skin_handle, ArrSkinTemp)
	//----------------------------------------------------------------------------

	// Replace Health
	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "HEALTH", hp))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "HEALTH", hp)
	ArrayPushCell(g_hm_sp_health, hp)

	// Replace Speed
	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "SPEED", speed))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "SPEED", speed)
	ArrayPushCell(g_hm_sp_speed, speed)

	// Replace Gravity
	if(!amx_load_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "GRAVITY", gravity))
		amx_save_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "GRAVITY", gravity)
	ArrayPushCell(g_hm_sp_gravity, gravity)

	// Replace Speed
	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GLOW ENABLE", glow))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GLOW ENABLE", glow)
	ArrayPushCell(g_hm_sp_glow, glow)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NVISION ENABLE", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NVISION ENABLE", 1)
		ArrayPushCell(g_hm_sp_nvision, 1)
	}
	else ArrayPushCell(g_hm_sp_nvision, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "AURA SIZE", aura_radius))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "AURA SIZE", aura_radius)
	ArrayPushCell(g_hm_sp_aurarad, aura_radius)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "RED", rgb[0]))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "RED", rgb[0])
	ArrayPushCell(g_hm_sp_r, rgb[0])

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GREEN", rgb[1]))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GREEN", rgb[1])
	ArrayPushCell(g_hm_sp_g, rgb[1])

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "BLUE", rgb[2]))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "BLUE", rgb[2])
	ArrayPushCell(g_hm_sp_b, rgb[2])

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "CLIP TYPE", clip_type))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "CLIP TYPE", clip_type)
	ArrayPushCell(g_hm_sp_cliptype, clip_type)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW LEAP", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW LEAP", 1)
		ArrayPushCell(g_hm_sp_leap, 1)
	}
	else ArrayPushCell(g_hm_sp_leap, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "LEAP FORCE", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "LEAP FORCE", 500)
		ArrayPushCell(g_hm_sp_leap_f, 500)
	}
	else ArrayPushCell(g_hm_sp_leap_f, value)

	if(!amx_load_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP HEIGHT", value_f)) {
		amx_save_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP HEIGHT", 300.0)
		ArrayPushCell(g_hm_sp_leap_h, 300.0)
	}
	else ArrayPushCell(g_hm_sp_leap_h, value_f)

	if(!amx_load_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP COOLDOWN", value_f)) {
		amx_save_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP COOLDOWN", 5.0)
		ArrayPushCell(g_hm_sp_leap_c, 5.0)
	}
	else ArrayPushCell(g_hm_sp_leap_c, value_f)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE FRAG", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE FRAG", 0)
		ArrayPushCell(g_hm_sp_ignorefrag, 0)
	}
	else ArrayPushCell(g_hm_sp_ignorefrag, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE AMMO", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE AMMO", 0)
		ArrayPushCell(g_hm_sp_ignoreammo, 0)
	}
	else ArrayPushCell(g_hm_sp_ignoreammo, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW RESPAWN", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW RESPAWN", 1)
		ArrayPushCell(g_hm_sp_respawn, 1)
	}
	else ArrayPushCell(g_hm_sp_respawn, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "PAINFREE", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "PAINFREE", 0)
		ArrayPushCell(g_hm_sp_painfree, 0)
	}
	else ArrayPushCell(g_hm_sp_painfree, value)

	if(amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ENABLE", value)) {
		if(CheckAllowed(value)) ArrayPushCell(g_hm_sp_enable, 1)
		else ArrayPushCell(g_hm_sp_enable, 0)
	}
	else {
		ArrayPushCell(g_hm_sp_enable, 1)
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ENABLE", 1)
	}

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NAME BY LANG", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NAME BY LANG", 0)
		ArrayPushCell(g_hm_sp_name_by_lang, 0)
	}
	else ArrayPushCell(g_hm_sp_name_by_lang, value)

	if(!amx_load_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "LANG KEY", szValue, charsmax(szValue))) {
		ArrayPushString(g_hm_sp_lang_key, "ITEM_LANG_DEFAULT_KEY")
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "LANG KEY", "ITEM_LANG_DEFAULT_KEY")
	}
	else ArrayPushString(g_hm_sp_lang_key, szValue)

	// Save make acess in zp main configs
	formatex(sp_name, charsmax(sp_name), name)
	strtoupper(sp_name)
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", fmt("MAKE %s", sp_name), szValue, charsmax(szValue))) {
		get_flags(flags, szValue, charsmax(szValue));
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", fmt("MAKE %s", sp_name), szValue);
		ArrayPushCell(g_hm_sp_flags, flags);
	}
	else ArrayPushCell(g_hm_sp_flags, read_flags(szValue))

	ArrayPushCell(ZP_TEAM_INDEX, ArraySize(ZP_TEAM_NAMES))
	ArrayPushCell(iTeamIndexHm, ArraySize(ZP_TEAM_NAMES))
	ArrayPushString(ZP_TEAM_NAMES, sp_name)

	g_hm_specials_i++ // Increase registered special humans counter
	return (g_hm_specials_i-1); // Return id under which we registered the human special
}
// Native: zp_register_zombie_special
public native_register_zombie_special(plugin_id, num_params) {
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static i, sp_name[32], name[32]
	get_string(1, name, charsmax(name))
	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register Custom Special Class with an empty name")
		return -1;
	}
	for(i = MAX_SPECIALS_ZOMBIES; i < g_zm_specials_i; i++) {
		ArrayGetString(g_zm_sp_realname, i-MAX_SPECIALS_ZOMBIES, sp_name, charsmax(sp_name))
		if(equali(name, sp_name)) {
			log_error(AMX_ERR_NATIVE, "[ZP] Custom Special Class already registered (%s)", sp_name)
			return -1;
		}
	}

	static model[32], knifemodel[64], pain_snd[64], hp, speed, Float:gravity, flags, Float:knockback, aura_radius, glow, rgb[3]
	get_string(2, model, charsmax(model));
	get_string(3, knifemodel, charsmax(knifemodel));
	get_string(4, pain_snd, charsmax(pain_snd));
	hp = get_param(5);
	speed = get_param(6);
	gravity = get_param_f(7);
	flags = get_param(8);
	knockback = get_param_f(9);
	aura_radius = get_param(10);
	glow = get_param(11);
	rgb[0] = get_param(12);
	rgb[1] = get_param(13);
	rgb[2] = get_param(14);

	static section[32], szPrecache[64]
	formatex(section, charsmax(section), "Z:%s", name)
	ArrayPushString(g_zm_sp_realname, name)

	// Replace Name
	static value, Float:value_f, szValue[64];
	if(!amx_load_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "NAME", name)
	ArrayPushString(g_zm_sp_name, name)

	// Load Models/Body/Skin //
	static Array:ArrModelTemp, Array:ArrBodyTemp, Array:ArrSkinTemp;
	ArrModelTemp = ArrayCreate(32, 1)
	ArrBodyTemp = ArrayCreate(1, 1)
	ArrSkinTemp = ArrayCreate(1, 1)
	amx_load_setting_string_arr(ZP_SPECIAL_CLASSES_FILE, section, "MODEL", ArrModelTemp)
	amx_load_setting_int_arr(ZP_SPECIAL_CLASSES_FILE, section, "BODY", ArrBodyTemp)
	amx_load_setting_int_arr(ZP_SPECIAL_CLASSES_FILE, section, "SKIN", ArrSkinTemp)
	AddSettingParamForNoobs(ZP_SPECIAL_CLASSES_FILE, ArrModelTemp, ArrBodyTemp, section, "BODY", 0)
	AddSettingParamForNoobs(ZP_SPECIAL_CLASSES_FILE, ArrModelTemp, ArrSkinTemp, section, "SKIN", 0)
	if(ArraySize(ArrModelTemp) > 0) {
		// Precache player models
		for (i = 0; i < ArraySize(ArrModelTemp); i++) {
			ArrayGetString(ArrModelTemp, i, szPrecache, charsmax(szPrecache))
			precache_player_model(szPrecache)
		}
	}
	else {
		ArrayPushString(ArrModelTemp, model)
		ArrayPushCell(ArrBodyTemp, 0)
		ArrayPushCell(ArrSkinTemp, 0)
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "MODEL", model)
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "BODY", 0)
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "SKIN", 0)
		precache_player_model(model)
	}
	ArrayPushCell(g_zm_sp_mdl_handle, ArrModelTemp)
	ArrayPushCell(g_zm_sp_body_handle, ArrBodyTemp)
	ArrayPushCell(g_zm_sp_skin_handle, ArrSkinTemp)
	//----------------------------------------------------------------------------

	if(!amx_load_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "V_KNIFE MODEL", knifemodel, charsmax(knifemodel)))
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "V_KNIFE MODEL", knifemodel)
	ArrayPushString(g_zm_sp_knifemodel, knifemodel)
	engfunc(EngFunc_PrecacheModel, knifemodel)

	static Array:ArrPainSnd
	ArrPainSnd = ArrayCreate(64, 1)
	ArrayPushCell(g_zm_sp_painsnd_handle, ArrPainSnd)
	amx_load_setting_string_arr(ZP_SPECIAL_CLASSES_FILE, section, "PAIN SOUND", ArrPainSnd)
	if(ArraySize(ArrPainSnd) > 0) {
		for(i = 0; i < ArraySize(ArrPainSnd); i++) {
			ArrayGetString(ArrPainSnd, i, szPrecache, charsmax(szPrecache))
			engfunc(EngFunc_PrecacheSound, szPrecache) // Precache Pain Sound
		}
	}
	else {
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "PAIN SOUND", pain_snd)
		ArrayPushString(ArrPainSnd, pain_snd)
	}

	static Array:ArrDeathSnd
	ArrDeathSnd = ArrayCreate(64, 1)
	ArrayPushCell(g_zm_sp_deathsnd_handle, ArrDeathSnd)
	amx_load_setting_string_arr(ZP_SPECIAL_CLASSES_FILE, section, "DEATH SOUND", ArrDeathSnd)
	if(ArraySize(ArrDeathSnd) > 0) {
		ArrayPushCell(g_zm_sp_use_deathsnd, true)
		for(i = 0; i < ArraySize(ArrDeathSnd); i++) {
			ArrayGetString(ArrDeathSnd, i, szPrecache, charsmax(szPrecache))
			engfunc(EngFunc_PrecacheSound, szPrecache) // Precache Pain Sound
		}
	}
	else {
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "DEATH SOUND", "")
		ArrayPushCell(g_zm_sp_use_deathsnd, false)
	}

	// Replace Health
	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "HEALTH", hp))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "HEALTH", hp)
	ArrayPushCell(g_zm_sp_health, hp)

	// Replace Speed
	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "SPEED", speed))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "SPEED", speed)
	ArrayPushCell(g_zm_sp_speed, speed)

	// Replace Gravity
	if(!amx_load_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "GRAVITY", gravity))
		amx_save_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "GRAVITY", gravity)
	ArrayPushCell(g_zm_sp_gravity, gravity)

	// Replace Speed
	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GLOW ENABLE", glow))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GLOW ENABLE", glow)
	ArrayPushCell(g_zm_sp_glow, glow)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NVISION ENABLE", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NVISION ENABLE", 1)
		ArrayPushCell(g_zm_sp_nvision, 1)
	}
	else ArrayPushCell(g_zm_sp_nvision, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "AURA SIZE", aura_radius))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "AURA SIZE", aura_radius)
	ArrayPushCell(g_zm_sp_aurarad, aura_radius)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "RED", rgb[0]))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "RED", rgb[0])
	ArrayPushCell(g_zm_sp_r, rgb[0])

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GREEN", rgb[1]))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "GREEN", rgb[1])
	ArrayPushCell(g_zm_sp_g, rgb[1])

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "BLUE", rgb[2]))
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "BLUE", rgb[2])
	ArrayPushCell(g_zm_sp_b, rgb[2])

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW LEAP", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW LEAP", 1)
		ArrayPushCell(g_zm_sp_leap, 1)
	}
	else ArrayPushCell(g_zm_sp_leap, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "LEAP FORCE", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "LEAP FORCE", 500)
		ArrayPushCell(g_zm_sp_leap_f, 500)
	}
	else ArrayPushCell(g_zm_sp_leap_f, value)

	if(!amx_load_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP HEIGHT", value_f)) {
		amx_save_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP HEIGHT", 300.0)
		ArrayPushCell(g_zm_sp_leap_h, 300.0)
	}
	else ArrayPushCell(g_zm_sp_leap_h, value_f)

	if(!amx_load_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP COOLDOWN", value_f)) {
		amx_save_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "LEAP COOLDOWN", 5.0)
		ArrayPushCell(g_zm_sp_leap_c, 5.0)
	}
	else ArrayPushCell(g_zm_sp_leap_c, value_f)

	if(!amx_load_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "KNOCKBACK", knockback))
		amx_save_setting_float(ZP_SPECIAL_CLASSES_FILE, section, "KNOCKBACK", knockback)
	ArrayPushCell(g_zm_sp_knockback, knockback)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE FRAG", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE FRAG", 0)
		ArrayPushCell(g_zm_sp_ignorefrag, 0)
	}
	else ArrayPushCell(g_zm_sp_ignorefrag, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE AMMO", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "IGNORE AMMO", 0)
		ArrayPushCell(g_zm_sp_ignoreammo, 0)
	}
	else ArrayPushCell(g_zm_sp_ignoreammo, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW RESPAWN", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW RESPAWN", 1)
		ArrayPushCell(g_zm_sp_respawn, 1)
	}
	else ArrayPushCell(g_zm_sp_respawn, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "PAINFREE", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "PAINFREE", 0)
		ArrayPushCell(g_zm_sp_painfree, 0)
	}
	else ArrayPushCell(g_zm_sp_painfree, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW BURN", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW BURN", 0)
		ArrayPushCell(g_zm_sp_allow_burn, 0)
	}
	else ArrayPushCell(g_zm_sp_allow_burn, value)

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW FROST", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ALLOW FROST", 0)
		ArrayPushCell(g_zm_sp_allow_frost, 0)
	}
	else ArrayPushCell(g_zm_sp_allow_frost, value)

	if(amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ENABLE", value)) {
		if(CheckAllowed(value)) ArrayPushCell(g_zm_sp_enable, 1)
		else ArrayPushCell(g_zm_sp_enable, 0)
	}
	else {
		ArrayPushCell(g_zm_sp_enable, 1)
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "ENABLE", 1)
	}

	if(!amx_load_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NAME BY LANG", value)) {
		amx_save_setting_int(ZP_SPECIAL_CLASSES_FILE, section, "NAME BY LANG", 0)
		ArrayPushCell(g_zm_sp_name_by_lang, 0)
	}
	else ArrayPushCell(g_zm_sp_name_by_lang, value)

	if(!amx_load_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "LANG KEY", szValue, charsmax(szValue))) {
		ArrayPushString(g_zm_sp_lang_key, "ITEM_LANG_DEFAULT_KEY")
		amx_save_setting_string(ZP_SPECIAL_CLASSES_FILE, section, "LANG KEY", "ITEM_LANG_DEFAULT_KEY")
	}
	else ArrayPushString(g_zm_sp_lang_key, szValue)

	// Save make acess in zp main configs
	formatex(sp_name, charsmax(sp_name), name)
	strtoupper(sp_name)
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", fmt("MAKE %s", sp_name), szValue, charsmax(szValue))) {
		get_flags(flags, szValue, charsmax(szValue));
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", fmt("MAKE %s", sp_name), szValue);
		ArrayPushCell(g_zm_sp_flags, flags);
	}
	else ArrayPushCell(g_zm_sp_flags, read_flags(szValue))

	ArrayPushCell(ZP_TEAM_INDEX, ArraySize(ZP_TEAM_NAMES))
	ArrayPushCell(iTeamIndexZm, ArraySize(ZP_TEAM_NAMES))
	ArrayPushString(ZP_TEAM_NAMES, sp_name)

	g_zm_specials_i++ // Increase registered special humans counter
	return (g_zm_specials_i-1); // Return id under which we registered the human special
}
public native_register_gamemode(plugin_id, num_params) { // Native: zp_register_game_mode/zpsp_register_gamemode
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static name[32]; get_string(1, name, charsmax(name))

	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register Game Mode with an empty name")
		return -1;
	}

	if(g_gamemodes_i > MAX_GAME_MODES) {
		static index, gm_name[32]
		for(index = MAX_GAME_MODES; index < g_gamemodes_i; index++) {
			ArrayGetString(g_gm_realname, index-MAX_GAME_MODES, gm_name, charsmax(gm_name))
			if(equali(name, gm_name)) {
				log_error(AMX_ERR_NATIVE, "[ZP] Game Mode already registered (%s)", gm_name)
				return -1;
			}
		}
	}

	static flags, chance, allow, dm_mode, resp_limit, enable_in_ze, uselang, langkey[32];
	flags = get_param(2)
	chance = get_param(3)
	allow = get_param(4)
	dm_mode = get_param(5)

	if(num_params > 5) {
		resp_limit = get_param(6)
		enable_in_ze = get_param(7)
	}
	else {
		resp_limit = 0
		enable_in_ze = 1
	}

	if(num_params > 7) {
		uselang = get_param(8)
		get_string(9, langkey, charsmax(langkey))
	}
	else {
		uselang = 0
		langkey = "ITEM_LANG_DEFAULT_KEY"
	}

	ArrayPushCell(g_gm_allow, allow) // Allow infection

	static section[32], value, szValue[32]
	copy(section, charsmax(section), name)
	ArrayPushString(g_gm_realname, section)

	// Replace Name
	if(!amx_load_setting_string(ZP_CUSTOM_GM_FILE, section, "GAMEMODE NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_CUSTOM_GM_FILE, section, "GAMEMODE NAME", name)
	ArrayPushString(g_gm_name, name)

	if(!amx_load_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE ENABLE", value)) {
		amx_save_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE ENABLE", 1)
		ArrayPushCell(g_gm_enable, 1)
	}
	else ArrayPushCell(g_gm_enable, value)

	if(!amx_load_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE ENABLE ON ESCAPE MAP", enable_in_ze))
		amx_save_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE ENABLE ON ESCAPE MAP", enable_in_ze)
	ArrayPushCell(g_gm_enable_on_ze_map, enable_in_ze)

	if(!amx_load_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE CHANCE", chance))
		amx_save_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE CHANCE", chance)
	ArrayPushCell(g_gm_chance, chance);

	if(!amx_load_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE RESPAWN MODE", dm_mode))
		amx_save_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE RESPAWN MODE", dm_mode)
	ArrayPushCell(g_gm_dm, dm_mode);

	if(!amx_load_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE RESPAWN LIMIT", resp_limit))
		amx_save_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE RESPAWN LIMIT", resp_limit)
	ArrayPushCell(g_gm_respawn_limit, resp_limit);

	if(!amx_load_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE NAME BY LANG", uselang))
		amx_save_setting_int(ZP_CUSTOM_GM_FILE, section, "GAMEMODE NAME BY LANG", uselang)
	ArrayPushCell(g_gm_name_by_lang, uselang)

	if(!amx_load_setting_string(ZP_CUSTOM_GM_FILE, section, "GAMEMODE LANG KEY", langkey, charsmax(langkey)))
		amx_save_setting_string(ZP_CUSTOM_GM_FILE, section, "GAMEMODE LANG KEY", langkey)
	ArrayPushString(g_gm_lang_key, langkey)

	strtoupper(section)

	// Save acess mode in zp main configs
	if(!amx_load_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", fmt("START MODE %s", section), szValue, charsmax(szValue))) {
		get_flags(flags, szValue, charsmax(szValue));
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Access Flags", fmt("START MODE %s", section), szValue);
		ArrayPushCell(g_gm_flag, flags);
	}
	else ArrayPushCell(g_gm_flag, read_flags(szValue))

	static Array:ArrSound, Array:ArrDuration, enable, i, szPrecache[64]
	ArrSound = ArrayCreate(64, 1)
	ArrDuration = ArrayCreate(1, 1)
	enable = 0
	ArrayPushCell(g_gm_amb_sound_handle, ArrSound)
	ArrayPushCell(g_gm_amb_duration_handle, ArrDuration)


	amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s ENABLE", section), enable)
	ArrayPushCell(g_gm_amb_enable, enable)

	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s SOUNDS", section), ArrSound)
	amx_load_setting_float_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s DURATIONS", section), ArrDuration)
	AddSettingParamForNoobs(ZP_CUSTOMIZATION_FILE, ArrSound, ArrDuration, "Ambience Sounds", fmt("%s DURATIONS", section), 0)

	if(ArraySize(ArrSound) > 0) {
		ArrayPushCell(g_gm_use_amb, true)
		if(enable > 0) {
			for(i = 0; i < ArraySize(ArrSound); i++) {
				ArrayGetString(ArrSound, i, szPrecache, charsmax(szPrecache))
				precache_ambience(szPrecache) // Precache Ambience Sound
			}
		}
	}
	else {
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s ENABLE", section), "-1")
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s SOUNDS", section), "")
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s DURATIONS", section), "")
		ArrayPushCell(g_gm_use_amb, false)
	}

	ArrSound = ArrayCreate(64, 1)
	ArrayPushCell(g_gm_rstart_snd_handler, ArrSound)
	amx_load_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", fmt("ROUND %s", section), ArrSound)

	if(ArraySize(ArrSound) > 0) {
		ArrayPushCell(g_gm_use_rstart_snd, true)
		for(i = 0; i < ArraySize(ArrSound); i++) {
			ArrayGetString(ArrSound, i, szPrecache, charsmax(szPrecache))
			precache_ambience(szPrecache) // Precache Ambience Sound
		}
	}
	else {
		amx_save_setting_string(ZP_CUSTOMIZATION_FILE, "Sounds", fmt("ROUND %s", section), "")
		ArrayPushCell(g_gm_use_rstart_snd, false)
	}

	g_gamemodes_i++ // Increase registered game modes counter
	return (g_gamemodes_i-1); // Return id under which we registered the game mode
}

// Native: zp_register_gamemode_ambience(gamemode, const sound[], Float:Duration, enable=1)
public native_register_gamemode_ambience(plugin_id, num_params)
{
	static gmid, sound[64], Float:Duration, enable;
	gmid = get_param(1);
	get_string(2, sound, charsmax(sound))
	Duration = get_param_f(3);

	if(gmid < MAX_GAME_MODES || gmid >= g_gamemodes_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid gamemode id (%d)", gmid)
		return false;
	}
	gmid -= MAX_GAME_MODES

	if(ArrayGetCell(g_gm_use_amb, gmid))
		return true;

	static upper_real_name[32], load
	ArrayGetString(g_gm_realname, gmid, upper_real_name, charsmax(upper_real_name))
	strtoupper(upper_real_name)

	load = amx_load_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s ENABLE", upper_real_name), enable)
	if(enable == -1 || !load) {
		enable = get_param(4);
		amx_save_setting_int(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s ENABLE", upper_real_name), enable)
	}

	ArraySetCell(g_gm_amb_enable, gmid, enable)

	if(enable)
		precache_ambience(sound)

	static Array:ArrSound, Array:ArrDuration
	ArrSound = ArrayGetCell(g_gm_amb_sound_handle, gmid)
	ArrDuration = ArrayGetCell(g_gm_amb_duration_handle, gmid)

	// No models registered yet?
	if(ArrSound == Invalid_Array) {
		ArrSound = ArrayCreate(64, 1)
		ArrDuration = ArrayCreate(1, 1)
		ArraySetCell(g_gm_amb_sound_handle, gmid, ArrSound)
		ArraySetCell(g_gm_amb_duration_handle, gmid, ArrDuration)
	}
	ArrayPushString(ArrSound, sound)
	ArrayPushCell(ArrDuration, Duration)

	amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s SOUNDS", upper_real_name), ArrSound)
	amx_save_setting_float_arr(ZP_CUSTOMIZATION_FILE, "Ambience Sounds", fmt("%s DURATIONS", upper_real_name), ArrDuration)

	return true;
}

// Native: zp_register_start_gamemode_snd(gamemode, const sound[])
public native_register_start_gamemode_snd(plugin_id, num_params)
{
	static gmid, sound[64];
	gmid = get_param(1);
	get_string(2, sound, charsmax(sound))

	if(gmid < MAX_GAME_MODES || gmid >= g_gamemodes_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid gamemode id (%d)", gmid)
		return false;
	}
	gmid -= MAX_GAME_MODES

	if(ArrayGetCell(g_gm_use_rstart_snd, gmid))
		return true;

	static upper_real_name[32]
	ArrayGetString(g_gm_realname, gmid, upper_real_name, charsmax(upper_real_name))
	strtoupper(upper_real_name)

	precache_ambience(sound)

	static Array:ArrSound
	ArrSound = ArrayGetCell(g_gm_rstart_snd_handler, gmid)

	// No models registered yet?
	if(ArrSound == Invalid_Array) {
		ArrSound = ArrayCreate(64, 1)
		ArraySetCell(g_gm_rstart_snd_handler, gmid, ArrSound)
	}
	ArrayPushString(ArrSound, sound)

	amx_save_setting_string_arr(ZP_CUSTOMIZATION_FILE, "Sounds", fmt("ROUND %s", upper_real_name), ArrSound)

	return true;
}

// Native: zp_zombie_class_textadd / zp_extra_item_textadd / zp_weapon_menu_textadd / zp_menu_textadd
public native_menu_textadd(plugin_id, num_params) {
	get_string(1, g_AdditionalMenuText, charsmax(g_AdditionalMenuText))
}
// Native: zp_add_hud_text(const text[])
public native_add_hud_text(plugin_id, num_params) {
	static text[500]; get_string(1, text, charsmax(text))
	strcat(g_AdditionalHudText, fmt(" %s", text), charsmax(g_AdditionalHudText))
}
// Native: zp_get_user_hud_type(id)
public native_get_user_hud_type(plugin_id, num_params) {
	static id; id = get_param(1);
	if(!is_user_valid_connected(id))
		return -1;

	return g_hud_type[id]
}

// Native: zp_register_extra_item
public native_register_extra_item(plugin_id, num_params) {
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static i, itemname[32], name[32], cost, team;
	get_string(1, name, charsmax(name))
	cost = get_param(2)
	team = get_param(3)

	if(team == ZP_TEAM_ANY) team = GetTeamIndex(TEAM_HUMAN)|GetTeamIndex(TEAM_ZOMBIE) // For backwards compatibility

	// For easy making extra for any classes
	else if(team == ZP_TEAM_ALL) for(i = 0; i < ArraySize(ZP_TEAM_NAMES); i++) team |= GetTeamIndex(i);
	else if(team == ZP_TEAM_ANY_SPECIAL) for(i = 2; i < ArraySize(ZP_TEAM_NAMES); i++) team |= GetTeamIndex(i);
	else if(team == ZP_TEAM_HUMAN_SPECIAL) for(i = 1; i < ArraySize(iTeamIndexHm); i++) team |= GetTeamIndex(ArrayGetCell(iTeamIndexHm, i));
	else if(team == ZP_TEAM_ZOMBIE_SPECIAL) for(i = 1; i < ArraySize(iTeamIndexZm); i++) team |= GetTeamIndex(ArrayGetCell(iTeamIndexZm, i));

	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register extra item with an empty name")
		return -1;
	}
	for(i = 0; i < g_extraitem_i; i++) {
		ArrayGetString(g_extraitem_realname, i, itemname, charsmax(itemname))
		if(equali(name, itemname)) {
			log_error(AMX_ERR_NATIVE, "[ZP] Extra Item already registered (%s)", itemname)
			return -1;
		}
	}
	static section[32]
	copy(section, charsmax(section), name)
	ArrayPushString(g_extraitem_realname, section)

	// Replace Name
	if(!amx_load_setting_string(ZP_EXTRAITEMS_FILE, section, "NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_EXTRAITEMS_FILE, section, "NAME", name)
	ArrayPushString(g_extraitem_name, name)

	// Replace Cost
	if(!amx_load_setting_int(ZP_EXTRAITEMS_FILE, section, "COST", cost))
		amx_save_setting_int(ZP_EXTRAITEMS_FILE, section, "COST", cost)
	ArrayPushCell(g_extraitem_cost, cost)

	static szTeam[32], Array:ArrTeam;
	ArrTeam = ArrayCreate(32, 1)
	if(amx_load_setting_string_arr(ZP_EXTRAITEMS_FILE, section, "TEAMS", ArrTeam)) {
		static t, szTeamList[32];
		team = 0
		for(t = 0; t < ArraySize(ZP_TEAM_NAMES); t++) {
			for(i = 0; i < ArraySize(ArrTeam); i++) {
				ArrayGetString(ArrTeam, i, szTeam, charsmax(szTeam))
				ArrayGetString(ZP_TEAM_NAMES, t, szTeamList, charsmax(szTeamList))

				if(equal(szTeam, szTeamList)) team |= GetTeamIndex(t);
			}
		}
	}
	else {
		for(i = 0; i < ArraySize(ZP_TEAM_NAMES); i++) {
			if(IsTeam(team, i)) {
				ArrayGetString(ZP_TEAM_NAMES, i, szTeam, charsmax(szTeam))
				ArrayPushString(ArrTeam, szTeam)
			}
		}
		amx_save_setting_string_arr(ZP_EXTRAITEMS_FILE, section, "TEAMS", ArrTeam) // Add Team

	}
	ArrayPushCell(g_extraitem_team, team)
	ArrayDestroy(ArrTeam)

	static value, szValue[64]
	if(!amx_load_setting_int(ZP_EXTRAITEMS_FILE, section, "NAME BY LANG", value)) {
		amx_save_setting_int(ZP_EXTRAITEMS_FILE, section, "NAME BY LANG", 0)
		ArrayPushCell(g_extraitem_name_by_lang, 0)
	}
	else ArrayPushCell(g_extraitem_name_by_lang, value)

	if(!amx_load_setting_string(ZP_EXTRAITEMS_FILE, section, "LANG KEY", szValue, charsmax(szValue))) {
		ArrayPushString(g_extraitem_lang_key, "ITEM_LANG_DEFAULT_KEY")
		amx_save_setting_string(ZP_EXTRAITEMS_FILE, section, "LANG KEY", "ITEM_LANG_DEFAULT_KEY")
	}
	else ArrayPushString(g_extraitem_lang_key, szValue)

	g_extraitem_i++ // Increase registered items counter
	return (g_extraitem_i-1); // Return id under which we registered the item
}
stock internal_register_extra_item(const name[], cost, team, name_by_lang, const szLangKey[]) { // Function: zp_register_extra_item (to be used within this plugin only)
	ArrayPushString(g_extraitem_realname, name)
	ArrayPushString(g_extraitem_name, name)
	ArrayPushCell(g_extraitem_cost, cost)
	ArrayPushCell(g_extraitem_team, team)
	ArrayPushCell(g_extraitem_name_by_lang, name_by_lang)
	ArrayPushString(g_extraitem_lang_key, szLangKey)
	g_extraitem_i++ // Increase registered items counter
}
public native_register_extra_item_sp(plugin_id, num_params) { // Native: zpsp_register_extra_item
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static i, itemname[32], name[32], cost, szTeam[300], uselang, langkey[32];
	get_string(1, name, charsmax(name))
	cost = get_param(2)
	get_string(3, szTeam, charsmax(szTeam))
	uselang = get_param(4)
	get_string(5, langkey, charsmax(langkey))

	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register extra item with an empty name")
		return -1;
	}
	for(i = 0; i < g_extraitem_i; i++) {
		ArrayGetString(g_extraitem_realname, i, itemname, charsmax(itemname))
		if(equali(name, itemname)) {
			log_error(AMX_ERR_NATIVE, "[ZP] Extra Item already registered (%s)", itemname)
			return -1;
		}
	}
	static section[32]
	copy(section, charsmax(section), name)
	ArrayPushString(g_extraitem_realname, section)

	// Replace Name
	if(!amx_load_setting_string(ZP_EXTRAITEMS_FILE, section, "NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_EXTRAITEMS_FILE, section, "NAME", name)
	ArrayPushString(g_extraitem_name, name)

	// Replace Cost
	if(!amx_load_setting_int(ZP_EXTRAITEMS_FILE, section, "COST", cost))
		amx_save_setting_int(ZP_EXTRAITEMS_FILE, section, "COST", cost)
	ArrayPushCell(g_extraitem_cost, cost)


	static key[64], value[512], team, szTeamList[64], t
	team = 0
	formatex(value, charsmax(value), szTeam)
	while(value[0] != 0 && strtok(value, key, charsmax(key), value, charsmax(value), ',')) {
		trim(key); trim(value) // Trim spaces
		for(t = 0; t < ArraySize(ZP_TEAM_NAMES); t++) {
			ArrayGetString(ZP_TEAM_NAMES, t, szTeamList, charsmax(szTeamList))
			if(equal(key, szTeamList)) team |= GetTeamIndex(t)
		}
	}

	static Array:ArrTeamTemp, szTeamLoad[32]
	ArrTeamTemp = ArrayCreate(32, 1)
	if(amx_load_setting_string_arr(ZP_EXTRAITEMS_FILE, section, "TEAMS", ArrTeamTemp)) {
		team = 0
		for(t = 0; t < ArraySize(ZP_TEAM_NAMES); t++) {
			for(i = 0; i < ArraySize(ArrTeamTemp); i++) {
				ArrayGetString(ArrTeamTemp, i, szTeamLoad, charsmax(szTeamLoad))
				ArrayGetString(ZP_TEAM_NAMES, t, szTeamList, charsmax(szTeamList))

				if(equal(szTeamLoad, szTeamList)) team |= GetTeamIndex(t);
			}
		}
	}
	else {
		for(i = 0; i < ArraySize(ZP_TEAM_NAMES); i++) {
			if(IsTeam(team, i)) {
				ArrayGetString(ZP_TEAM_NAMES, i, szTeamLoad, charsmax(szTeamLoad))
				ArrayPushString(ArrTeamTemp, szTeamLoad)
			}
		}
		amx_save_setting_string_arr(ZP_EXTRAITEMS_FILE, section, "TEAMS", ArrTeamTemp) // Add Team
	}
	ArrayPushCell(g_extraitem_team, team)
	ArrayDestroy(ArrTeamTemp)

	// Replace Cost
	if(!amx_load_setting_int(ZP_EXTRAITEMS_FILE, section, "NAME BY LANG", uselang))
		amx_save_setting_int(ZP_EXTRAITEMS_FILE, section, "NAME BY LANG", uselang)
	ArrayPushCell(g_extraitem_name_by_lang, uselang)

	// Replace Name
	if(!amx_load_setting_string(ZP_EXTRAITEMS_FILE, section, "LANG KEY", langkey, charsmax(langkey)))
		amx_save_setting_string(ZP_EXTRAITEMS_FILE, section, "LANG KEY", langkey)
	ArrayPushString(g_extraitem_lang_key, langkey)

	g_extraitem_i++ // Increase registered items counter
	return (g_extraitem_i-1); // Return id under which we registered the item
}
public native_register_human_class(plugin_id, num_params) {
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static name[32];
	get_string(1, name, charsmax(name))
	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register human class with an empty name")
		return -1;
	}

	static i, hclass_name[32];
	for(i = 0; i < g_hclass_i; i++) {
		ArrayGetString(g_hclass_real_name, i, hclass_name, charsmax(hclass_name))
		if(equali(name, hclass_name)) {
			log_error(AMX_ERR_NATIVE, "[ZP] Human class already registered (%s)", name)
			return -1;
		}
	}

	static info[32], hp, armor, speed, Float:gravity, use_lang, name_lang_key[32], info_lang_key[32];
	get_string(2, info, charsmax(info))
	hp = get_param(3)
	armor = get_param(4)
	speed = get_param(5)
	gravity = get_param_f(6)
	use_lang = get_param(7)
	get_string(8, name_lang_key, charsmax(name_lang_key))
	get_string(9, info_lang_key, charsmax(info_lang_key))

	static section[32]
	copy(section, charsmax(section), name)
	ArrayPushString(g_hclass_real_name, section)

	// Replace Name
	if(!amx_load_setting_string(ZP_HUMANCLASSES_FILE, section, "NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_HUMANCLASSES_FILE, section, "NAME", name)
	ArrayPushString(g_hclass_name, name)

	// Replace Info
	if(!amx_load_setting_string(ZP_HUMANCLASSES_FILE, section, "INFO", info, charsmax(info)))
		amx_save_setting_string(ZP_HUMANCLASSES_FILE, section, "INFO", info)
	ArrayPushString(g_hclass_info, info)

	// Replace Health
	if(!amx_load_setting_int(ZP_HUMANCLASSES_FILE, section, "HEALTH", hp))
		amx_save_setting_int(ZP_HUMANCLASSES_FILE, section, "HEALTH", hp)
	ArrayPushCell(g_hclass_hp, hp)

	// Replace Armor
	if(!amx_load_setting_int(ZP_HUMANCLASSES_FILE, section, "ARMOR", armor))
		amx_save_setting_int(ZP_HUMANCLASSES_FILE, section, "ARMOR", armor)
	ArrayPushCell(g_hclass_armor, armor)

	// Replace Speed
	if(!amx_load_setting_int(ZP_HUMANCLASSES_FILE, section, "SPEED", speed))
		amx_save_setting_int(ZP_HUMANCLASSES_FILE, section, "SPEED", speed)
	ArrayPushCell(g_hclass_speed, speed)

	// Replace Gravity
	if(!amx_load_setting_float(ZP_HUMANCLASSES_FILE, section, "GRAVITY", gravity))
		amx_save_setting_float(ZP_HUMANCLASSES_FILE, section, "GRAVITY", gravity)
	ArrayPushCell(g_hclass_gravity, gravity)

	static Array:ArrModelTemp, Array:ArrBodyTemp, Array:ArrSkinTemp;
	ArrModelTemp = ArrayCreate(64, 1)
	ArrBodyTemp = ArrayCreate(1, 1)
	ArrSkinTemp = ArrayCreate(1, 1)
	amx_load_setting_string_arr(ZP_HUMANCLASSES_FILE, section, "MODELS", ArrModelTemp)
	amx_load_setting_int_arr(ZP_HUMANCLASSES_FILE, section, "BODY", ArrBodyTemp)
	amx_load_setting_int_arr(ZP_HUMANCLASSES_FILE, section, "SKIN", ArrSkinTemp)
	AddSettingParamForNoobs(ZP_HUMANCLASSES_FILE, ArrModelTemp, ArrBodyTemp, section, "BODY", 0)
	AddSettingParamForNoobs(ZP_HUMANCLASSES_FILE, ArrModelTemp, ArrSkinTemp, section, "SKIN", 0)

	if(ArraySize(ArrModelTemp) > 0) {
		ArrayPushCell(g_hclass_mdl_file, true)
		// Precache player models
		static buffer[250];
		for (i = 0; i < ArraySize(ArrModelTemp); i++) {
			ArrayGetString(ArrModelTemp, i, buffer, charsmax(buffer))
			precache_player_model(buffer)
		}
	}
	else {
		ArrayPushCell(g_hclass_mdl_file, false)
		ArrayDestroy(ArrModelTemp)
		ArrayDestroy(ArrBodyTemp)
		ArrayDestroy(ArrSkinTemp)
		amx_save_setting_string(ZP_HUMANCLASSES_FILE, section, "MODELS", "")
		amx_save_setting_string(ZP_HUMANCLASSES_FILE, section, "BODY", "")
		amx_save_setting_string(ZP_HUMANCLASSES_FILE, section, "SKIN", "")
	}
	ArrayPushCell(g_hclass_mdl_handle, ArrModelTemp)
	ArrayPushCell(g_hclass_body_handle, ArrBodyTemp)
	ArrayPushCell(g_hclass_skin_handle, ArrSkinTemp)

	if(!amx_load_setting_int(ZP_HUMANCLASSES_FILE, section, "USE LANG", use_lang))
		amx_save_setting_int(ZP_HUMANCLASSES_FILE, section, "USE LANG", use_lang)
	ArrayPushCell(g_hclass_lang_enable, use_lang)

	if(!amx_load_setting_string(ZP_HUMANCLASSES_FILE, section, "NAME LANG KEY", name_lang_key, charsmax(name_lang_key)))
		amx_save_setting_string(ZP_HUMANCLASSES_FILE, section, "NAME LANG KEY", name_lang_key)
	ArrayPushString(g_hclass_name_lang_key, name_lang_key)

	if(!amx_load_setting_string(ZP_HUMANCLASSES_FILE, section, "INFO LANG KEY", info_lang_key, charsmax(info_lang_key)))
		amx_save_setting_string(ZP_HUMANCLASSES_FILE, section, "INFO LANG KEY", info_lang_key)
	ArrayPushString(g_hclass_info_lang_key, info_lang_key)

	g_hclass_i++ // Increase registered classes counter
	return (g_hclass_i-1); // Return id under which we registered the class

}

// Native: zp_register_hclass_model(classid, player_model[], body=0, skin=0)
public native_register_hclass_model(plugin_id, num_params)
{
	static classid, player_model[32], body, skin;
	classid = get_param(1);
	get_string(2, player_model, charsmax(player_model))
	body = get_param(3);
	skin = get_param(4);

	if(classid < 0 || classid >= g_hclass_i)
	{
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid human class id (%d)", classid)
		return false;
	}

	// Player models already loaded from file
	if(ArrayGetCell(g_hclass_mdl_file, classid))
		return true;

	precache_player_model(player_model)
	static Array:ArrModelTemp, Array:ArrBodyTemp, Array:ArrSkinTemp
	ArrModelTemp = ArrayGetCell(g_hclass_mdl_handle, classid)
	ArrBodyTemp = ArrayGetCell(g_hclass_body_handle, classid)
	ArrSkinTemp = ArrayGetCell(g_hclass_skin_handle, classid)

	// No models registered yet?
	if(ArrModelTemp == Invalid_Array) {
		ArrModelTemp = ArrayCreate(32, 1)
		ArrBodyTemp = ArrayCreate(1, 1)
		ArrSkinTemp = ArrayCreate(1, 1)
		ArraySetCell(g_hclass_mdl_handle, classid, ArrModelTemp)
		ArraySetCell(g_hclass_body_handle, classid, ArrBodyTemp)
		ArraySetCell(g_hclass_skin_handle, classid, ArrSkinTemp)
	}
	ArrayPushString(ArrModelTemp, player_model)
	ArrayPushCell(ArrBodyTemp, body)
	ArrayPushCell(ArrSkinTemp, skin)

	// Save models to file
	static real_name[32]
	ArrayGetString(g_hclass_real_name, classid, real_name, charsmax(real_name))
	amx_save_setting_string_arr(ZP_HUMANCLASSES_FILE, real_name, "MODELS", ArrModelTemp)
	amx_save_setting_int_arr(ZP_HUMANCLASSES_FILE, real_name, "BODY", ArrBodyTemp)
	amx_save_setting_int_arr(ZP_HUMANCLASSES_FILE, real_name, "SKIN", ArrSkinTemp)
	return true;
}

// Native: zp_register_zombie_class
public native_register_zombie_class(plugin_id, num_params) {
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static name[32];
	get_string(1, name, charsmax(name))
	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register zombie class with an empty name")
		return -1;
	}

	static i, zombieclass_name[32];
	for(i = 0; i < g_zclass_i; i++) {
		ArrayGetString(g_zclass_real_name, i, zombieclass_name, charsmax(zombieclass_name))
		if(equali(name, zombieclass_name)) {
			log_error(AMX_ERR_NATIVE, "[ZP] Zombie class already registered (%s)", name)
			return -1;
		}
	}

	static info[32], model[32], clawmodel[64], hp, speed, Float:gravity, Float:knockback;
	get_string(2, info, charsmax(info))
	get_string(3, model, charsmax(model))
	get_string(4, clawmodel, charsmax(clawmodel))
	hp = get_param(5)
	speed = get_param(6)
	gravity = get_param_f(7)
	knockback = get_param_f(8)

	static section[32], szPrecache[64]
	copy(section, charsmax(section), name)
	ArrayPushString(g_zclass_real_name, section)

	// Load/Save Name
	if(!amx_load_setting_string(ZP_ZOMBIECLASSES_FILE, section, "NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "NAME", name)
	ArrayPushString(g_zclass_name, name)

	// Load/Save Info
	if(!amx_load_setting_string(ZP_ZOMBIECLASSES_FILE, section, "INFO", info, charsmax(info)))
		amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "INFO", info)
	ArrayPushString(g_zclass_info, info)

	// Load/Save Models
	if(!g_same_models_for_all) {
		static Array:ArrModelTemp, Array:ArrBodyTemp, Array:ArrSkinTemp;
		ArrModelTemp = ArrayCreate(32, 1)
		ArrBodyTemp = ArrayCreate(1, 1)
		ArrSkinTemp = ArrayCreate(1, 1)
		amx_load_setting_string_arr(ZP_ZOMBIECLASSES_FILE, section, "MODELS", ArrModelTemp)
		amx_load_setting_int_arr(ZP_ZOMBIECLASSES_FILE, section, "BODY", ArrBodyTemp)
		amx_load_setting_int_arr(ZP_ZOMBIECLASSES_FILE, section, "SKIN", ArrSkinTemp)
		AddSettingParamForNoobs(ZP_ZOMBIECLASSES_FILE, ArrModelTemp, ArrBodyTemp, section, "BODY", 0)
		AddSettingParamForNoobs(ZP_ZOMBIECLASSES_FILE, ArrModelTemp, ArrSkinTemp, section, "SKIN", 0)
		if(ArraySize(ArrModelTemp) > 0) {
			// Precache player models
			for (i = 0; i < ArraySize(ArrModelTemp); i++) {
				ArrayGetString(ArrModelTemp, i, szPrecache, charsmax(szPrecache))
				precache_player_model(szPrecache)
			}
		}
		else {
			ArrayPushString(ArrModelTemp, model)
			ArrayPushCell(ArrBodyTemp, 0)
			ArrayPushCell(ArrSkinTemp, 0)
			amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "MODELS", model)
			amx_save_setting_int(ZP_ZOMBIECLASSES_FILE, section, "BODY", 0)
			amx_save_setting_int(ZP_ZOMBIECLASSES_FILE, section, "SKIN", 0)
			precache_player_model(model)
		}
		ArrayPushCell(g_zclass_mdl_handle, ArrModelTemp)
		ArrayPushCell(g_zclass_body_handle, ArrBodyTemp)
		ArrayPushCell(g_zclass_skin_handle, ArrSkinTemp)
	}

	// Load/Save Clawmodel
	if(!amx_load_setting_string(ZP_ZOMBIECLASSES_FILE, section, "CLAWMODEL", clawmodel, charsmax(clawmodel)))
		amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "CLAWMODEL", clawmodel)
	ArrayPushString(g_zclass_clawmodel, clawmodel)

	engfunc(EngFunc_PrecacheModel, fmt("models/zombie_plague/%s", clawmodel)) // Precache clawmodel

	// Load/Save Pain Sounds //
	static Array:ArrPainSnd
	ArrPainSnd = ArrayCreate(64, 1)
	ArrayPushCell(g_zclass_painsnd_handle, ArrPainSnd)
	amx_load_setting_string_arr(ZP_ZOMBIECLASSES_FILE, section, "PAIN SOUND", ArrPainSnd)
	if(ArraySize(ArrPainSnd) > 0) {
		ArrayPushCell(g_zclass_use_painsnd, true)
		for(i = 0; i < ArraySize(ArrPainSnd); i++) {
			ArrayGetString(ArrPainSnd, i, szPrecache, charsmax(szPrecache))
			engfunc(EngFunc_PrecacheSound, szPrecache) // Precache Pain Sound
		}
	}
	else {
		amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "PAIN SOUND", "")
		ArrayPushCell(g_zclass_use_painsnd, false)
	}

	// Load/Save Death Sounds //
	static Array:ArrDeathSnd
	ArrDeathSnd = ArrayCreate(64, 1)
	ArrayPushCell(g_zclass_deathsnd_handle, ArrDeathSnd)
	amx_load_setting_string_arr(ZP_ZOMBIECLASSES_FILE, section, "DEATH SOUND", ArrDeathSnd)
	if(ArraySize(ArrDeathSnd) > 0) {
		ArrayPushCell(g_zclass_use_deathsnd, true)
		for(i = 0; i < ArraySize(ArrDeathSnd); i++) {
			ArrayGetString(ArrDeathSnd, i, szPrecache, charsmax(szPrecache))
			engfunc(EngFunc_PrecacheSound, szPrecache) // Precache Pain Sound
		}
	}
	else {
		amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "DEATH SOUND", "")
		ArrayPushCell(g_zclass_use_deathsnd, false)
	}
	//--------------------------------------------------------------

	// Load/Save Health
	if(!amx_load_setting_int(ZP_ZOMBIECLASSES_FILE, section, "HEALTH", hp))
		amx_save_setting_int(ZP_ZOMBIECLASSES_FILE, section, "HEALTH", hp)
	ArrayPushCell(g_zclass_hp, hp)

	// Load/Save Speed
	if(!amx_load_setting_int(ZP_ZOMBIECLASSES_FILE, section, "SPEED", speed))
		amx_save_setting_int(ZP_ZOMBIECLASSES_FILE, section, "SPEED", speed)
	ArrayPushCell(g_zclass_spd, speed)

	// Load/Save Gravity
	if(!amx_load_setting_float(ZP_ZOMBIECLASSES_FILE, section, "GRAVITY", gravity))
		amx_save_setting_float(ZP_ZOMBIECLASSES_FILE, section, "GRAVITY", gravity)
	ArrayPushCell(g_zclass_grav, gravity)

	// Load/Save Knockback
	if(!amx_load_setting_float(ZP_ZOMBIECLASSES_FILE, section, "KNOCKBACK", knockback))
		amx_save_setting_float(ZP_ZOMBIECLASSES_FILE, section, "KNOCKBACK", knockback)
	ArrayPushCell(g_zclass_kb, knockback)

	static value, szValue[64]
	if(!amx_load_setting_int(ZP_ZOMBIECLASSES_FILE, section, "ENABLE LANG", value)) {
		amx_save_setting_int(ZP_ZOMBIECLASSES_FILE, section, "ENABLE LANG", 0)
		ArrayPushCell(g_zclass_lang_enable, 0)
	}
	else ArrayPushCell(g_zclass_lang_enable, value)

	if(!amx_load_setting_string(ZP_ZOMBIECLASSES_FILE, section, "CLASS NAME LANG KEY", szValue, charsmax(szValue))) {
		ArrayPushString(g_zclass_name_lang_key, "ITEM_LANG_DEFAULT_KEY")
		amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "CLASS NAME LANG KEY", "ITEM_LANG_DEFAULT_KEY")
	}
	else ArrayPushString(g_zclass_name_lang_key, szValue)

	if(!amx_load_setting_string(ZP_ZOMBIECLASSES_FILE, section, "CLASS INFO LANG KEY", szValue, charsmax(szValue))) {
		ArrayPushString(g_zclass_info_lang_key, "ITEM_LANG_DEFAULT_KEY")
		amx_save_setting_string(ZP_ZOMBIECLASSES_FILE, section, "CLASS INFO LANG KEY", "ITEM_LANG_DEFAULT_KEY")
	}
	else ArrayPushString(g_zclass_info_lang_key, szValue)

	g_zclass_i++ // Increase registered classes counter
	return (g_zclass_i-1); // Return id under which we registered the class
}

// Native: zp_register_zclass_painsnd(classid, const sound[])
public native_register_zclass_painsnd(plugin_id, num_params) {
	static classid, sound[64];
	classid = get_param(1);
	get_string(2, sound, charsmax(sound))
	return register_zclass_sounds(0, classid, "PAIN SOUND", g_zclass_real_name, g_zclass_use_painsnd, g_zclass_painsnd_handle, sound)
}

// Native: zp_register_zclass_deathsnd(classid, const sound[])
public native_register_zclass_deathsnd(plugin_id, num_params) {
	static classid, sound[64];
	classid = get_param(1);
	get_string(2, sound, charsmax(sound))
	return register_zclass_sounds(0, classid, "DEATH SOUND", g_zclass_real_name, g_zclass_use_deathsnd, g_zclass_deathsnd_handle, sound)
}

// Native: zp_register_zmspecial_deathsnd(classid, const sound[])
public native_register_zmspecial_deathsnd(plugin_id, num_params) {
	static classid, sound[64];
	classid = get_param(1);
	if(classid < MAX_SPECIALS_ZOMBIES || classid >= g_zm_specials_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid Custom Special class id (%d)", classid)
		return false;
	}

	get_string(2, sound, charsmax(sound))
	return register_zclass_sounds(1, classid-1, "DEATH SOUND", g_zm_sp_realname, g_zm_sp_use_deathsnd, g_zm_sp_deathsnd_handle, sound)
}

public register_zclass_sounds(is_sp, classid, key[], Array:realname, Array:enable_array, Array:handle_array, sound[]) {
	if(!is_sp) {
		if(classid < 0 || classid >= g_zclass_i) {
			log_error(AMX_ERR_NATIVE, "[ZP] Invalid zombie class id (%d)", classid)
			return false;
		}
	}

	// Sound alterady enable
	if(ArrayGetCell(enable_array, classid))
		return true;

	engfunc(EngFunc_PrecacheSound, sound);

	static Array:ArrSoundTemp
	ArrSoundTemp = ArrayGetCell(handle_array, classid)

	// No sounds registered
	if(ArrSoundTemp == Invalid_Array) {
		ArrSoundTemp = ArrayCreate(64, 1)
		ArraySetCell(handle_array, classid, ArrSoundTemp)
	}
	ArrayPushString(ArrSoundTemp, sound)

	// Save models to file
	static real_name[32]
	if(!is_sp) {
		ArrayGetString(realname, classid, real_name, charsmax(real_name))
		amx_save_setting_string_arr(ZP_ZOMBIECLASSES_FILE, real_name, key, ArrSoundTemp)
	}
	else {
		ArrayGetString(realname, classid-MAX_SPECIALS_ZOMBIES+1, real_name, charsmax(real_name))
		amx_save_setting_string_arr(ZP_SPECIAL_CLASSES_FILE, fmt("Z:%s", real_name), key, ArrSoundTemp)
	}

	return true;
}

public native_get_extra_item_id(plugin_id, num_params) { // Native: zp_get_extra_item_id
	static name[32];
	get_string(1, name, charsmax(name))

	// Loop through every item
	static i, item_name[32], itemid
	itemid = -1
	for(i = 0; i < g_extraitem_i; i++) {
		ArrayGetString(g_extraitem_realname, i, item_name, charsmax(item_name))
		if(equali(name, item_name)) { // Check if this is the item to retrieve
			itemid = i
			break;
		}
	}
	return itemid;
}
public native_get_zombie_class_id(plugin_id, num_params) { // Native: zp_get_zombie_class_id
	static name[32];
	get_string(1, name, charsmax(name))

	// Loop through every class
	static i, class_name[32], classid
	classid = -1
	for(i = 0; i < g_zclass_i; i++) {
		ArrayGetString(g_zclass_real_name, i, class_name, charsmax(class_name))
		if(equali(name, class_name)) { // Check if this is the class to retrieve
			classid = i;
			break;
		}
	}
	return classid;
}
public native_get_human_class_id(plugin_id, num_params) { // Native: zp_get_human_class_id
	static name[32];
	get_string(1, name, charsmax(name))

	// Loop through every class
	static i, class_name[32], classid
	classid = -1
	for(i = 0; i < g_hclass_i; i++) {
		ArrayGetString(g_hclass_real_name, i, class_name, charsmax(class_name))
		if(equali(name, class_name)) { // Check if this is the class to retrieve
			classid = i;
			break;
		}
	}
	return classid;
}
public native_get_special_class_id(plugin_id, num_params) { // Native: zp_get_special_class_id
	static is_zombie, name[32], i, class_name[32];
	is_zombie = get_param(1);
	get_string(2, name, charsmax(name));
	strtolower(name)

	if(is_zombie) {
		if(equali(name, "nemesis")) return NEMESIS;
		else if(equali(name, "assassin")) return ASSASSIN;
		else if(equali(name, "predator")) return PREDATOR;
		else if(equali(name, "bombardier")) return BOMBARDIER;
		else if(equali(name, "dragon")) return DRAGON;

		for(i = MAX_SPECIALS_ZOMBIES; i < g_zm_specials_i; i++) {
			ArrayGetString(g_zm_sp_realname, i-MAX_SPECIALS_ZOMBIES, class_name, charsmax(class_name))
			strtolower(class_name)
			if(equali(name, class_name)) return i; // Check if this is the item to retrieve
		}
	}

	else {
		if(equali(name, "survivor")) return SURVIVOR;
		else if(equali(name, "sniper")) return SNIPER;
		else if(equali(name, "berserker")) return BERSERKER;
		else if(equali(name, "wesker")) return WESKER;
		else if(equali(name, "spy")) return SPY;

		for(i = MAX_SPECIALS_HUMANS; i < g_hm_specials_i; i++) {
			ArrayGetString(g_hm_sp_realname, i-MAX_SPECIALS_HUMANS, class_name, charsmax(class_name))
			strtolower(class_name)
			if(equali(name, class_name)) return i; // Check if this is the item to retrieve
		}
	}
	return -1;
}
public native_set_custom_game_mod(plugin_id, num_params) { // Native: zp_set_custom_game_mod
	static gameid;
	gameid = get_param(1)
	if(gameid < MAX_GAME_MODES || gameid >= g_gamemodes_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid game mod id (%d)", gameid)
		return -1;
	}
	if(!g_endround && g_newround && !task_exists(TASK_WELCOMEMSG)) { // Fix Bug on Custom Special Classes Game modes not start when have one people on server
		command_custom_game(gameid, 0)
		return 1;
	}
	return 0
}
public native_start_game_mode(plugin_id, num_params) { // Native: zp_start_game_mode
	return start_game_mode(get_param(1), get_param(2))
}
public start_game_mode(gameid, force_start) {
	if(gameid < 0 || gameid >= g_gamemodes_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid game mod id (%d)", gameid)
		return -1;
	}

	static started; started = 0
	if(!g_endround && (g_newround || force_start) && !task_exists(TASK_WELCOMEMSG)) {
		switch (gameid) {
			case MODE_INFECTION: started = start_infection_mode(0, MODE_SET)
			case MODE_NEMESIS: started = start_nemesis_mode(0, MODE_SET)
			case MODE_ASSASSIN: started = start_assassin_mode(0, MODE_SET)
			case MODE_PREDATOR: started = start_predator_mode(0, MODE_SET)
			case MODE_BOMBARDIER: started = start_bombardier_mode(0, MODE_SET)
			case MODE_DRAGON: started = start_dragon_mode(0, MODE_SET)
			case MODE_SURVIVOR: started = start_survivor_mode(0, MODE_SET)
			case MODE_SNIPER: started = start_sniper_mode(0, MODE_SET)
			case MODE_BERSERKER: started = start_berserker_mode(0, MODE_SET)
			case MODE_WESKER: started = start_wesker_mode(0, MODE_SET)
			case MODE_SPY: started = start_spy_mode(0, MODE_SET)
			case MODE_SWARM: started = start_swarm_mode(0, MODE_SET)
			case MODE_MULTI: started = start_multi_mode(0, MODE_SET)
			case MODE_PLAGUE: started = start_plague_mode(0, MODE_SET)
			case MODE_LNJ: started = start_lnj_mode(0, MODE_SET)
			default: {
				command_custom_game(gameid, 0)
				started = 1;
			}
		}
		if(started) remove_task(TASK_MAKEZOMBIE)
	}
	return started
}
public native_set_next_game_mode(plugin_id, num_params) { // Native: zp_set_next_game_mode
	static gameid; gameid = get_param(1);
	if(gameid < 0 || gameid >= g_gamemodes_i) {
		log_error(AMX_ERR_NATIVE, "[ZP] Invalid game mod id (%d)", gameid)
		return -1;
	}
	g_nextmode = gameid
	return 1
}
public native_reset_player_model(plugin_id, num_params) { // Native: zp_reset_player_model
	static id; id = get_param(1);
	if(!is_user_valid_alive(id)) return false;

	return reset_player_models(id)
}
public native_get_extra_item_count(plugin_id, num_params) return g_extraitem_i; // Native: zp_get_extra_item_count
public native_get_zclass_count(plugin_id, num_params) return g_zclass_i; // Native: zp_get_zclass_count
public native_get_hclass_count(plugin_id, num_params) return g_hclass_i; // Native: zp_get_hclass_count
public native_get_gamemodes_count(plugin_id, num_params) return (g_gamemodes_i - MAX_GAME_MODES); // Native: zp_get_gamemodes_count
public native_get_custom_special_count(plugin_id, num_params) {
	static zm; zm = get_param(1);
	return zm ? (g_zm_specials_i - MAX_SPECIALS_ZOMBIES) : (g_hm_specials_i - MAX_SPECIALS_HUMANS); // Native: zp_get_custom_special_count
}
public native_is_escape_map(plugin_id, num_params) return g_escape_map; // Native: zp_is_escape_map
public native_get_custom_extra_start(plugin_id, num_params) return EXTRAS_CUSTOM_STARTID;

public native_do_random_spawn(plugin_id, num_params) { // Native: zp_do_random_spawn
	static id; id = get_param(1);
	if(!is_user_valid_alive(id)) return 0
	if(get_pcvar_num(cvar_randspawn)) do_random_spawn(id) // random spawn (including CSDM)
	else do_random_spawn(id, 1) // regular spawn

	return 1
}
public native_reload_csdm_respawn(plugin_id, num_params) { // Native: zp_reload_csdm_respawn
	g_spawnCount = 0
	g_spawnCount2 = 0
	load_spawns()
	return 1
}
public native_set_lighting(plugin_id, num_params) { // Native: zp_set_lighting
	get_string(1, custom_lighting, charsmax(custom_lighting))
	g_custom_light = true
	lighting_effects()
	return 1
}
public native_reset_lighting(plugin_id, num_params) { // Native: zp_reset_lighting
	custom_lighting[0] = 0
	g_custom_light = false
	lighting_effects()
	return 1
}

public native_is_user_stuck(plugin_id, num_params) { // Native: zp_is_user_stuck
	static id; id = get_param(1);
	return is_player_stuck(id);
}


// Native: zp_get_user_unlimited_ammo
public native_get_user_unlimited_ammo(plugin_id, num_params)
{
	static id;
	id = get_param(1)

	if(!is_user_valid(id))
		return -1;

	if(!g_isalive[id] || g_zombie[id])
		return 0;

	return g_infammo[id];
}

// Native: zp_set_user_unlimited_ammo
public native_set_user_unlimited_ammo(plugin_id, num_params)
{
	static id, set;
	id = get_param(1)
	set = get_param(2)

	if(!is_user_valid(id))
		return -1;

	if(!g_isalive[id] || g_zombie[id])
		return 0;

	g_infammo[id] = set

	return 1;
}


// Native: zp_reset_user_unlimited_ammo
public native_reset_user_unlimited_ammo(plugin_id, num_params)
{
	static id;
	id = get_param(1)

	if(!is_user_valid(id))
		return -1;

	if(!g_isalive[id] || g_zombie[id])
		return 0;

	if(isCustomSpecialHuman(id))
		ArrayGetCell(g_hm_sp_cliptype, g_hm_special[id]-MAX_SPECIALS_HUMANS)
	else if(g_hm_special[id] == BERSERKER)
		g_infammo[id] = 0
	else
		g_infammo[id] = get_pcvar_num(cvar_hm_infammo[g_hm_special[id]])

	return 1;
}

// Native: zp_get_default_unlimited_ammo
public native_get_default_unlimited_ammo(plugin_id, num_params)
{
	static id;
	id = get_param(1)

	if(!is_user_valid(id))
		return -1;

	if(!g_isalive[id] || g_zombie[id] || g_hm_special[id] == BERSERKER)
		return 0;

	if(isCustomSpecialHuman(id))
		return ArrayGetCell(g_hm_sp_cliptype, g_hm_special[id]-MAX_SPECIALS_HUMANS)

	return get_pcvar_num(cvar_hm_infammo[g_hm_special[id]])

}

// Native: zp_get_user_knockback
public Float:native_get_user_knockback(plugin_id, num_params)
{
	static id;
	id = get_param(1)

	if(!is_user_valid(id))
		return -1.0;

	if(!g_isalive[id] || !g_zombie[id])
		return 0.0;

	return g_zombie_knockback[id];
}

// Native: zp_set_user_knockback
public native_set_user_knockback(plugin_id, num_params)
{
	static id, Float:amount;
	id = get_param(1)
	amount = get_param_f(2)

	if(!is_user_valid(id))
		return -1;

	if(!g_isalive[id])
		return 0;

	g_zombie_knockback[id] = amount;

	return 1;
}

// Native: zp_reset_user_knockback
public native_reset_user_knockback(plugin_id, num_params)
{
	static id;
	id = get_param(1)

	if(!is_user_valid(id))
		return -1;

	if(!g_isalive[id] || !g_zombie[id])
		return 0;

	if(isCustomSpecialZombie(id))
		g_zombie_knockback[id] = Float:ArrayGetCell(g_zm_sp_knockback, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)
	else if(isDefaultSpecialZombie(id))
		g_zombie_knockback[id] = get_pcvar_float(cvar_zmsp_knockback[g_zm_special[id]])
	else
		g_zombie_knockback[id] = Float:ArrayGetCell(g_zclass_kb, g_zombieclass[id])

	return 1;
}

// Native: zp_get_default_knockback
public Float:native_get_default_knockback(plugin_id, num_params)
{
	static id;
	id = get_param(1)

	if(!is_user_valid_alive(id))
		return 0.0;

	if(!g_zombie[id])
		return 0.0;

	if(isCustomSpecialZombie(id))
		return Float:ArrayGetCell(g_zm_sp_knockback, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)

	else if(isDefaultSpecialZombie(id))
		return get_pcvar_float(cvar_zmsp_knockback[g_zm_special[id]])

	return Float:ArrayGetCell(g_zclass_kb, g_zombieclass[id])
}

// Native: zp_get_user_default_maxspeed
public Float:native_get_user_default_maxspeed(plugin_id, num_params) {
	static id;
	id = get_param(1)

	if(!is_user_valid(id))
		return -1.0;

	if(!g_isalive[id])
		return 0.0;

	// if(isCustomSpecialZombie(id) || isCustomSpecialHuman(id) || isDefaultZombie(id))
	// 	return g_spd[id];

	if(isDefaultSpecialZombie(id))
		return get_pcvar_float(cvar_zm_spd[g_zm_special[id]]);

	if(isDefaultSpecialHuman(id)) {
		return get_pcvar_float(cvar_hm_spd[g_hm_special[id]]);
	}

	if(isDefaultHuman(id)) {
		static cvarWeight
		cvarWeight = get_pcvar_num(cvar_hm_allow_weight_spd)

		if(!g_hclass_i) // No hclass instaled
			g_spd[id] = get_pcvar_float(cvar_hm_spd[0])

		if(CheckAllowed(cvarWeight))
			return (g_spd[id] * weapon_spd_multi[g_currentweapon[id]]);
		else
			return (g_spd[id]);
	}

	return g_spd[id];
}

public native_register_weapon(plugin_id, num_params) { // Native: zp_register_weapon/zpsp_register_weapon
	if(!g_arrays_created) return -1; // Arrays not yet initialized

	static name[32], secondary, uselang, langkey[32]
	get_string(1, name, charsmax(name))
	secondary = get_param(2)

	if(num_params > 2) {
		uselang = 0;
		langkey = "ITEM_LANG_DEFAULT_KEY";
	}

	// Small Bug Prevention
	if(secondary > 1) secondary = 1
	if(secondary < 0) secondary = 0

	if(strlen(name) < 1) {
		log_error(AMX_ERR_NATIVE, "[ZP] Can't register weapon with an empty name")
		return -1;
	}

	static index, wpn_name[32]
	for(index = 0; index < g_wpn_i[secondary]; index++) {
		ArrayGetString(g_wpn_realname[secondary], index, wpn_name, charsmax(wpn_name))
		if(equali(name, wpn_name) && ArrayGetCell(g_wpn_is_custom[secondary], index)) {
			log_error(AMX_ERR_NATIVE, "[ZP] Custom Weapon already registered (%s)", name)
			return -1;
		}
	}

	static section[64]
	formatex(section, charsmax(section), "%s:%s", secondary ? "Sec" : "Pri", name)
	ArrayPushString(g_wpn_realname[secondary], name)

	if(!amx_load_setting_string(ZP_WEAPONS_FILE, section, "NAME", name, charsmax(name)))
		amx_save_setting_string(ZP_WEAPONS_FILE, section, "NAME", name)
	ArrayPushString(g_wpn_name[secondary], name)

	if(!amx_load_setting_int(ZP_WEAPONS_FILE, section, "NAME BY LANG", uselang))
		amx_save_setting_int(ZP_WEAPONS_FILE, section, "NAME BY LANG", uselang)
	ArrayPushCell(g_wpn_name_by_lang[secondary], uselang)

	if(!amx_load_setting_string(ZP_WEAPONS_FILE, section, "LANG KEY", langkey, charsmax(langkey)))
		amx_save_setting_string(ZP_WEAPONS_FILE, section, "LANG KEY", langkey)
	ArrayPushString(g_wpn_lang_key[secondary], name)

	ArrayPushCell(g_wpn_is_custom[secondary], 1)
	ArrayPushCell(secondary ? g_wpn_ids[1] : g_wpn_ids[0], 0) // Small Bug Prevention

	g_wpn_i[secondary]++ // Increase registered items counter
	return (g_wpn_i[secondary]-1); // Return id under which we registered the item
}
public native_get_random_player(plugin_id, num_params) { // Native: zp_get_random_player(const team = 0)
	static team, iPlayersnum;
	team = get_param(1)
	iPlayersnum = fnGetAlive()
	if(team) return fnGetRandomAliveByTeam(team);
	return fnGetRandomAlive(random_num(1, iPlayersnum))
}
public native_set_fw_param_string(plugin_id, num_params) { // Native: zp_set_param_string(string[])
	get_string(1, g_ForwardParameter, charsmax(g_ForwardParameter))
	return 1;
}
public native_set_fw_param_int(plugin_id, num_params) { // Native: zp_set_fw_param_int(int_id, value)
	static int_id; int_id = get_param(1);
	g_FW_intParam[int_id] = get_param(2);
	return 1;
}

public native_is_special_class_enable(plugin_id, num_params) { // Native: zp_is_special_class_enable(is_zm, classid)
	static is_zm, classid;
	is_zm = get_param(1);
	classid = get_param(2);

	if(classid <= 0) return 0

	if(is_zm) {
		if(classid < MAX_SPECIALS_ZOMBIES) return zm_special_enable[classid];
		if((classid-MAX_SPECIALS_ZOMBIES) >= ArraySize(g_zm_sp_enable)) return 0;
		if(ArrayGetCell(g_zm_sp_enable, (classid - MAX_SPECIALS_ZOMBIES)) == 0) return 0;
	}
	else {
		if(classid < MAX_SPECIALS_HUMANS) return hm_special_enable[classid];
		if((classid-MAX_SPECIALS_HUMANS) >= ArraySize(g_hm_sp_enable)) return 0;
		if(ArrayGetCell(g_hm_sp_enable, (classid - MAX_SPECIALS_HUMANS)) == 0) return 0;
	}
	return 1;
}
public native_is_gamemode_enable(plugin_id, num_params) {
	return is_gamemode_enable(get_param(1)); // Native: zp_is_gamemode_enable(modeid)
}

public native_drop_weapons(plugin_id, num_params) drop_weapons(get_param(1), get_param(2)+1);

public native_give_item(plugin_id, num_params) {
	static id, item[32], ammo;
	id = get_param(1);
	get_string(2, item, charsmax(item))
	ammo = get_param(3);

	if(!is_user_valid(id))
		return -1;

	fm_give_item(id, item)

	// Give full ammo
	if (ammo) {
		static weaponid
		weaponid = cs_weapon_name_to_id(item)
		ExecuteHamB(Ham_GiveAmmo, id, MAXBPAMMO[weaponid], AMMOTYPE[weaponid], MAXBPAMMO[weaponid])
	}

	return 1;
}

public native_strip_user_weapons(plugin_id, num_params) return fm_strip_user_weapons(get_param(1));

/*================================================================================
 [Custom Messages]
=================================================================================*/
public set_user_nvision(taskid) { // Custom Night Vision
	if(!is_user_valid_connected(ID_NVISION)) {
		remove_task(taskid)
		return;
	}

	static origin[3]; get_user_origin(ID_NVISION, origin) // Get player's origin

	// Nightvision message
	message_begin(MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, _, ID_NVISION)
	write_byte(TE_DLIGHT) // TE id
	write_coord(origin[0]) // x
	write_coord(origin[1]) // y
	write_coord(origin[2]) // z
	write_byte(get_pcvar_num(cvar_nvgsize)) // radius

	// Special Class / Madness / Spectator in a special round
	if(isCustomSpecialZombie(ID_NVISION)) {
		write_byte(ArrayGetCell(g_zm_sp_r, g_zm_special[ID_NVISION]-MAX_SPECIALS_ZOMBIES)) // r
		write_byte(ArrayGetCell(g_zm_sp_g, g_zm_special[ID_NVISION]-MAX_SPECIALS_ZOMBIES)) // g
		write_byte(ArrayGetCell(g_zm_sp_b, g_zm_special[ID_NVISION]-MAX_SPECIALS_ZOMBIES)) // b
	}
	else if(isDefaultSpecialZombie(ID_NVISION)) {
		write_byte(get_pcvar_num(cvar_zm_red[g_zm_special[ID_NVISION]])) // r
		write_byte(get_pcvar_num(cvar_zm_green[g_zm_special[ID_NVISION]])) // g
		write_byte(get_pcvar_num(cvar_zm_blue[g_zm_special[ID_NVISION]])) // b
	}

	// Human / Spectator in normal round
	else if(!g_zombie[ID_NVISION] || !g_isalive[ID_NVISION]) {
		if(isCustomSpecialHuman(ID_NVISION)) {
			write_byte(ArrayGetCell(g_hm_sp_r, g_hm_special[ID_NVISION]-MAX_SPECIALS_HUMANS)) // r
			write_byte(ArrayGetCell(g_hm_sp_g, g_hm_special[ID_NVISION]-MAX_SPECIALS_HUMANS)) // g
			write_byte(ArrayGetCell(g_hm_sp_b, g_hm_special[ID_NVISION]-MAX_SPECIALS_HUMANS)) // b
		}
		else if(isDefaultSpecialHuman(ID_NVISION)) {
			write_byte(get_pcvar_num(cvar_hm_red[g_hm_special[ID_NVISION]])) // r
			write_byte(get_pcvar_num(cvar_hm_green[g_hm_special[ID_NVISION]])) // g
			write_byte(get_pcvar_num(cvar_hm_blue[g_hm_special[ID_NVISION]])) // b
		}
		else {
			switch(g_nv_color[0][ID_NVISION]) {
				case 1: g_nvrgb = { 255, 255, 255 }
				case 2: g_nvrgb = { 255, 0, 0 }
				case 3: g_nvrgb = { 0, 255, 0 }
				case 4: g_nvrgb = { 0, 0, 255 }
				case 5: g_nvrgb = { 0, 255, 255 }
				case 6: g_nvrgb = { 255, 0, 255 }
				case 7: g_nvrgb = { 255, 255, 0 }
				default: {
					g_nvrgb[0] = get_pcvar_num(cvar_hm_red[0])
					g_nvrgb[1] = get_pcvar_num(cvar_hm_green[0])
					g_nvrgb[2] = get_pcvar_num(cvar_hm_blue[0])
				}
			}
			write_byte(g_nvrgb[0]) // r
			write_byte(g_nvrgb[1]) // g
			write_byte(g_nvrgb[2]) // b
		}
	}

	// Zombie
	else {
		switch(g_nv_color[1][ID_NVISION]) {
			case 1: g_nvrgb = { 255, 255, 255 }
			case 2: g_nvrgb = { 255, 0, 0 }
			case 3: g_nvrgb = { 0, 255, 0 }
			case 4: g_nvrgb = { 0, 0, 255 }
			case 5: g_nvrgb = { 0, 255, 255 }
			case 6: g_nvrgb = { 255, 0, 255 }
			case 7: g_nvrgb = { 255, 255, 0 }
			default: {
				g_nvrgb[0] = get_pcvar_num(cvar_zombie_nvsion_rgb[0])
				g_nvrgb[1] = get_pcvar_num(cvar_zombie_nvsion_rgb[1])
				g_nvrgb[2] = get_pcvar_num(cvar_zombie_nvsion_rgb[2])
			}
		}
		write_byte(g_nvrgb[0]) // r
		write_byte(g_nvrgb[1]) // g
		write_byte(g_nvrgb[2]) // b
	}
	write_byte(2) // life
	write_byte(0) // decay rate
	message_end()
}
set_user_gnvision(id, toggle) { // Game Nightvision
	// Toggle NVG message
	message_begin(MSG_ONE, g_msgNVGToggle, _, id)
	write_byte(toggle) // toggle
	message_end()
}
public set_user_flashlight(taskid) { // Custom Flashlight
	// Get player and aiming origins
	static Float:originF[3], Float:destoriginF[3], i
	pev(ID_FLASH, pev_origin, originF)
	fm_get_aim_origin(ID_FLASH, destoriginF)

	if(get_distance_f(originF, destoriginF) > get_pcvar_float(cvar_flashdist)) return; // Max distance check

	// Send to all players?
	if(get_pcvar_num(cvar_flashshowall)) engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, destoriginF, 0)
	else message_begin(MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, _, ID_FLASH)

	// Flashlight
	write_byte(TE_DLIGHT) // TE id
	for(i = 0; i < 3; i++) engfunc(EngFunc_WriteCoord, destoriginF[i]); // xyz

	switch(g_flashlight_color[ID_FLASH]) {
		case 1: g_flashlight_rgb = { 255, 255, 255 }
		case 2: g_flashlight_rgb = { 255, 0, 0 }
		case 3: g_flashlight_rgb = { 0, 255, 0 }
		case 4: g_flashlight_rgb = { 0, 0, 255 }
		case 5: g_flashlight_rgb = { 0, 255, 255 }
		case 6: g_flashlight_rgb = { 255, 0, 255 }
		case 7: g_flashlight_rgb = { 255, 255, 0 }
		default: {
			for(i = 0; i < 3; i++)
				g_flashlight_rgb[i] = get_pcvar_num((g_currentmode == MODE_ASSASSIN) ? cvar_flashcolor2[i] : cvar_flashcolor[i]);
		}
	}

	// Different flashlight in assassin round ?
	write_byte(get_pcvar_num(cvar_flashsize[g_currentmode == MODE_ASSASSIN ? 1 : 0])) // radius
	for(i = 0; i < 3; i++) write_byte(g_flashlight_rgb[i]); // rgb
	write_byte(3) // life
	write_byte(0) // decay rate
	message_end()
}
infection_effects(id) { // Infection special effects
	if(!g_frozen[id] && get_pcvar_num(cvar_infectionscreenfade)) { // Screen fade? (unless frozen)
		message_begin(MSG_ONE_UNRELIABLE, g_msgScreenFade, _, id)
		write_short(UNIT_SECOND) // duration
		write_short(0) // hold time
		write_short(FFADE_IN) // fade type

		if(isCustomSpecialZombie(id)) {
			write_byte(ArrayGetCell(g_zm_sp_r, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)) // r
			write_byte(ArrayGetCell(g_zm_sp_g, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)) // g
			write_byte(ArrayGetCell(g_zm_sp_b, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)) // b
		}
		else if(isDefaultSpecialZombie(id)) {
			write_byte(get_pcvar_num(cvar_zm_red[g_zm_special[id]])) // r
			write_byte(get_pcvar_num(cvar_zm_green[g_zm_special[id]])) // g
			write_byte(get_pcvar_num(cvar_zm_blue[g_zm_special[id]])) // b
		}
		else {
			switch(g_nv_color[1][id]) {
				case 1: g_nvrgb = { 255, 255, 255 }
				case 2: g_nvrgb = { 255, 0, 0 }
				case 3: g_nvrgb = { 0, 255, 0 }
				case 4: g_nvrgb = { 0, 0, 255 }
				case 5: g_nvrgb = { 0, 255, 255 }
				case 6: g_nvrgb = { 255, 0, 255 }
				case 7: g_nvrgb = { 255, 255, 0 }
				default: {
					g_nvrgb[0] = get_pcvar_num(cvar_zombie_nvsion_rgb[0])
					g_nvrgb[1] = get_pcvar_num(cvar_zombie_nvsion_rgb[1])
					g_nvrgb[2] = get_pcvar_num(cvar_zombie_nvsion_rgb[2])
				}
			}
			write_byte(g_nvrgb[0]) // r
			write_byte(g_nvrgb[1]) // g
			write_byte(g_nvrgb[2]) // b
		}
		write_byte (255) // alpha
		message_end()
	}
	if(get_pcvar_num(cvar_infectionscreenshake)) { // Screen shake?
		message_begin(MSG_ONE_UNRELIABLE, g_msgScreenShake, _, id)
		write_short(UNIT_SECOND*75) // amplitude
		write_short(UNIT_SECOND*5) // duration
		write_short(UNIT_SECOND*75) // frequency
		message_end()
	}
	if(get_pcvar_num(cvar_hudicons)) { // Infection icon?
		message_begin(MSG_ONE_UNRELIABLE, g_msgDamage, _, id)
		write_byte(0) // damage save
		write_byte(0) // damage take
		write_long(DMG_NERVEGAS) // damage type - DMG_RADIATION
		write_coord(0) // x
		write_coord(0) // y
		write_coord(0) // z
		message_end()
	}
	static origin[3]; get_user_origin(id, origin) // Get player's origin
	if(get_pcvar_num(cvar_infectiontracers)) { // Tracers?
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_IMPLOSION) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]) // z
		write_byte(128) // radius
		write_byte(20) // count
		write_byte(3) // duration
		message_end()
	}
	if(get_pcvar_num(cvar_infectionparticles)) { // Particle burst?
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_PARTICLEBURST) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]) // z
		write_short(50) // radius
		write_byte(70) // color
		write_byte(3) // duration (will be randomized a bit)
		message_end()
	}
	if(get_pcvar_num(cvar_infectionsparkle)) { // Light sparkle?
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_DLIGHT) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]) // z
		write_byte(20) // radius
		write_byte(255) // r
		write_byte(0) // g
		write_byte(0) // b
		write_byte(2) // life
		write_byte(0) // decay rate
		message_end()
	}
}
public zombie_aura(taskid) { // Special Zombie / Zombie madness aura task
	// Not nemesis, not in zombie madness
	if(isDefaultZombie(ID_AURA) && !g_nodamage[ID_AURA]) {
		remove_task(taskid); // Task not needed anymore
		return;
	}
	if(isCustomSpecialZombie(ID_AURA)) {
		if(ArrayGetCell(g_zm_sp_aurarad, g_zm_special[ID_AURA]-MAX_SPECIALS_ZOMBIES) <= 0){
			remove_task(taskid); // Task not needed anymore
			return;
		}
	}

	static origin[3]; get_user_origin(ID_AURA, origin) // Get player's origin

	// Colored Aura
	message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
	write_byte(TE_DLIGHT) // TE id
	write_coord(origin[0]) // x
	write_coord(origin[1]) // y
	write_coord(origin[2]) // z

	if(isCustomSpecialZombie(ID_AURA)) {
		write_byte(ArrayGetCell(g_zm_sp_aurarad, g_zm_special[ID_AURA]-MAX_SPECIALS_ZOMBIES)) // radius
		write_byte(ArrayGetCell(g_zm_sp_r, g_zm_special[ID_AURA]-MAX_SPECIALS_ZOMBIES)) // r
		write_byte(ArrayGetCell(g_zm_sp_g, g_zm_special[ID_AURA]-MAX_SPECIALS_ZOMBIES)) // g
		write_byte(ArrayGetCell(g_zm_sp_b, g_zm_special[ID_AURA]-MAX_SPECIALS_ZOMBIES)) // b
	}
	else {
		write_byte(get_pcvar_num(cvar_zm_auraradius)) // radius
		write_byte(get_pcvar_num(cvar_zm_red[g_zm_special[ID_AURA]])) // r
		write_byte(get_pcvar_num(cvar_zm_green[g_zm_special[ID_AURA]])) // g
		write_byte(get_pcvar_num(cvar_zm_blue[g_zm_special[ID_AURA]])) // b
	}
	write_byte(2) // life
	write_byte(0) // decay rate
	message_end()
}
public human_aura(taskid) { // Special Human aura task
	// Not survivor or sniper
	if(isDefaultHuman(ID_AURA)) {
		remove_task(taskid); // Task not needed anymore
		return;
	}

	if(isCustomSpecialHuman(ID_AURA)) {
		if(ArrayGetCell(g_hm_sp_aurarad, g_hm_special[ID_AURA]-MAX_SPECIALS_HUMANS) <= 0){
			remove_task(taskid); // Task not needed anymore
			return;
		}
	}

	// Get player's origin
	static origin[3]; get_user_origin(ID_AURA, origin)

	// Colored Aura
	message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
	write_byte(TE_DLIGHT) // TE id
	write_coord(origin[0]) // x
	write_coord(origin[1]) // y
	write_coord(origin[2]) // z

	if(g_hm_special[ID_AURA] >= MAX_SPECIALS_HUMANS) {
		write_byte(ArrayGetCell(g_hm_sp_aurarad, g_hm_special[ID_AURA]-MAX_SPECIALS_HUMANS)) // radius
		write_byte(ArrayGetCell(g_hm_sp_r, g_hm_special[ID_AURA]-MAX_SPECIALS_HUMANS)) // r
		write_byte(ArrayGetCell(g_hm_sp_g, g_hm_special[ID_AURA]-MAX_SPECIALS_HUMANS)) // g
		write_byte(ArrayGetCell(g_hm_sp_b, g_hm_special[ID_AURA]-MAX_SPECIALS_HUMANS)) // b
	}
	else {
		write_byte(get_pcvar_num(cvar_hm_auraradius[g_hm_special[ID_AURA]])) // radius
		write_byte(get_pcvar_num(cvar_hm_red[g_hm_special[ID_AURA]])) // r
		write_byte(get_pcvar_num(cvar_hm_green[g_hm_special[ID_AURA]])) // g
		write_byte(get_pcvar_num(cvar_hm_blue[g_hm_special[ID_AURA]])) // b
	}
	write_byte(2) // life
	write_byte(0) // decay rate
	message_end()
}
public make_blood(taskid) { // Make zombies leave footsteps and bloodstains on the floor
	if(!(pev(ID_BLOOD, pev_flags) & FL_ONGROUND) || fm_get_speed(ID_BLOOD) < 80) return; // Only bleed when moving on ground

	static Float:originF[3]; pev(ID_BLOOD, pev_origin, originF) // Get user origin

	// If ducking set a little lower
	if(pev(ID_BLOOD, pev_bInDuck)) originF[2] -= 18.0
	else originF[2] -= 36.0

	// Send the decal message
	engfunc(EngFunc_MessageBegin, MSG_PAS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_WORLDDECAL) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	static num[32]
	ArrayGetString(zombie_decals, random_num(0, ArraySize(zombie_decals) - 1), num, charsmax(num))
	write_byte(str_to_num(num) + (g_czero * 12)) // random decal number (offsets +12 for CZ)
	message_end()
}
flare_lighting(entity, duration) { // Flare Lighting Effects
	// Get origin and color
	static Float:originF[3], color[3]
	pev(entity, pev_origin, originF)
	pev(entity, PEV_FLARE_COLOR, color)

	// Lighting in assassin round is different
	engfunc(EngFunc_MessageBegin, MSG_PAS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_DLIGHT) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	write_byte(get_pcvar_num(cvar_flaresize[g_currentmode == MODE_ASSASSIN ? 1 : 0])) // radius
	write_byte(color[0]) // r
	write_byte(color[1]) // g
	write_byte(color[2]) // b
	write_byte(51) //life
	write_byte((duration < 2) ? 3 : 0) //decay rate
	message_end()

	// Sparks
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_SPARKS) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	message_end()
}

create_blast(const Float:originF[3], grenade_type) { // Grenade Blast
	static radius_shockwave, size
	size = 0
	radius_shockwave = floatround(NADE_EXPLOSION_RADIUS)
	while(radius_shockwave >= 60) {
		radius_shockwave -= 60
		size++
	}

	// Smallest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+385.0) // z axis
	write_short(g_RingSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(size) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(grenade_rgb[grenade_type][0]) // red
	write_byte(grenade_rgb[grenade_type][1]) // green
	write_byte(grenade_rgb[grenade_type][2]) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()

	// Medium ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+470.0) // z axis
	write_short(g_RingSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(size) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(grenade_rgb[grenade_type][0]) // red
	write_byte(grenade_rgb[grenade_type][1]) // green
	write_byte(grenade_rgb[grenade_type][2]) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()

	// Largest ring
	engfunc(EngFunc_MessageBegin, MSG_PVS, SVC_TEMPENTITY, originF, 0)
	write_byte(TE_BEAMCYLINDER) // TE id
	engfunc(EngFunc_WriteCoord, originF[0]) // x
	engfunc(EngFunc_WriteCoord, originF[1]) // y
	engfunc(EngFunc_WriteCoord, originF[2]) // z
	engfunc(EngFunc_WriteCoord, originF[0]) // x axis
	engfunc(EngFunc_WriteCoord, originF[1]) // y axis
	engfunc(EngFunc_WriteCoord, originF[2]+555.0) // z axis
	write_short(g_RingSpr) // sprite
	write_byte(0) // startframe
	write_byte(0) // framerate
	write_byte(size) // life
	write_byte(60) // width
	write_byte(0) // noise
	write_byte(grenade_rgb[grenade_type][0]) // red
	write_byte(grenade_rgb[grenade_type][1]) // green
	write_byte(grenade_rgb[grenade_type][2]) // blue
	write_byte(200) // brightness
	write_byte(0) // speed
	message_end()

	if(enable_gib[grenade_type]) {
		// TE_SPRITETRAIL
		engfunc(EngFunc_MessageBegin, MSG_BROADCAST ,SVC_TEMPENTITY, originF, 0)
		write_byte(TE_SPRITETRAIL) // TE ID
		engfunc(EngFunc_WriteCoord, originF[0]) // x axis
		engfunc(EngFunc_WriteCoord, originF[1]) // y axis
		engfunc(EngFunc_WriteCoord, originF[2]+70) // z axis
		engfunc(EngFunc_WriteCoord, originF[0]) // x axis
		engfunc(EngFunc_WriteCoord, originF[1]) // y axis
		engfunc(EngFunc_WriteCoord, originF[2]) // z axis
		write_short(g_GibSpr[grenade_type]) // Sprite Index
		write_byte(80) // Count
		write_byte(20) // Life
		write_byte(2) // Scale
		write_byte(50) // Velocity Along Vector
		write_byte(10) // Rendomness of Velocity
		message_end();
	}

	if(enable_explode[grenade_type]) {
		// TE_EXPLOSION
		engfunc(EngFunc_MessageBegin, MSG_BROADCAST,SVC_TEMPENTITY, originF, 0)
		write_byte(TE_EXPLOSION)
		engfunc(EngFunc_WriteCoord, originF[0]) // x axis
		engfunc(EngFunc_WriteCoord, originF[1]) // y axis
		engfunc(EngFunc_WriteCoord, originF[2]+75) // z axis
		write_short(g_ExplodeSpr[grenade_type])
		write_byte(22)
		write_byte(35)
		write_byte(TE_EXPLFLAG_NOSOUND)
		message_end()
	}
}
FixDeadAttrib(id) { // Fix Dead Attrib on scoreboard
	message_begin(MSG_BROADCAST, g_msgScoreAttrib)
	write_byte(id) // id
	write_byte(0) // attrib
	message_end()
}
SendDeathMsg(attacker, victim, disinfection) { // Send Death Message for infections
	message_begin(MSG_BROADCAST, g_msgDeathMsg)
	write_byte(attacker) // killer
	write_byte(victim) // victim
	write_byte(1) // headshot flag
	if(disinfection)
		write_string("antidote") // killer's weapon
	else
		write_string(get_pcvar_num(cvar_green_dm) ? "teammate" : "infection") // killer's weapon
	message_end()
}
UpdateFrags(attacker, victim, frags, deaths, scoreboard) { // Update Player Frags and Deaths
	set_pev(attacker, pev_frags, float(pev(attacker, pev_frags) + frags)) // Set attacker frags
	fm_cs_set_user_deaths(victim, cs_get_user_deaths(victim) + deaths) // Set victim deaths

	if(scoreboard) { // Update scoreboard with attacker and victim info
		message_begin(MSG_BROADCAST, g_msgScoreInfo)
		write_byte(attacker) // id
		write_short(pev(attacker, pev_frags)) // frags
		write_short(cs_get_user_deaths(attacker)) // deaths
		write_short(0) // class?
		write_short(fm_cs_get_user_team(attacker)) // team
		message_end()

		message_begin(MSG_BROADCAST, g_msgScoreInfo)
		write_byte(victim) // id
		write_short(pev(victim, pev_frags)) // frags
		write_short(cs_get_user_deaths(victim)) // deaths
		write_short(0) // class?
		write_short(fm_cs_get_user_team(victim)) // team
		message_end()
	}
}
RemoveFrags(attacker, victim) { // Remove Player Frags (when Nemesis/Survivor/Sniper/Berserker ignore_frags cvar is enabled)
	set_pev(attacker, pev_frags, float(pev(attacker, pev_frags) - 1)) // Remove attacker frags
	fm_cs_set_user_deaths(victim, cs_get_user_deaths(victim) - 1) // Remove victim deaths
}
precache_ambience(sound[]) {
	static buffer[150]
	if(equal(sound[strlen(sound)-4], ".mp3")) {
		if(!equal(sound, "sound/", 6) && !file_exists(sound) && !equal(sound, "media/", 6)) format(buffer, charsmax(buffer), "sound/%s", sound)
		else format(buffer, charsmax(buffer), "%s", sound)

		engfunc(EngFunc_PrecacheGeneric, buffer)
	}
	else  {
		if(equal(sound, "sound/", 6)) format(buffer, charsmax(buffer), "%s", sound[6])
		else format(buffer, charsmax(buffer), "%s", sound)

		engfunc(EngFunc_PrecacheSound, buffer)
	}
}
stock PlaySound(const snd[]) { // Plays a sound on clients
	static is_mp3;
	is_mp3 = (equal(snd[strlen(snd)-4], ".mp3")) ? 1 : 0;

	g_ForwardParameter[0] = 0
	ExecuteForward(g_forwards[PLAY_SOUND], g_fwDummyResult, snd, is_mp3);
	if(g_fwDummyResult >= ZP_PLUGIN_HANDLED)
		return;

	static sound[150]
	if(g_ForwardParameter[0])
		formatex(sound, charsmax(sound), g_ForwardParameter)
	else
		copy(sound, charsmax(sound), snd)

	static buffer[150]
	if(is_mp3) {
		if(!equal(sound, "sound/", 6) && !file_exists(sound) && !equal(sound, "media/", 6)) format(buffer, charsmax(buffer), "sound/%s", sound)
		else formatex(buffer, charsmax(buffer), "%s", sound)

		client_cmd(0, "mp3 play ^"%s^"", buffer)
	}
	else {
		if(equal(sound, "sound/", 6)) format(buffer, charsmax(buffer), "%s", sound[6])
		else formatex(buffer, charsmax(buffer), "%s", sound)

		client_cmd(0, "spk ^"%s^"", buffer)
	}
}

/*================================================================================
 [Stocks]
=================================================================================*/
// Set an entity's key value (from fakemeta_util)
stock fm_set_kvd(entity, const key[], const value[], const classname[]) {
	set_kvd(0, KV_ClassName, classname);
	set_kvd(0, KV_KeyName, key);
	set_kvd(0, KV_Value, value);
	set_kvd(0, KV_fHandled, 0);

	dllfunc(DLLFunc_KeyValue, entity, 0);
}
// Set entity's rendering type (from fakemeta_util);
stock fm_set_rendering(entity, fx = kRenderFxNone, r = 255, g = 255, b = 255, render = kRenderNormal, amount = 16) {
	static Float:color[3];
	color[0] = float(r);
	color[1] = float(g);
	color[2] = float(b);

	set_pev(entity, pev_renderfx, fx);
	set_pev(entity, pev_rendercolor, color);
	set_pev(entity, pev_rendermode, render);
	set_pev(entity, pev_renderamt, float(amount));
}
stock fm_get_speed(entity) { // Get entity's speed (from fakemeta_util);
	static Float:velocity[3];
	pev(entity, pev_velocity, velocity);

	return floatround(vector_length(velocity));
}
stock fm_get_aim_origin(id, Float:origin[3]) { // Get entity's aim origins (from fakemeta_util);
	static Float:origin1F[3], Float:origin2F[3];
	pev(id, pev_origin, origin1F)
	pev(id, pev_view_ofs, origin2F)
	xs_vec_add(origin1F, origin2F, origin1F)

	pev(id, pev_v_angle, origin2F);
	engfunc(EngFunc_MakeVectors, origin2F)
	global_get(glb_v_forward, origin2F)
	xs_vec_mul_scalar(origin2F, 9999.0, origin2F)
	xs_vec_add(origin1F, origin2F, origin2F)

	engfunc(EngFunc_TraceLine, origin1F, origin2F, 0, id, 0)
	get_tr2(0, TR_vecEndPos, origin)
}
stock fm_find_ent_by_owner(entity, const classname[], owner) { // Find entity by its owner (from fakemeta_util)
	while((entity = engfunc(EngFunc_FindEntityByString, entity, "classname", classname)) && pev(entity, pev_owner) != owner) { /* keep looping */ }
	return entity;
}
// Set player's health (from fakemeta_util)
stock fm_set_user_health(id, health) (health > 0) ? set_pev(id, pev_health, float(health)) : dllfunc(DLLFunc_ClientKill, id);

stock fm_give_item(id, const item[]) { // Give an item to a player (from fakemeta_util)
	static ent, Float:originF[3], save
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, item))
	if(!pev_valid(ent)) return -1;

	pev(id, pev_origin, originF)
	set_pev(ent, pev_origin, originF)
	set_pev(ent, pev_spawnflags, pev(ent, pev_spawnflags) | SF_NORESPAWN)
	dllfunc(DLLFunc_Spawn, ent)

	save = pev(ent, pev_solid)
	dllfunc(DLLFunc_Touch, ent, id)
	if(pev(ent, pev_solid) != save)
		return 0;

	engfunc(EngFunc_RemoveEntity, ent)
	return 1;
}
stock fm_strip_user_weapons(id) { // Strip user weapons (from fakemeta_util)
	static ent
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "player_weaponstrip"))
	if(!pev_valid(ent)) return 0;

	dllfunc(DLLFunc_Spawn, ent)
	dllfunc(DLLFunc_Use, ent, id)
	engfunc(EngFunc_RemoveEntity, ent)
	return 1;
}
stock load_spawns() { // Collect random spawn points
	// Check for CSDM spawns of the current map
	static cfgdir[32], mapname[32], filepath[100], linedata[64]
	get_configsdir(cfgdir, charsmax(cfgdir))
	get_mapname(mapname, charsmax(mapname))
	formatex(filepath, charsmax(filepath), "%s/csdm/%s.spawns.cfg", cfgdir, mapname)
	if(file_exists(filepath)) { // Load CSDM spawns if present
		static csdmdata[10][6], file
		file = fopen(filepath, "rt")

		while(file && !feof(file)) {
			fgets(file, linedata, charsmax(linedata))

			if(!linedata[0] || str_count(linedata,' ') < 2) continue; // invalid spawn

			// get spawn point data
			parse(linedata,csdmdata[0],5,csdmdata[1],5,csdmdata[2],5,csdmdata[3],5,csdmdata[4],5,csdmdata[5],5,csdmdata[6],5,csdmdata[7],5,csdmdata[8],5,csdmdata[9],5)

			// origin
			g_spawns[g_spawnCount][0] = floatstr(csdmdata[0])
			g_spawns[g_spawnCount][1] = floatstr(csdmdata[1])
			g_spawns[g_spawnCount][2] = floatstr(csdmdata[2])

			g_spawnCount++ // increase spawn count
			if(g_spawnCount >= sizeof g_spawns) break;
		}
		if(file) fclose(file)
	}
	else { // Collect regular spawns
		collect_spawns_ent("info_player_start")
		collect_spawns_ent("info_player_deathmatch")
	}

	// Collect regular spawns for non-random spawning unstuck
	collect_spawns_ent2("info_player_start")
	collect_spawns_ent2("info_player_deathmatch")
}
stock collect_spawns_ent(const classname[]) { // Collect spawn points from entity origins
	static ent, Float:originF[3]
	ent = -1
	while((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", classname)) != 0) {
		// get origin
		pev(ent, pev_origin, originF)
		g_spawns[g_spawnCount][0] = originF[0]
		g_spawns[g_spawnCount][1] = originF[1]
		g_spawns[g_spawnCount][2] = originF[2]

		// increase spawn count
		g_spawnCount++
		if(g_spawnCount >= sizeof g_spawns) break;
	}
}
stock collect_spawns_ent2(const classname[]) { // Collect spawn points from entity origins
	static ent, Float:originF[3]
	ent = -1
	while((ent = engfunc(EngFunc_FindEntityByString, ent, "classname", classname)) != 0) {
		// get origin
		pev(ent, pev_origin, originF)
		g_spawns2[g_spawnCount2][0] = originF[0]
		g_spawns2[g_spawnCount2][1] = originF[1]
		g_spawns2[g_spawnCount2][2] = originF[2]

		// increase spawn count
		g_spawnCount2++
		if(g_spawnCount2 >= sizeof g_spawns2) break;
	}
}
stock drop_weapons(id, dropwhat) { // Drop primary/secondary weapons
	// Get user weapons
	static weapons[32], num, i, weaponid
	num = 0 // reset passed weapons count (bugfix)
	get_user_weapons(id, weapons, num)

	for(i = 0; i < num; i++) { // Loop through them and drop primaries or secondaries
		weaponid = weapons[i] // Prevent re-indexing the array
		if((dropwhat == 1 && ((1<<weaponid) & PRIMARY_WEAPONS_BIT_SUM)) || (dropwhat == 2 && ((1<<weaponid) & SECONDARY_WEAPONS_BIT_SUM))) {
			// Get weapon entity
			static wname[32], weapon_ent
			get_weaponname(weaponid, wname, charsmax(wname))
			weapon_ent = fm_find_ent_by_owner(-1, wname, id)

			set_pev(weapon_ent, PEV_ADDITIONAL_AMMO, cs_get_user_bpammo(id, weaponid)) // Hack: store weapon bpammo on PEV_ADDITIONAL_AMMO

			// Player drops the weapon and looses his bpammo
			engclient_cmd(id, "drop", wname)
			cs_set_user_bpammo(id, weaponid, 0)
		}
	}
}
stock str_count(const str[], searchchar) { // Stock by (probably) Twilight Suzuka -counts number of chars in a string
	static count, i, len
	count = 0
	len = strlen(str)
	for(i = 0; i <= len; i++) {
		if(str[i] == searchchar)
			count++
	}
	return count;
}
stock is_hull_vacant(Float:origin[3], hull) { // Checks if a space is vacant (credits to VEN)
	engfunc(EngFunc_TraceHull, origin, origin, 0, hull, 0, 0)
	if(!get_tr2(0, TR_StartSolid) && !get_tr2(0, TR_AllSolid) && get_tr2(0, TR_InOpen))
		return true;

	return false;
}
stock is_player_stuck(id) { // Check if a player is stuck (credits to VEN)
	if(!is_user_alive(id)) return false;

	static Float:originF[3]; pev(id, pev_origin, originF)
	engfunc(EngFunc_TraceHull, originF, originF, 0, (pev(id, pev_flags) & FL_DUCKING) ? HULL_HEAD : HULL_HUMAN, id, 0)
	if(get_tr2(0, TR_StartSolid) || get_tr2(0, TR_AllSolid) || !get_tr2(0, TR_InOpen)) return true;

	return false;
}
stock cs_weapon_name_to_id(const weapon[]) { // Simplified get_weaponid (CS only)
	static i
	for(i = 0; i < sizeof WEAPONENTNAMES; i++) if(equal(weapon, WEAPONENTNAMES[i])) return i;

	return 0;
}
stock fm_cs_get_current_weapon_ent(id) { // Get User Current Weapon Entity
	if(pev_valid(id) != PDATA_SAFE) return -1; // Prevent server crash if entity's private data not initalized

	return get_pdata_cbase(id, OFFSET_ACTIVE_ITEM, OFFSET_LINUX);
}
stock fm_cs_get_weapon_ent_owner(ent) { // Get Weapon Entity's Owner
	if(pev_valid(ent) != PDATA_SAFE) return -1; // Prevent server crash if entity's private data not initalized

	return get_pdata_cbase(ent, OFFSET_WEAPONOWNER, OFFSET_LINUX_WEAPONS);
}
stock fm_cs_set_user_deaths(id, value) { // Set User Deaths
	if(pev_valid(id) != PDATA_SAFE) return; // Prevent server crash if entity's private data not initalized

	set_pdata_int(id, OFFSET_CSDEATHS, value, OFFSET_LINUX)
}
stock fm_cs_get_user_team(id) { // Get User Team
	if(pev_valid(id) != PDATA_SAFE) return FM_CS_TEAM_UNASSIGNED; // Prevent server crash if entity's private data not initalized

	return get_pdata_int(id, OFFSET_CSTEAMS, OFFSET_LINUX);
}
stock fm_cs_set_user_team(id, team) { // Set a Player's Team
	if(pev_valid(id) != PDATA_SAFE) return; // Prevent server crash if entity's private data not initalized

	set_pdata_int(id, OFFSET_CSTEAMS, team, OFFSET_LINUX)
}
stock fm_cs_set_user_money(id, value) { // Set User Money
	if(pev_valid(id) != PDATA_SAFE) return; // Prevent server crash if entity's private data not initalized

	set_pdata_int(id, OFFSET_CSMONEY, value, OFFSET_LINUX)
}
stock fm_cs_set_user_batteries(id, value) { // Set User Flashlight Batteries
	if(pev_valid(id) != PDATA_SAFE) return; // Prevent server crash if entity's private data not initalized

	set_pdata_int(id, OFFSET_FLASHLIGHT_BATTERY, value, OFFSET_LINUX)
}
stock fm_user_team_update(id) { // Update Player's Team on all clients (adding needed delays)
	static Float:current_time
	current_time = get_gametime()

	if(current_time - g_teams_targettime >= 0.1) {
		set_task(0.1, "fm_cs_set_user_team_msg", id+TASK_TEAM)
		g_teams_targettime = current_time + 0.1
	}
	else {
		set_task((g_teams_targettime + 0.1) - current_time, "fm_cs_set_user_team_msg", id+TASK_TEAM)
		g_teams_targettime = g_teams_targettime + 0.1
	}
}
public fm_cs_set_user_team_msg(taskid) { // Send User Team Message
	// Note to self: this next message can now be received by other plugins
	g_switchingteam = true // Set the switching team flag

	// Tell everyone my new team
	emessage_begin(MSG_ALL, g_msgTeamInfo)
	ewrite_byte(ID_TEAM) // player
	ewrite_string(CS_TEAM_NAMES[fm_cs_get_user_team(ID_TEAM)]) // team
	emessage_end()

	g_switchingteam = false // Done switching team
}

public turn_invisible(id) { // Predator/Spy Invisible Powers
	if(g_zm_special[id] == PREDATOR) {
		if(get_pcvar_num(cvar_zm_glow[PREDATOR])) fm_set_rendering(id, kRenderFxGlowShell, get_pcvar_num(cvar_zm_red[PREDATOR]), get_pcvar_num(cvar_zm_green[PREDATOR]), get_pcvar_num(cvar_zm_blue[PREDATOR]), kRenderTransAdd, 5)
		else fm_set_rendering(id, kRenderFxGlowShell, 0, 0, 0, kRenderTransAdd, 5)
	}

	if(g_hm_special[id] == SPY) {
		if(get_pcvar_num(cvar_hm_glow[SPY])) fm_set_rendering(id, kRenderFxGlowShell, get_pcvar_num(cvar_hm_red[SPY]), get_pcvar_num(cvar_hm_green[SPY]), get_pcvar_num(cvar_hm_blue[SPY]), kRenderTransAdd, 5)
		else fm_set_rendering(id, kRenderFxGlowShell, 0, 0, 0, kRenderTransAdd, 5)
	}
}

new const personal_color_langs[][] = { "MENU_COLOR_DEFAULT", "MENU_PERSONAL_COLOR1", "MENU_PERSONAL_COLOR2", "MENU_PERSONAL_COLOR3", "MENU_PERSONAL_COLOR4",
"MENU_PERSONAL_COLOR5", "MENU_PERSONAL_COLOR6", "MENU_PERSONAL_COLOR7" }
enum { HUD = 0, FLASHLIGHT, NIGHTVISION }
public show_menu_personal(id) {
	if(!is_user_valid_connected(id))
		return;

	static menu
	menu = menu_create(fmt("%L", id, "MENU_PERSONAL_TITLE"), "show_menu_personal_handler")

	if(get_pcvar_num(cvar_huddisplay))
		menu_additem(menu, fmt("%L", id, "MENU_PERSONAL_ITEM1"), "1", 0)

	if(get_pcvar_num(cvar_customnvg) || get_pcvar_num(cvar_nvision_menu[0]) || get_pcvar_num(cvar_nvision_menu[1]))
		menu_additem(menu, fmt("%L", id, "MENU_PERSONAL_ITEM2"), "2", 0)

	if(get_pcvar_num(cvar_flashlight_menu))
		menu_additem(menu, fmt("%L", id, "MENU_PERSONAL_ITEM3"), "3", 0)

	menu_setprop(menu, MPROP_EXIT, MEXIT_ALL)

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menu, 0)
}
public show_menu_personal_handler(id, menu, item) {
	if(!is_user_valid_connected(id)) {
		menu_destroy(menu)
		return PLUGIN_HANDLED;
	}
	if(item == MENU_EXIT) {
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}

	static data[6], iName[64], access, callback, key
	menu_item_getinfo(menu, item, access, data, charsmax(data), iName, charsmax(iName), callback);

	key = str_to_num(data)

	switch(key) {
		case 1: menu_hud_config(id)
		case 2: menu_nightvision(id)
		case 3: menu_color(id, 0, FLASHLIGHT)
	}

	menu_destroy(menu)
	return PLUGIN_HANDLED

}
public menu_hud_config(id) {
	if(!is_user_valid_connected(id))
		return;
	if(!get_pcvar_num(cvar_huddisplay))
		return

	static menu;
	menu = menu_create(fmt("%L", id, "MENU_HUD_TITLE"), "menu_hud_config_handler")

	menu_additem(menu, fmt("%L", id, "MENU_HUD_ITEM1"), "1", 0);
	menu_additem(menu, fmt("%L", id, "MENU_HUD_ITEM2"), "2", 0);
	menu_additem(menu, fmt("%L", id, "MENU_HUD_ITEM3"), "3", 0);

	menu_setprop(menu, MPROP_EXIT, MEXIT_ALL)

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menu, 0)
}
public menu_hud_config_handler(id, menu, item) {
	if(!is_user_valid_connected(id)) {
		menu_destroy(menu)
		return PLUGIN_HANDLED;
	}
	if(item == MENU_EXIT) {
		menu_destroy(menu)
		show_menu_personal(id)
		return PLUGIN_HANDLED
	}

	static data[6], iName[64], access, callback, key
	menu_item_getinfo(menu, item, access, data, charsmax(data), iName, charsmax(iName), callback);

	key = str_to_num(data)

	switch(key) {
		case 1: menu_hud_config_type(id);
		case 2: menu_color(id, 0, HUD)
		case 3: menu_color(id, 1, HUD)
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED

}
public menu_color(id, zm, type) {
	if(!is_user_valid_connected(id))
		return;

	static szText[555], szItem[32], menu, i

	switch(type) {
		case HUD: {
			if(!get_pcvar_num(cvar_huddisplay)) return
			formatex(szText, charsmax(szText), "%L", id, zm ? "MENU_CHOOSE_HUD_COLOR_TITLE1" : "MENU_CHOOSE_HUD_COLOR_TITLE2")
			formatex(szItem, charsmax(szItem), "%s", zm ? "HZ-" : "HH-")
		}
		case FLASHLIGHT: {
			if(!get_pcvar_num(cvar_flashlight_menu)) return
			formatex(szText, charsmax(szText), "%L", id, "MENU_CHOOSE_FLASH_COLOR_TITLE")
			formatex(szItem, charsmax(szItem), "Fl:")
		}
		case NIGHTVISION: {
			if(!get_pcvar_num(cvar_customnvg) || !get_pcvar_num(cvar_nvision_menu[zm ? 1 : 0])) return
			formatex(szText, charsmax(szText), "%L", id, zm ? "MENU_NVISION_COLOR_TITLE2" : "MENU_NVISION_COLOR_TITLE1")
			formatex(szItem, charsmax(szItem), "%s", zm ? "NZ-" : "NH-")
		}
	}

	menu = menu_create(szText, "menu_color_handler")

	for(i = 0; i < 8; i++) {
		menu_additem(menu, fmt("%L", id, personal_color_langs[i]), fmt("%s%d", szItem, i), 0)
	}
	menu_setprop(menu, MPROP_EXIT, MEXIT_ALL)

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menu, 0)
}
public menu_color_handler(id, menu, item) {
	if(!is_user_valid_connected(id)) {
		menu_destroy(menu)
		return PLUGIN_HANDLED;
	}
	if(item == MENU_EXIT) {
		menu_destroy(menu)
		show_menu_personal(id)
		return PLUGIN_HANDLED
	}

	static data[32], iName[64], access, callback
	menu_item_getinfo(menu, item, access, data, charsmax(data), iName, charsmax(iName), callback);

	if(equal(data, "HH-", 3)) g_hud_color[0][id] = str_to_num(data[3]), menu_hud_config(id)
	else if(equal(data, "HZ-", 3)) g_hud_color[1][id] = str_to_num(data[3]), menu_hud_config(id)
	else if(equal(data, "Fl:", 3)) g_flashlight_color[id] = str_to_num(data[3]), show_menu_personal(id)
	else if(equal(data, "NH-", 3)) {
		g_nv_color[0][id] = str_to_num(data[3])
		menu_nightvision(id)

		if(g_nvisionenabled[id] && get_pcvar_num(cvar_customnvg) >= 2)
			set_fade_nvg(id)
	}
	else if(equal(data, "NZ-", 3)) {
		g_nv_color[1][id] = str_to_num(data[3])
		menu_nightvision(id)
		if(g_nvisionenabled[id] && get_pcvar_num(cvar_customnvg) >= 2)
			set_fade_nvg(id)
	}

	menu_destroy(menu)
	return PLUGIN_HANDLED
}

new const hud_langs[][] = { "MENU_HUD_TYPE_ITEM1", "MENU_HUD_TYPE_ITEM2", "MENU_HUD_TYPE_ITEM3", "MENU_HUD_TYPE_ITEM4", "MENU_HUD_TYPE_ITEM5", "MENU_HUD_TYPE_ITEM6" }
public menu_hud_config_type(id) {
	if(!get_pcvar_num(cvar_huddisplay)) return

	if(!is_user_valid_connected(id))
		return;

	static szText[555], i, menu
	menu = menu_create(fmt("%L", id, "MENU_HUD_TYPE_TITLE"), "menu_hud_config_type_handler")

	for(i = 0; i < 6; i++) {
		if(g_hud_type[id] == i) formatex(szText, charsmax(szText), "\d%L [\rX\d]", id, hud_langs[i])
		else formatex(szText, charsmax(szText), "\w%L \d[]", id, hud_langs[i])

		menu_additem(menu, szText, fmt("%d", i), 0)
	}
	menu_setprop(menu, MPROP_EXIT, MEXIT_ALL)

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menu, 0)
}
public menu_hud_config_type_handler(id, menu, item) {
	if(!is_user_valid_connected(id)) {
		menu_destroy(menu)
		return PLUGIN_HANDLED;
	}
	if(item == MENU_EXIT) {
		menu_destroy(menu)
		menu_hud_config(id)
		return PLUGIN_HANDLED
	}

	static data[6], iName[64], access, callback
	menu_item_getinfo(menu, item, access, data, charsmax(data), iName, charsmax(iName), callback);
	g_hud_type[id] = str_to_num(data)

	menu_destroy(menu)
	menu_hud_config(id)
	return PLUGIN_HANDLED

}
public menu_nightvision(id) {
	if(!is_user_valid_connected(id))
		return;
	if(!get_pcvar_num(cvar_customnvg) || !get_pcvar_num(cvar_nvision_menu[0]) && !get_pcvar_num(cvar_nvision_menu[1]))
		return;

	static menu;
	menu = menu_create(fmt("%L", id, "MENU_NVISION_CONFIG_TITLE"), "menu_nightvision_handler")

	if(get_pcvar_num(cvar_nvision_menu[1]))
		menu_additem(menu, fmt("%L", id, "MENU_NVISION_ITEM1"), "1", 0);

	if(get_pcvar_num(cvar_nvision_menu[0]))
		menu_additem(menu, fmt("%L", id, "MENU_NVISION_ITEM2"), "0", 0)

	menu_setprop(menu, MPROP_EXIT, MEXIT_ALL)

	fixAmxMenu(id); // Fix for AMXX custom menus

	menu_display(id, menu, 0)
}
public menu_nightvision_handler(id, menu, item) {
	if(!is_user_valid_connected(id)) {
		menu_destroy(menu)
		return PLUGIN_HANDLED;
	}

	if(item == MENU_EXIT) {
		menu_destroy(menu)
		show_menu_personal(id)
		return PLUGIN_HANDLED
	}

	static data[6], iName[64], access, callback
	menu_item_getinfo(menu, item, access, data, charsmax(data), iName, charsmax(iName), callback);
	menu_color(id, str_to_num(data), NIGHTVISION)

	menu_destroy(menu)
	return PLUGIN_HANDLED

}
public give_hegrenade_bombardier(id) {
	id -= TASK_BOT_BOMBARDIER
	if(g_isalive[id] && g_zombie[id] && g_zm_special[id] == BOMBARDIER && !user_has_weapon(id, CSW_HEGRENADE)) fm_give_item(id, "weapon_hegrenade")
	else if(!g_zombie[id] || g_zm_special[id] != BOMBARDIER) remove_task(id+TASK_BOT_BOMBARDIER)

	if(g_isbot[id] && user_has_weapon(id, CSW_HEGRENADE)) {
		engclient_cmd(id, "weapon_hegrenade");
		if(pev_valid(id) == PDATA_SAFE) ExecuteHam(Ham_Weapon_PrimaryAttack, get_pdata_cbase(id, 373, 5));
	}
}

public use_cmd(player) { // Dragon Habilities
	if(g_zm_special[player] != DRAGON || !g_isalive[player]) return PLUGIN_HANDLED;
	if(get_gametime() - gLastUseCmd[player] < get_pcvar_float(cvar_dragon_power_cooldown)) return PLUGIN_HANDLED;

	gLastUseCmd[player] = get_gametime()

	static target, body
	get_user_aiming(player, target, body, get_pcvar_num(cvar_dragon_power_distance))
	if(is_user_valid_alive(target) && !g_zombie[target]) {
		switch(random_num(0,1)) {
			case 0: set_user_frozen(target, 2, get_pcvar_float(cvar_freezeduration)), sprite_control(player, 0)
			case 1: set_user_burn(target, 2, get_pcvar_float(cvar_fireduration)), sprite_control(player, 1)
		}
	}
	else sprite_control(player, random_num(0,1))

	return PLUGIN_HANDLED
}
public te_spray(args[]) {
	message_begin(MSG_BROADCAST,SVC_TEMPENTITY)
	write_byte(120) // Throws a shower of sprites or models
	write_coord(args[0]) // start pos
	write_coord(args[1])
	write_coord(args[2])
	write_coord(args[3]) // velocity
	write_coord(args[4])
	write_coord(args[5])
	write_short(args[6] ? g_flameSpr : frostsprite) // spr
	write_byte(8) // count
	write_byte(70) // speed
	write_byte(100) //(noise)
	write_byte(5) // (rendermode)
	message_end()

	return PLUGIN_CONTINUE
}
public sprite_control(player, fire) {
	static vec[3], aimvec[3], velocityvec[3], length, speed, i
	speed = 10

	get_user_origin(player, vec)
	get_user_origin(player, aimvec, 2)

	for(i = 0; i < 3; i++) velocityvec[i] = aimvec[i] - vec[i]
	length = sqrt(velocityvec[0] * velocityvec[0] + velocityvec[1] * velocityvec[1] + velocityvec[2] * velocityvec[2])
	for(i = 0; i < 3; i++) velocityvec[i] = velocityvec[i] * speed / length

	static args[8]
	for(i = 0; i < 3; i++){
		args[i] = vec[i];
		args[3+i] = velocityvec[i];
	}
	args[6] = fire

	set_task(0.1, "te_spray", 0, args, 8, "a", 2)

}
public PreThinkDragon(id) {
	if(g_zm_special[id] != DRAGON || !g_isalive[id]) return PLUGIN_CONTINUE

	static Float:fAim[3], Float:fVelocity[3];
	velocity_by_aim(id, get_pcvar_num(cvar_dragon_flyspped), fAim)

	if(pev(id, pev_button) & IN_JUMP) {
		fVelocity[0] = fAim[0]; fVelocity[1] = fAim[1]; fVelocity[2] = fAim[2];
		set_pev(id, pev_velocity, fVelocity);
	}
	return PLUGIN_CONTINUE;
}
public sqrt(num) {
	new div = num
	new result = 1
	while(div > result) {
		div = (div + result) / 2
		result = num / div
	}
	return div
}
public reset_user_rendering(id) {
	static ent_id
	ent_id = id

	ExecuteForward(g_forwards[RESET_RENDERING_PRE], g_fwDummyResult, id)

	if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE) return; // The game mode didnt accept some conditions

	if(g_frozen[id]) fm_set_rendering(ent_id, kRenderFxGlowShell, 0, 100, 200, kRenderNormal, 25) // Light blue glow while frozen
	else if(g_zombie[id]) {
		if(isDefaultZombie(id)) fm_set_rendering(ent_id)

		else if(isCustomSpecialZombie(id)) {
			if(ArrayGetCell(g_zm_sp_glow, g_zm_special[id]-MAX_SPECIALS_ZOMBIES) > 0) fm_set_rendering(ent_id, kRenderFxGlowShell, ArrayGetCell(g_zm_sp_r, g_zm_special[id]-MAX_SPECIALS_ZOMBIES), ArrayGetCell(g_zm_sp_g, g_zm_special[id]-MAX_SPECIALS_ZOMBIES), ArrayGetCell(g_zm_sp_b, g_zm_special[id]-MAX_SPECIALS_ZOMBIES), kRenderNormal, 20)
			else fm_set_rendering(ent_id, kRenderFxGlowShell, 0, 0, 0,  kRenderNormal, 20)
		}
		else {
			if(get_pcvar_num(cvar_zm_glow[g_zm_special[id]])) fm_set_rendering(ent_id, kRenderFxGlowShell, get_pcvar_num(cvar_zm_red[g_zm_special[id]]), get_pcvar_num(cvar_zm_green[g_zm_special[id]]), get_pcvar_num(cvar_zm_blue[g_zm_special[id]]), g_zm_special[id] == PREDATOR ? kRenderTransAdd : kRenderNormal, g_zm_special[id] == PREDATOR ?  5 : 20)
			else fm_set_rendering(ent_id, kRenderFxGlowShell, 0, 0, 0, g_zm_special[id] == PREDATOR ? kRenderTransAdd : kRenderNormal, g_zm_special[id] == PREDATOR ?  5 : 20)
		}
	}
	else {
		if(isDefaultHuman(id)) fm_set_rendering(ent_id)

		else if(isCustomSpecialHuman(id)) {
			if(ArrayGetCell(g_hm_sp_glow, g_hm_special[id]-MAX_SPECIALS_HUMANS) > 0) fm_set_rendering(ent_id, kRenderFxGlowShell, ArrayGetCell(g_hm_sp_r, g_hm_special[id]-MAX_SPECIALS_HUMANS), ArrayGetCell(g_hm_sp_g, g_hm_special[id]-MAX_SPECIALS_HUMANS), ArrayGetCell(g_hm_sp_b, g_hm_special[id]-MAX_SPECIALS_HUMANS), kRenderNormal, 20)
			else fm_set_rendering(ent_id, kRenderFxGlowShell, 0, 0, 0,  kRenderNormal, 20)
		}
		else {
			if(get_pcvar_num(cvar_hm_glow[g_hm_special[id]])) fm_set_rendering(ent_id, kRenderFxGlowShell, get_pcvar_num(cvar_hm_red[g_hm_special[id]]), get_pcvar_num(cvar_hm_green[g_hm_special[id]]), get_pcvar_num(cvar_hm_blue[g_hm_special[id]]), g_hm_special[id] == SPY ? kRenderTransAdd : kRenderNormal, g_hm_special[id] == SPY ? 5 : 20)
			else fm_set_rendering(ent_id, kRenderFxGlowShell, 0, 0, 0, g_hm_special[id] == SPY ? kRenderTransAdd : kRenderNormal, g_hm_special[id] == SPY ? 5 : 20)
		}
	}
	ExecuteForward(g_forwards[RESET_RENDERING_POST], g_fwDummyResult, id)
}
public reset_player_models(id) {
	if(!is_user_valid_alive(id))
		return false;

	static already_has_model, UserFlags;
	already_has_model = false
	UserFlags = get_user_flags(id)

	static Array:Arr_Model, Array:Arr_Body, Array:Arr_Skin, ArrSize, iRand, currentmodel[32], newmodel[32], i
	cs_get_user_model(id, currentmodel, charsmax(currentmodel)) // Get current model for comparing it with the current one
	if(g_zombie[id]) {
		if(isCustomSpecialZombie(id)) {
			Arr_Model = ArrayGetCell(g_zm_sp_mdl_handle, g_zm_special[id]-MAX_SPECIALS_ZOMBIES);
			Arr_Body = ArrayGetCell(g_zm_sp_body_handle, g_zm_special[id]-MAX_SPECIALS_ZOMBIES);
			Arr_Skin = ArrayGetCell(g_zm_sp_skin_handle, g_zm_special[id]-MAX_SPECIALS_ZOMBIES);
		}
		else if(isDefaultSpecialZombie(id)) {
			if(zm_special_enable[g_zm_special[id]]) {
				Arr_Model = model_zm_special[g_zm_special[id]];
				Arr_Body = model_zm_special_body[g_zm_special[id]];
				Arr_Skin = model_zm_special_skin[g_zm_special[id]];
			}
		}
		else {
			if(get_pcvar_num(cvar_adminmodelszombie) && (UserFlags & g_access_flag[ACCESS_ADMIN_MODELS])) {
				Arr_Model = model_adm_zm;
				Arr_Body = model_adm_zm_body;
				Arr_Skin = model_adm_zm_skin;
			}
			else if(get_pcvar_num(cvar_vipmodelszombie) && (UserFlags & g_access_flag[ACCESS_VIP_MODELS])) {
				Arr_Model = model_vip_zm;
				Arr_Body = model_vip_zm_body;
				Arr_Skin = model_vip_zm_skin;
			}
			else if(g_same_models_for_all) {
				Arr_Model = g_zclass_playermodel;
				Arr_Body = g_zclass_body;
				Arr_Skin = g_zclass_skin;
			}
			else {
				Arr_Model = ArrayGetCell(g_zclass_mdl_handle, g_zombieclass[id]);
				Arr_Body = ArrayGetCell(g_zclass_body_handle, g_zombieclass[id]);
				Arr_Skin = ArrayGetCell(g_zclass_skin_handle, g_zombieclass[id]);
			}
		}
		ArrSize = ArraySize(Arr_Model);
	}
	else {
		if(isCustomSpecialHuman(id)) { // Set the right model, after checking that we don't already have it
			Arr_Model = ArrayGetCell(g_hm_sp_mdl_handle, g_hm_special[id]-MAX_SPECIALS_HUMANS);
			Arr_Body = ArrayGetCell(g_hm_sp_body_handle, g_hm_special[id]-MAX_SPECIALS_HUMANS);
			Arr_Skin = ArrayGetCell(g_hm_sp_skin_handle, g_hm_special[id]-MAX_SPECIALS_HUMANS);
		}
		else if(isDefaultSpecialHuman(id)) {
			if(hm_special_enable[g_hm_special[id]]) {
				Arr_Model = model_human[g_hm_special[id]];
				Arr_Body = model_human_body[g_hm_special[id]];
				Arr_Skin = model_human_skin[g_hm_special[id]];
			}
		}
		else {
			if(get_pcvar_num(cvar_adminmodelshuman) && (UserFlags & g_access_flag[ACCESS_ADMIN_MODELS])) {
				Arr_Model = model_adm_hm;
				Arr_Body = model_adm_hm_body;
				Arr_Skin = model_adm_hm_skin;
			}
			else if(get_pcvar_num(cvar_vipmodelshuman) && (UserFlags & g_access_flag[ACCESS_VIP_MODELS])) {
				Arr_Model = model_vip_hm;
				Arr_Body = model_vip_hm_body;
				Arr_Skin = model_vip_hm_skin;
			}
			else if(!g_hclass_i) {
				Arr_Model = model_human[0];
				Arr_Body = model_human_body[0];
				Arr_Skin = model_human_skin[0];
			}
			else if(g_hclass_i) {
				if(ArrayGetCell(g_hclass_mdl_file, g_user_hclass[id])) {
					Arr_Model = ArrayGetCell(g_hclass_mdl_handle, g_user_hclass[id]);
					Arr_Body = ArrayGetCell(g_hclass_body_handle, g_user_hclass[id]);
					Arr_Skin = ArrayGetCell(g_hclass_skin_handle, g_user_hclass[id]);
				}
				else {
					Arr_Model = model_human[0];
					Arr_Body = model_human_body[0];
					Arr_Skin = model_human_skin[0];
				}
			}

		}
		ArrSize = ArraySize(Arr_Model);
	}

	for(i = 0; i < ArrSize; i++) {
		ArrayGetString(Arr_Model, i, newmodel, charsmax(newmodel))
		if(equal(currentmodel, newmodel) && (g_playerbody[id] == ArrayGetCell(Arr_Body, i)) && (g_playerskin[id] == ArrayGetCell(Arr_Skin, i))) {
			already_has_model = true
			break;
		}
	}

	g_ForwardParameter[0] = 0
	g_FW_intParam[3] = -1
	g_FW_intParam[4] = -1

	 // Need to change the model?
	static NewBody, NewSkin
	if(already_has_model) {
		NewBody = g_playerbody[id];
		NewSkin = g_playerskin[id];
		set_pev(id, pev_body, g_playerbody[id]);
		set_pev(id, pev_skin, g_playerskin[id]);
		ExecuteForward(g_forwards[MODEL_CHANGE_PRE], g_fwDummyResult, id, newmodel, g_playerbody[id], g_playerskin[id])

		if(equal(g_ForwardParameter, newmodel))
			return true;
		else
			already_has_model = false;
	}
	else {

		iRand = random_num(0, ArrSize - 1)
		NewBody = ArrayGetCell(Arr_Body, iRand)
		NewSkin = ArrayGetCell(Arr_Skin, iRand)
		ArrayGetString(Arr_Model, iRand, newmodel, charsmax(newmodel))
		ExecuteForward(g_forwards[MODEL_CHANGE_PRE], g_fwDummyResult, id, newmodel, NewBody, NewSkin)
	}

	if(g_fwDummyResult >= ZP_PLUGIN_SUPERCEDE)
		return false; // The game mode didnt accept some conditions

	if(g_ForwardParameter[0])
		formatex(newmodel, charsmax(newmodel), g_ForwardParameter) // Check if forward not changed the param

	if(g_FW_intParam[3] != -1)
		NewBody = g_FW_intParam[3]

	if(g_FW_intParam[4] != -1)
		NewSkin = g_FW_intParam[4]

	formatex(g_playermodel[id], charsmax(g_playermodel[]), newmodel)
	cs_set_user_model(id, newmodel, g_set_modelindex_offset ? true : false)

	g_playerbody[id] = NewBody
	g_playerskin[id] = NewSkin
	set_pev(id, pev_body, g_playerbody[id]);
	set_pev(id, pev_skin, g_playerskin[id]);

	ExecuteForward(g_forwards[MODEL_CHANGE_POST], g_fwDummyResult, id, newmodel, NewBody, NewSkin)
	return true;
}

stock add_point(number) {
	new count, i, str[29], str2[35], len
	num_to_str(number, str, charsmax(str))
	len = strlen(str)

	for(i = 0; i < len; i++) {
		if(i != 0 && ((len - i) %3 == 0)) {
			add(str2, charsmax(str2), ".", 1)
			count++
			add(str2[i+count], 1, str[i], 1)
		}
		else add(str2[i+count], 1, str[i], 1)
	}
	return str2;
}
stock set_screenfadein(id, fadetime, r, g, b, alpha) {
	static players[32], count, i
	count = 1
	if(id) players[0] = id; else get_players(players,count, "ch");
	for(i=0;i<count;i++) {
		if(is_user_connected(players[i])) {
			message_begin(MSG_ONE, g_msgScreenFade, _, players[i])
			write_short(UNIT_SECOND*fadetime) // duration
			write_short(0) // hold time
			write_short(FFADE_IN) // fade type
			write_byte(r) // red
			write_byte(g) // green
			write_byte(b) // blue
			write_byte(alpha) // alpha
			message_end()
		}
	}
}
bool:get_allowed_frost(id) {
	if(!g_zombie[id] || !g_isalive[id]) return false;

	if(isDefaultSpecialZombie(id)) {
		if(get_pcvar_num(cvar_zm_allow_frost[g_zm_special[id]])) return true;
		return false;
	}
	else if(isCustomSpecialZombie(id)) {
		if(ArrayGetCell(g_zm_sp_allow_frost, g_zm_special[id]-MAX_SPECIALS_ZOMBIES) > 0) return true;
		return false
	}
	return true
}
bool:get_allowed_burn(id) {
	if(!g_zombie[id] || !g_isalive[id]) return false;

	if(isDefaultSpecialZombie(id)) {
		if(get_pcvar_num(cvar_zm_allow_burn[g_zm_special[id]])) return true;
		return false;
	}
	else if(isCustomSpecialZombie(id)) {
		if(ArrayGetCell(g_zm_sp_allow_burn, g_zm_special[id]-MAX_SPECIALS_ZOMBIES) > 0) return true;
		return false
	}
	return true
}

bool:is_escape_map() {
	static map_name[32], buffer[32], i
	get_mapname(map_name, sizeof(map_name))
	if(equal(map_name, "ze_", 3)) return true; // ze_ map prefix

	if(ArraySize(g_escape_maps) > 0) {
		for(i = 0; i < ArraySize(g_escape_maps); i++) { // zombie escape maps that not have ze_ prefix
			ArrayGetString(g_escape_maps, i, buffer, charsmax(buffer))
			if(equal(map_name, buffer))
				return true;
		}
	}
	return false
}

stock isSameTeam(id1, id2) {
	if(!is_user_valid_connected(id1) || !is_user_valid_connected(id2))
		return 0;

	if(g_zombie[id1] && g_zombie[id2] || !g_zombie[id1] && !g_zombie[id2])
		return 1;

	return 0;
}

stock damage_dealth(attacker, victim, damage) {
	if(!is_user_valid_alive(attacker) || !is_user_valid_alive(victim))
		return;

	if(victim == attacker || isSameTeam(attacker, victim) || get_pcvar_num(cvar_ammodamage_quantity) <= 0)
		return;

	if(!g_zombie[attacker]) { // Reward ammo packs
		if(get_pcvar_num(cvar_ammodamage) <= 0)
			return;

		if(isCustomSpecialHuman(attacker)) {
			if(ArrayGetCell(g_hm_sp_ignoreammo, g_hm_special[attacker]-MAX_SPECIALS_HUMANS) <= 0)
				g_damagedealt[attacker] += damage // Store damage dealt
		}
		else {
			if(isDefaultHuman(attacker) || (isDefaultSpecialHuman(attacker) && !get_pcvar_num(cvar_hm_ignore_ammo[g_hm_special[attacker]])))
				g_damagedealt[attacker] += damage // Store damage dealt
		}

	}
	else {
		if(get_pcvar_num(cvar_ammodamage_zombie) <= 0)
			return;

		if(isCustomSpecialZombie(attacker)) {
			if(ArrayGetCell(g_zm_sp_ignoreammo, g_zm_special[attacker]-MAX_SPECIALS_ZOMBIES) <= 0)
				g_damagedealt[attacker] += damage // Store damage dealt
		}
		else {
			if(isDefaultZombie(attacker) || (isDefaultSpecialZombie(attacker) && !get_pcvar_num(cvar_zm_ignore_ammo[g_zm_special[attacker]])))
				g_damagedealt[attacker] += damage // Store damage dealt
		}
	}

	// Give rewards according to damage dealt [Like in zp 5.0]
	how_many_rewards = g_damagedealt[attacker] / get_pcvar_num(g_zombie[attacker] ? cvar_ammodamage_zombie : cvar_ammodamage)

	if(how_many_rewards > 10)
		how_many_rewards = 10; // Limiting to prevent farm

	if(how_many_rewards > 0) {
		g_ammopacks[attacker] += get_pcvar_num(cvar_ammodamage_quantity) * how_many_rewards
		//g_damagedealt[attacker] -= get_pcvar_num(cvar_ammodamage) * how_many_rewards
		g_damagedealt[attacker] = 0
	}
}

public is_gamemode_enable(modeid) {
	if(modeid <= MODE_NONE)
		return 0

	if(modeid == MODE_INFECTION)
		return 1;

	if(modeid < MAX_GAME_MODES) { // Internal Game Modes
		static CvarValue;
		CvarValue = get_pcvar_num(cvar_mod_enable[modeid]);

		if(!CheckAllowed(CvarValue))
			return 0

		switch(modeid) {
			case MODE_NEMESIS: if(!zm_special_enable[NEMESIS]) return 0;
			case MODE_ASSASSIN: if(!zm_special_enable[ASSASSIN]) return 0;
			case MODE_PREDATOR: if(!zm_special_enable[PREDATOR]) return 0;
			case MODE_BOMBARDIER: if(!zm_special_enable[BOMBARDIER]) return 0;
			case MODE_DRAGON: if(!zm_special_enable[DRAGON]) return 0;
			case MODE_SURVIVOR: if(!hm_special_enable[SURVIVOR]) return 0;
			case MODE_SNIPER: if(!hm_special_enable[SNIPER]) return 0;
			case MODE_BERSERKER: if(!hm_special_enable[BERSERKER]) return 0;
			case MODE_WESKER: if(!hm_special_enable[WESKER]) return 0;
			case MODE_SPY: if(!hm_special_enable[SPY]) return 0;
		}

		if((modeid == MODE_PLAGUE || modeid == MODE_LNJ) && (!zm_special_enable[NEMESIS] || !hm_special_enable[SURVIVOR]))
			return 0
	}
	else { // Custom/External game modes
		if((modeid-MAX_GAME_MODES) >= ArraySize(g_gm_enable))
			return 0

		if(ArrayGetCell(g_gm_enable, (modeid - MAX_GAME_MODES)) > 0 && !g_escape_map
		|| ArrayGetCell(g_gm_enable_on_ze_map, (modeid - MAX_GAME_MODES)) > 0 && g_escape_map)
			return 1
	}

	return 1
}
precache_player_model(const modelname[]) {
	static longname[128], index
	formatex(longname, charsmax(longname), "models/player/%s/%s.mdl", modelname, modelname)
	index = engfunc(EngFunc_PrecacheModel, longname)

	if(g_force_consistency == 1) force_unmodified(force_model_samebounds, {0,0,0}, {0,0,0}, longname)
	if(g_force_consistency == 2) force_unmodified(force_exactfile, {0,0,0}, {0,0,0}, longname)

	copy(longname[strlen(longname)-4], charsmax(longname) - (strlen(longname)-4), "T.mdl")
	if(file_exists(longname)) engfunc(EngFunc_PrecacheModel, longname)

	return index
}

public set_player_light(id, const LightStyle[]) {
	if(!is_user_valid_connected(id))
		return

	if(is_user_bot(id) || is_user_hltv(id))
		return;

	message_begin(MSG_ONE_UNRELIABLE, SVC_LIGHTSTYLE, .player = id)
	write_byte(0)
	write_string(LightStyle)
	message_end()
}

public set_user_fade_nvg(id, nosound) {
	if(!is_user_connected(id))
		return PLUGIN_HANDLED

	if(!nosound)
		client_cmd(id, "spk items/nvg_%s.wav", g_nvisionenabled[id] ? "on" : "off")

	set_fade_nvg(id)

	return 0
}

public set_fade_nvg(id) {
	if(!is_user_valid_connected(id))
		return;

	static alpha
	if(g_nvisionenabled[id]) alpha = get_pcvar_num(cvar_nvg_alpha)
	else alpha = 0

	message_begin(MSG_ONE_UNRELIABLE, g_msgScreenFade, _, id)
	write_short(0) // duration
	write_short(0) // hold time
	write_short(0x0004) // fade type

	// Zombie
	if(g_zombie[id] && is_user_valid_alive(id)) {
		if(isCustomSpecialZombie(id)) {
			write_byte(ArrayGetCell(g_zm_sp_r, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)) // r
			write_byte(ArrayGetCell(g_zm_sp_g, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)) // g
			write_byte(ArrayGetCell(g_zm_sp_b, g_zm_special[id]-MAX_SPECIALS_ZOMBIES)) // b
		}
		else if(isDefaultSpecialZombie(id)) {
			write_byte(get_pcvar_num(cvar_zm_red[g_zm_special[id]])) // r
			write_byte(get_pcvar_num(cvar_zm_green[g_zm_special[id]])) // g
			write_byte(get_pcvar_num(cvar_zm_blue[g_zm_special[id]])) // b
		}
		else {
			switch(g_nv_color[1][id]) {
				case 1: g_nvrgb = { 255, 255, 255 }
				case 2: g_nvrgb = { 255, 0, 0 }
				case 3: g_nvrgb = { 0, 255, 0 }
				case 4: g_nvrgb = { 0, 0, 255 }
				case 5: g_nvrgb = { 0, 255, 255 }
				case 6: g_nvrgb = { 255, 0, 255 }
				case 7: g_nvrgb = { 255, 255, 0 }
				default: {
					g_nvrgb[0] = get_pcvar_num(cvar_zombie_nvsion_rgb[0])
					g_nvrgb[1] = get_pcvar_num(cvar_zombie_nvsion_rgb[1])
					g_nvrgb[2] = get_pcvar_num(cvar_zombie_nvsion_rgb[2])
				}
			}
			write_byte(g_nvrgb[0]) // r
			write_byte(g_nvrgb[1]) // g
			write_byte(g_nvrgb[2]) // b
		}
	}
	else  { // Human / Spectator in normal round
		if(isCustomSpecialHuman(id)) {
			write_byte(ArrayGetCell(g_hm_sp_r, g_hm_special[id]-MAX_SPECIALS_HUMANS)) // r
			write_byte(ArrayGetCell(g_hm_sp_g, g_hm_special[id]-MAX_SPECIALS_HUMANS)) // g
			write_byte(ArrayGetCell(g_hm_sp_b, g_hm_special[id]-MAX_SPECIALS_HUMANS)) // b
		}
		else if(isDefaultSpecialHuman(id)) {
			write_byte(get_pcvar_num(cvar_hm_red[g_hm_special[id]])) // r
			write_byte(get_pcvar_num(cvar_hm_green[g_hm_special[id]])) // g
			write_byte(get_pcvar_num(cvar_hm_blue[g_hm_special[id]])) // b
		}
		else {
			switch(g_nv_color[0][id]) {
				case 1: g_nvrgb = { 255, 255, 255 }
				case 2: g_nvrgb = { 255, 0, 0 }
				case 3: g_nvrgb = { 0, 255, 0 }
				case 4: g_nvrgb = { 0, 0, 255 }
				case 5: g_nvrgb = { 0, 255, 255 }
				case 6: g_nvrgb = { 255, 0, 255 }
				case 7: g_nvrgb = { 255, 255, 0 }
				default: {
					g_nvrgb[0] = get_pcvar_num(cvar_hm_red[0])
					g_nvrgb[1] = get_pcvar_num(cvar_hm_green[0])
					g_nvrgb[2] = get_pcvar_num(cvar_hm_blue[0])
				}
			}
			write_byte(g_nvrgb[0]) // r
			write_byte(g_nvrgb[1]) // g
			write_byte(g_nvrgb[2]) // b
		}
	}
	write_byte(alpha) // alpha
	message_end()

	if(g_nvisionenabled[id]) {
		set_player_light(id, "z")
	}
	else {
		static lighting[5]
		if(g_custom_light) formatex(lighting, charsmax(lighting), custom_lighting)
		else if(g_currentmode == MODE_ASSASSIN) formatex(lighting, charsmax(lighting), "a") // no lighting in assassin round
		else get_pcvar_string(cvar_lighting, lighting, charsmax(lighting))
		strtolower(lighting)
		set_player_light(id, lighting)
	}
}
public user_nightvision(id, enable) { // Nightvision toggle
	if(g_nvg_enabled_mode[id] != get_pcvar_num(cvar_customnvg)) {
		nvision_toggle_off(id)
		if(enable) g_nvisionenabled[id] = true
	}
	if(g_nvision[id]) {
		switch(get_pcvar_num(cvar_customnvg)) {
			case 0: set_user_gnvision(id, enable)
			case 1: {
				remove_task(id+TASK_NVISION)
				if(enable) set_task(0.1, "set_user_nvision", id+TASK_NVISION, _, _, "b")
			}
			case 2:
				set_user_fade_nvg(id, 0)

			default:
				set_user_fade_nvg(id, 0)
		}
		if(enable) g_nvg_enabled_mode[id] = get_pcvar_num(cvar_customnvg)
	}

	return PLUGIN_HANDLED;
}
public set_all_light(const lighting[]) {
	static i;
	for(i = 1 ; i <= MaxClients; i++) {
		if(!g_isconnected[i])
			continue;

		if(g_nvisionenabled[i] && get_pcvar_num(cvar_customnvg) >= 2)
			continue;

		set_player_light(i, lighting)
	}
}
public nvision_toggle_off(id) {
	if(!g_isconnected[id])
		return;

	if(g_nvisionenabled[id]) {
		g_nvisionenabled[id] = false
		switch(g_nvg_enabled_mode[id]) {
			case 0: set_user_gnvision(id, 0);
			case 1: remove_task(id+TASK_NVISION);
			case 2: set_user_fade_nvg(id, 0);
			default: set_user_fade_nvg(id, 0);
		}
	}
}

// Auto Adding Params for Noobs that having "ArrayGet..." Error
stock AddSettingParamForNoobs(const IniFile[], Array:array_main, Array:array_check, const section_name[], const key[], type=0) {
	if(!g_automate_setting)
		return;

	if(array_main == Invalid_Array) {
		log_error(AMX_ERR_PARAMS, "Invalid array_main, ID: %d, section: %s, key: %s", array_main, section_name, key)
		return;
	}
	else if(array_check == Invalid_Array) {
		log_error(AMX_ERR_PARAMS, "Invalid array_check, ID: %d, section: %s, key: %s", array_main, section_name, key)
		return;
	}

	static ar_size_main, ar_size_check
	ar_size_main = ArraySize(array_main)
	ar_size_check = ArraySize(array_check)
	if(ar_size_main <= ar_size_check)
		return;

	static max_param_for_add, i;
	max_param_for_add = ar_size_main-ar_size_check

	for(i = 0; i < max_param_for_add; i++) {
		switch(type) {
			case 1: ArrayPushString(array_check, "!add_the_param_here"); // Not here, in your .ini file
			case 2: ArrayPushCell(array_check, 0.0);
			default: ArrayPushCell(array_check, 0);
		}
	}

	switch(type) {
		case 1: amx_save_setting_string_arr(IniFile, section_name, key, array_check);
		case 2: amx_save_setting_float_arr(IniFile, section_name, key, array_check);
		default: amx_save_setting_int_arr(IniFile, section_name, key, array_check);
	}

	log_amx("[ZPSp] Warning: You need more careful for adding some model/ambience/internal extra item")
	log_amx("--> File: %s, section: %s, key: %s", IniFile, section_name, key)

	static date[100]; format_time(date, charsmax(date), "%d-%m-%Y");
	log_to_file(fmt("zombie_plague_special_%s.log", date), "[ZPSp] Warning: You need more careful for adding some model/ambience/internal extra item")
	log_to_file(fmt("zombie_plague_special_%s.log", date),  "--> File: %s, section: %s, key: %s", IniFile, section_name, key)
}

static g_flame_reg
public Flame_Create(victim, Float:Duration) {
	if(!is_user_valid_alive(victim))
		return;

	if(g_burning[victim])
		return;

	static ent, Float:gametime;
	ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_sprite"))
	if(!pev_valid(ent))
		return;

	gametime = get_gametime();

	engfunc(EngFunc_SetModel, ent, sprite_grenade_fire)
	set_pev(ent, pev_classname, FLAME_CLASSNAME)
	set_pev(ent, pev_owner, victim)
	set_pev(ent, pev_aiment, victim)
	set_pev(ent, pev_movetype, MOVETYPE_FOLLOW)
	set_pev(ent, pev_fuser4, Duration)
	set_pev(ent, pev_fuser2, gametime)
	set_pev(ent, pev_solid, SOLID_NOT)

	g_burning[victim] = true

	set_pev(ent, pev_animtime, gametime)
	set_pev(ent, pev_framerate, 20.0)
	// set_pev(ent, pev_frame, 0.0)
	set_pev(ent, pev_scale, random_float(0.5, 1.2))
	set_pev(ent, pev_rendermode, kRenderTransAdd)
	set_pev(ent, pev_renderamt, 255.0)
	set_pev(ent, pev_nextthink, gametime + 0.2)
	set_pev(ent, pev_spawnflags, SF_SPRITE_STARTON)
	dllfunc(DLLFunc_Spawn, ent)

	if(!g_flame_reg) {
		RegisterHamFromEntity(Ham_Think, ent, "Flame_Think");
		g_flame_reg = 1
	}
}
public Flame_Think(ent) { // Burning Flames
	if(!pev_valid(ent))
		return HAM_IGNORED;

	static classname[32]; // Fix env_sprite Conflict
	pev(ent, pev_classname, classname, charsmax(classname))
	if(!equal(classname, FLAME_CLASSNAME))
		return HAM_IGNORED

	static victim, flags, Float:gametime, Float:Time_A, Float:Time_B;
	gametime = get_gametime();
	victim = pev(ent, pev_owner)
	flags = pev(victim, pev_flags)
	pev(ent, pev_fuser4, Time_A)
	pev(ent, pev_fuser2, Time_B)

	if(!g_isalive[victim] || g_nodamage[victim] || (flags & FL_INWATER) || gametime - Time_A > Time_B || !g_burning[victim]) { // Madness mode - in water - burning stopped
		g_burning[victim] = false

		static origin[3], Float:fOrigin[3];
		pev(ent, pev_origin, fOrigin)
		FVecIVec(fOrigin, origin)
		// static origin[3]; get_user_origin(victim, origin)
		set_pev(ent, pev_owner, -1)
		set_pev(ent, pev_aiment, -1)
		set_pev(ent, pev_movetype, MOVETYPE_NONE)

		// Smoke sprite
		message_begin(MSG_PVS, SVC_TEMPENTITY, origin)
		write_byte(TE_SMOKE) // TE id
		write_coord(origin[0]) // x
		write_coord(origin[1]) // y
		write_coord(origin[2]-50) // z
		write_short(g_smokeSpr) // sprite
		write_byte(random_num(15, 20)) // scale
		write_byte(random_num(10, 20)) // framerate
		message_end()

		engfunc(EngFunc_RemoveEntity, ent)
		return HAM_SUPERCEDE;
	}

	if(isDefaultZombie(victim)) {
		// Randomly play burning zombie scream sounds
		static Float:velocity[3], sound[64]
		if(!random_num(0, 20)) {
			ArrayGetString(ar_sound[13], random_num(0, ArraySize(ar_sound[13]) - 1), sound, charsmax(sound))
			emit_sound(victim, CHAN_VOICE, sound, 1.0, ATTN_NORM, 0, PITCH_NORM)
		}

		// Fire slow down, unless special zombies
		if((flags & FL_ONGROUND) && get_pcvar_float(cvar_fireslowdown) > 0.0) {
			pev(victim, pev_velocity, velocity)
			xs_vec_mul_scalar(velocity, get_pcvar_float(cvar_fireslowdown), velocity)
			set_pev(victim, pev_velocity, velocity)
		}
	}
	// Get player's health
	static health; health = fm_get_user_health(victim)

	// Take damage from the fire
	if(health - floatround(get_pcvar_float(cvar_firedamage), floatround_ceil) > 0)
		fm_set_user_health(victim, health - floatround(get_pcvar_float(cvar_firedamage), floatround_ceil))

	set_pev(ent, pev_scale, random_float(0.5, 1.2))
	set_pev(ent, pev_nextthink, gametime + 0.2)
	return HAM_IGNORED;
}