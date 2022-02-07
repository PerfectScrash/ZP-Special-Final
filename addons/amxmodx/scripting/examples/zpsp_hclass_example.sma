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

native zp_register_human_class(const name[], const info[], hp, armor, speed, Float:gravity);
native zp_get_user_human_class(id);
native zp_get_next_human_class(id);
native zp_set_user_human_class(id, classid);

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Classic Zombie Attributes
new const hclass_name[] = { "Humano Colete" }
new const hclass_info[] = { "=Teste=" }
const hclass_health = 500
const hclass_armor = 200
const hclass_speed = 900
const Float:hclass_gravity = 0.3

/*============================================================================*/

// Class IDs
new g_classid

// Zombie Classes MUST be registered on plugin_precache
public plugin_precache() {
	register_plugin("[ZP] Human Class Example", "1.0", "Perf. Scrash")
	
	// Register all classes
	g_classid = zp_register_human_class(hclass_name, hclass_info, hclass_health, hclass_armor, hclass_speed, hclass_gravity)
}

public zp_user_humanized_post(id) {
	if(zp_get_user_human_class(id) == g_classid)
		hclass_attributes(id)
}
public zp_player_spawn_post(id) {
	if(zp_get_user_human_class(id) == g_classid)
		hclass_attributes(id)
}

hclass_attributes(id) {
	if(!is_user_alive(id))
		return;

	client_print_color(id, print_team_default, "Classe Colete Teste")
}