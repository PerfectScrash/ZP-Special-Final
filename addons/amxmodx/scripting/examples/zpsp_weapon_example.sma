#include <amxmodx>
#include <zombie_plague_special>

#if ZPS_INC_VERSION < 45
	#assert Zombie Plague Special 4.5 Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

#define PLUGIN  "[ZPSp] Custom Weapon Example"
#define VERSION "1.1"
#define AUTHOR  "[P]erfect [S]crash"

new wpn_id[2]

public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR)
	
	wpn_id[0] = zp_register_weapon("Primary Weapon Example" , WPN_PRIMARY)
	wpn_id[1] = zp_register_weapon("Secondary Weapon Example" , WPN_SECONDARY)
}
public zp_weapon_selected_post(id, wpn_type, weaponid) {
	if(wpn_type == WPN_PRIMARY && weaponid == wpn_id[0]) {	
		zp_give_item(id, "weapon_g3sg1", 1)
	}
	else if(wpn_type == WPN_SECONDARY && weaponid == wpn_id[1]) {	
		zp_give_item(id, "weapon_deagle", 1)
	}
}
