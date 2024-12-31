draw_set_color(c_black)
for (var i = 0; i < 30; i++)
	draw_text(0, 68 * i - 25, "ENTER.TO.START.........................")
if (keyboard_check_pressed(vk_enter) && !instance_exists(obj_fade)) {
	scr_fadeout(STREETS)
}