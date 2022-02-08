/*================================================================================
	
	-----------------------------------
	-*- [ZP] Human Class Example -*-
	-----------------------------------
	
	~~~~~~~~~~~~~~~
	- Description -
	~~~~~~~~~~~~~~~
	
	This plugin adds the example human class to Zombie Plague.
	Feel free to modify their attributes to your liking.
	
================================================================================*/

#include <amxmodx>
#include <fakemeta>
#include <zombie_plague_special>

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Human Classic
new const hclass1_name[] = { "Classic" }
new const hclass1_info[] = { "-=Balanced=-" }
const hclass1_health = 0 // 0 - For use default health (Cvar: zp_human_health)
const hclass1_armor = 0
const hclass1_speed = 0 // 0 - For use default speed (Cvar: zp_human_speed)
const Float:hclass1_gravity = 0.0 // 0 - For default gravity (Cvar: zp_human_gravity)

// Human Raptor
new const hclass2_name[] = { "Raptor" }
new const hclass2_info[] = { "Speed++" }
const hclass2_health = 250
const hclass2_armor = 0
const hclass2_speed = 300
const Float:hclass2_gravity = 0.8

// Human Armor
new const hclass3_name[] = { "Armor" }
new const hclass3_info[] = { "Armor++" }
const hclass3_health = 300
const hclass3_armor = 200
const hclass3_speed = 250
const Float:hclass3_gravity = 0.9

// Human Tank
new const hclass4_name[] = { "Tank" }
new const hclass4_info[] = { "HP++" }
const hclass4_health = 700
const hclass4_armor = 0
const hclass4_speed = 200
const Float:hclass4_gravity = 1.0

// Human Light
new const hclass5_name[] = { "Light" }
new const hclass5_info[] = { "Gravity--" }
const hclass5_health = 300
const hclass5_armor = 0
const hclass5_speed = 220
const Float:hclass5_gravity = 0.3

/*============================================================================*/

// Zombie Classes MUST be registered on plugin_precache
public plugin_precache() {
	register_plugin("[ZP] Human Classes", "1.0", "Perf. Scrash")
	
	// Register all classes
	zp_register_human_class(hclass1_name, hclass1_info, hclass1_health, hclass1_armor, hclass1_speed, hclass1_gravity)
	zp_register_human_class(hclass2_name, hclass2_info, hclass2_health, hclass2_armor, hclass2_speed, hclass2_gravity)
	zp_register_human_class(hclass3_name, hclass3_info, hclass3_health, hclass3_armor, hclass3_speed, hclass3_gravity)
	zp_register_human_class(hclass4_name, hclass4_info, hclass4_health, hclass4_armor, hclass4_speed, hclass4_gravity)
	zp_register_human_class(hclass5_name, hclass5_info, hclass5_health, hclass5_armor, hclass5_speed, hclass5_gravity)
}