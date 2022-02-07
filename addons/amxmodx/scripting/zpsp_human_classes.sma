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

native zp_register_human_class(const name[], const info[], hp, armor, speed, Float:gravity, use_lang=0, const name_lang_key[]="", const info_lang_key[]="");
native zp_get_user_human_class(id);
native zp_get_next_human_class(id);
native zp_set_user_human_class(id, classid);

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Classic Zombie Attributes
new const hclass1_name[] = { "Velocista" }
new const hclass1_info[] = { "Mais velocidade" }
const hclass1_health = 250
const hclass1_armor = 0
const hclass1_speed = 900
const Float:hclass1_gravity = 0.8

// Classic Zombie Attributes
new const hclass2_name[] = { "Colete" }
new const hclass2_info[] = { "Colete anti infeccao" }
const hclass2_health = 300
const hclass2_armor = 200
const hclass2_speed = 250
const Float:hclass2_gravity = 0.3

// Classic Zombie Attributes
new const hclass3_name[] = { "Tank" }
new const hclass3_info[] = { "Mais HP" }
const hclass3_health = 700
const hclass3_armor = 0
const hclass3_speed = 200
const Float:hclass3_gravity = 1.0

// Classic Zombie Attributes
new const hclass4_name[] = { "Leve" }
new const hclass4_info[] = { "Baixa Gravidade" }
const hclass4_health = 300
const hclass4_armor = 0
const hclass4_speed = 220
const Float:hclass4_gravity = 0.3

/*============================================================================*/

// Class IDs
new g_classid

// Zombie Classes MUST be registered on plugin_precache
public plugin_precache() {
	register_plugin("[ZP] Human Classes", "1.0", "Perf. Scrash")
	
	// Register all classes
	zp_register_human_class(hclass1_name, hclass1_info, hclass1_health, hclass1_armor, hclass1_speed, hclass1_gravity)
	g_classid = zp_register_human_class(hclass2_name, hclass2_info, hclass2_health, hclass2_armor, hclass2_speed, hclass2_gravity)
	zp_register_human_class(hclass3_name, hclass3_info, hclass3_health, hclass3_armor, hclass3_speed, hclass3_gravity)
	zp_register_human_class(hclass4_name, hclass4_info, hclass4_health, hclass4_armor, hclass4_speed, hclass4_gravity)
	//zp_register_human_class(hclass5_name, hclass5_info, hclass5_health, hclass5_armor, hclass5_speed, hclass5_gravity)
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