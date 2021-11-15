#include <amxmodx>
#include <fun>
#include <zombie_plague_special>

#if ZPS_INC_VERSION < 44
	#assert Zombie Plague Special 4.4 Include File Required. Download Link: https://forums.alliedmods.net/showthread.php?t=260845
#endif

#define PLUGIN  "[ZPSp] New Native of Extra Item Example"
#define VERSION "1.1"
#define AUTHOR  "[P]erfect [S]crash"

new g_itemid
public plugin_init()
{
	register_plugin(PLUGIN, VERSION, AUTHOR)

	// New Extra Item Native Can Make Extra Item for Wesker, Spy, Bombardier, Dragon and Custom Specials Classes 
	// That are impossible with old native (Old native are working yet for compatibility)
	g_itemid = zpsp_register_extra_item("New Native Extra Example", 0, "BERSERKER, SPY, WESKER, MORPHEUS, BOMBARDIER", 1, "LANG_ITEM_EXAMPLE")

}

public zp_extra_item_selected(id, itemid)
{
	if(g_itemid != itemid)
		return;

	give_item(id, "weapon_hegrenade")
	give_item(id, "weapon_g3sg1")
}
