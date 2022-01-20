//////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////// ZOMBIE PLAGUE SPECIAL /////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

Zombie Plague Special is a unofficial version edited in ZPA 1.6.1's core using a stable,
improved and optimized code which avoids server crashes and reduce lag. 
And Some modes are added like Berserker (Knifer), Predator (NightCrawler),
Bombardier (From ZP Shade), Wesker (From Zombie Apocalipse), Spy and Dragon

* Game Play Modes:
	- Normal Modes: Simple Infection, Multiple Infection, Swarm Mode, Plague Mode, Armageddon
	- Special Modes: Nemesis, Survivor, Assassin, Sniper, Berserker, Predator, Wesker, Bombardier, Spy, Dragon
	- Custom Modes (If Enable): Assassin Vs Sniper, Nightmare, Remix

* Special Classes Descriptions:
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

* Credits:
	- MeRcyLeZZ: for original zp version
	- ROKronoS: for idea of Bombardier Mod
	- abdul-rehman and ZPA Team: for zpa version and some special mods
	- Junin: For Spy mode Idea
	- Perfect Scrash: For Adding New Modes, fix and Optimizing Code

* Official Link of Mod:
	https://forums.alliedmods.net/showthread.php?t=260845

* 4.4 Beta:
	- Fixed Plague Mod
	- Added ZP_CHAT_TAG in lang (You can change chat tag now) [Lang updated: update lang for prevent bugs]
	- Fixed Server Crash when "zp_human_damage_reward"/"zp_zombie_damage_reward" are disable
	- Now Ammo Pack by Damage dealth are now works like in zp 5.0
	- Added Cvar "zp_ammopack_damage"
	- Changed Native "zp_set_extra_damage"
	- Fixed Native in include: "zp_get_special_class_name"
	- Fixed Trigger Hurt kill
	
	- Beta Update 1/3/20
		- Fixed painfree/knockback
		- Added Support to change roundtime in zombie_plague_special.ini

	- Beta Update 25/3/20
		- Added Respawn limit cvars by gamemode (Same with custom gamemodes but you can change only in zpsp_gamemodes.ini)
		- Added Native: zpsp_register_gamemode(const name[], flags, chance, allow, dm_mode, resp_limit=0, enable_in_ze=0)
		- Added Custom Death sound for Normal/Special Zombie Classes (Now you can change in .ini files for any class)
		- Added Pain Sounds for specific zombie class (You can change in zpsp_zombieclasses.ini)
		- Added Native: zp_get_custom_extra_start()
		
	- Beta Update 15/06/20
		- Fixed Not Precached Sound '0'
		- Added Fade Nightvision Mode (Can change by cvar "zp_nvg_custom")
		- Added Cvar: "zp_nvg_fade_alpha"
		- Added Madness delay (After Use)
		- Added Cvar: "zp_extra_madness_use_delay"

	- Beta Update: 05/12/20 (Final Beta - If dont have bugs consider Official 4.4 version)
		- Fixed Bug when joins spec before round begins
		- Added Human Speed by Weapon Weight (Weapon Speed Multi - You can change in zombie_plague_special.ini) [Only For Normal Humans]
		- Added Cvar: "zp_human_wpn_weight_enable"
		- Added Lang Option for Extra Item Name, Gamemode Name, Special Class Name, Zombie Class Name/Info, Weapons/Custom Weapons Name. Just edit "zpsp_lang_itens_classes.txt"
	
	- Fixing 08/12/20:
		- Fixed Armageddon Respawn - Before peoples respawn as human and not survivor
		- Fixed Lang from Additional Extra Weapons (Grenades/AWP/ETC.)
	
	- Final Release:
		- REMOVED Amx 1.8.2 SUPORT
		- Fixed trigger_hurt when killing with bugged players.
		- Fixed chat lang bug. (Sometimes appears in [en] language not in players language)
		- Added Native: zp_force_user_class(id, specialid, zombie)
		- Added Native: zpsp_set_user_frozen(id, set, Float:Duration = -1.0)
		- Added Native: zpsp_set_user_burn(id, set, Float:Duration = -1.0)