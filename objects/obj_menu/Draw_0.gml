draw_set_color(c_black)
for (var i = 0; i < 30; i++)
	draw_text(0, 68 * i - 25, "ENTER.TO.START.........................")
if (keyboard_check_pressed(vk_enter) && !instance_exists(obj_fade)) {
	scr_fadeout(STREETS)
}
angle += anglepos
var _fx_tint = fx_create("_filter_twirl_distort");
fx_set_parameter(_fx_tint, "g_DistortAngle", angle);
fx_set_parameter(_fx_tint, "g_DistortRadius", 1.2);
layer_set_fx("Effect_1", _fx_tint);