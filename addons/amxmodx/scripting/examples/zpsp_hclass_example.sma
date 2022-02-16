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
#include <zombie_plague_special>

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Classic Zombie Attributes
new const hclass_name[] = { "Sniper" }
new const hclass_info[] = { "Free G3SG1" }
const hclass_health = 300
const hclass_armor = 0
const hclass_speed = 240
const Float:hclass_gravity = 0.5
new const hclass_models[][] = { "vip" , "sas" , "urban" }

/*============================================================================*/

// Class IDs
new g_classid

// Zombie Classes MUST be registered on plugin_precache
public plugin_precache() {
	register_plugin("[ZP] Human Class Example", "1.0", "Perf. Scrash")
	
	// Register all classes
	g_classid = zp_register_human_class(hclass_name, hclass_info, hclass_health, hclass_armor, hclass_speed, hclass_gravity)

	// Register models
	for (new index = 0; index < sizeof hclass_models; index++)
		zp_register_hclass_model(g_classid, hclass_models[index])
}

// Set attributes when spawn/disinfect
/* 
public zp_user_humanized_post(id) {
	if(zp_get_user_human_class(id) == g_classid)
		hclass_attributes(id)
}
public zp_player_spawn_post(id) {
	if(zp_get_user_human_class(id) == g_classid)
		hclass_attributes(id)
} 
*/

// Set Attributes after choose weapons
public zp_weapon_selected_post(id, wpn_type) {
	if(wpn_type == WPN_SECONDARY && zp_get_user_human_class(id) == g_classid)
		hclass_attributes(id)
}

hclass_attributes(id) {
	if(!is_user_alive(id))
		return;

	zp_give_item(id, "weapon_g3sg1", 1);
}