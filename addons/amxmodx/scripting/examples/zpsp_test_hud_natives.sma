#include <amxmodx>
#include <zombie_plague_special>

public plugin_init() {
	register_plugin("[ZPSp] Test Hud Natives", "1.0", "Perf. Scrash");
}
public zp_player_show_hud(id, target, SpHudType:hudtype) {
	if(target) {
		zp_add_hud_text("- Spec Hud")
		return;
	}
	if(!is_user_alive(id))
		return;

	if(hudtype == HUD_DEFAULT) 
		zp_add_hud_text("^n[Hud Default]")
	else if(hudtype == HUD_CLASSIC)
		zp_add_hud_text("- Hud Classic")
	else if(hudtype == HUD_ANTRAX_STYLE || hudtype == HUD_CENTER_ANTRAX)
		zp_add_hud_text("^n[Hud AntRax]")
	else
		zp_add_hud_text("^n[Any other HUD]")

	zp_add_hud_text("^n[Concat Test]")
}	