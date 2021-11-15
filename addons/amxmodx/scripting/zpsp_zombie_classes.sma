/*================================================================================
	
	-----------------------------------
	-*- [ZP] Default Zombie Classes -*-
	-----------------------------------
	
	~~~~~~~~~~~~~~~
	- Description -
	~~~~~~~~~~~~~~~
	
	This plugin adds the default zombie classes to Zombie Plague.
	Feel free to modify their attributes to your liking.
	
	Note: If zombie classes are disabled, the first registered class
	will be used for all players (by default, Classic Zombie).
	
================================================================================*/

#include <amxmodx>
#include <fakemeta>
#include <zombie_plague_special>

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Classic Zombie Attributes
new const zclass1_name[] = { "Classic Zombie" }
new const zclass1_info[] = { "=Balanced=" }
new const zclass1_model[] = { "zombie_source" }
new const zclass1_clawmodel[] = { "v_knife_zombie.mdl" }
const zclass1_health = 1800
const zclass1_speed = 190
const Float:zclass1_gravity = 1.0
const Float:zclass1_knockback = 1.0

// Raptor Zombie Attributes
new const zclass2_name[] = { "Raptor Zombie" }
new const zclass2_info[] = { "HP-- Speed++ Knockback++" }
new const zclass2_model[] = { "zombie_source" }
new const zclass2_clawmodel[] = { "v_knife_zombie.mdl" }
const zclass2_health = 900
const zclass2_speed = 225
const Float:zclass2_gravity = 1.0
const Float:zclass2_knockback = 1.5

// Poison Zombie Attributes
new const zclass3_name[] = { "Poison Zombie" }
new const zclass3_info[] = { "HP- Jump+ Knockback+" }
new const zclass3_model[] = { "zombie_source" }
new const zclass3_clawmodel[] = { "v_knife_zombie.mdl" }
const zclass3_health = 1400
const zclass3_speed = 190
const Float:zclass3_gravity = 0.75
const Float:zclass3_knockback = 1.25

// Big Zombie Attributes
new const zclass4_name[] = { "Big Zombie" }
new const zclass4_info[] = { "HP++ Speed- Knockback--" }
new const zclass4_model[] = { "zombie_source" }
new const zclass4_clawmodel[] = { "v_knife_zombie.mdl" }
const zclass4_health = 2700
const zclass4_speed = 155
const Float:zclass4_gravity = 1.0
const Float:zclass4_knockback = 0.5

// Leech Zombie Attributes
new const zclass5_name[] = { "Leech Zombie" }
new const zclass5_info[] = { "HP- Knockback+ Leech++" }
new const zclass5_model[] = { "zombie_source" }
new const zclass5_clawmodel[] = { "v_knife_zombie.mdl" }
const zclass5_health = 1300
const zclass5_speed = 190
const Float:zclass5_gravity = 1.0
const Float:zclass5_knockback = 1.25
const zclass5_infecthp = 200 // extra hp for infections

/*============================================================================*/

// Class IDs
new g_zclass_leech

// Zombie Classes MUST be registered on plugin_precache
public plugin_precache()
{
	register_plugin("[ZP] Default Zombie Classes", "4.3 Fix5", "MeRcyLeZZ")
	
	// Register all classes
	zp_register_zombie_class(zclass1_name, zclass1_info, zclass1_model, zclass1_clawmodel, zclass1_health, zclass1_speed, zclass1_gravity, zclass1_knockback)
	zp_register_zombie_class(zclass2_name, zclass2_info, zclass2_model, zclass2_clawmodel, zclass2_health, zclass2_speed, zclass2_gravity, zclass2_knockback)
	zp_register_zombie_class(zclass3_name, zclass3_info, zclass3_model, zclass3_clawmodel, zclass3_health, zclass3_speed, zclass3_gravity, zclass3_knockback)
	zp_register_zombie_class(zclass4_name, zclass4_info, zclass4_model, zclass4_clawmodel, zclass4_health, zclass4_speed, zclass4_gravity, zclass4_knockback)
	g_zclass_leech = zp_register_zombie_class(zclass5_name, zclass5_info, zclass5_model, zclass5_clawmodel, zclass5_health, zclass5_speed, zclass5_gravity, zclass5_knockback)
}

// User Infected forward
public zp_user_infected_post(id, infector)
{
	// If attacker is a leech zombie, gets extra hp
	if (is_user_alive(infector) && zp_get_user_zombie_class(infector) == g_zclass_leech && !zp_get_zombie_special_class(id))
		set_pev(infector, pev_health, float(pev(infector, pev_health) + zclass5_infecthp))
}
