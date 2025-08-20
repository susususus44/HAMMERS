if (state == 0) {
	x = lerp(x, mouse_x, 0.1)
	y = lerp(y, mouse_y, 0.1)
	window_set_cursor(cr_none)
	if (image_xscale == 1 || image_xscale == -1) {
	if (keyboard_check_pressed(ord("X"))) {
		state = 2
	}
	if (mouse_check_button_pressed(mb_left)) {
		instance_create_depth(x - 369 * image_xscale, y + 107, depth, obj_sizzle)
		instance_create_depth(x - 369 * image_xscale, y + 107, depth, obj_hitbox)
		image_angle = 48 * image_xscale
		state = 1
		wait = 50
		mosx = display_mouse_get_x()
		mosy = display_mouse_get_y()
		audio_play_sound(HIT, 1, false)
	}
	}
}
else if (state == 1) {
	display_mouse_set(mosx, mosy)
	if (wait > 0)
		wait--
	else {
		image_angle -= 1 * image_xscale
		if ((image_xscale == 1 ? (image_angle <= 0) : (image_angle >= 0))) {
			state = 0
			image_angle = 0
		}
	}
}
else if (state == 2) {
	x = lerp(x, mouse_x, 0.1)
	y = lerp(y, mouse_y, 0.1)
	window_set_cursor(cr_none)
	if (keyboard_check_pressed(ord("X")))
		state = 0
}
oldx = mouse_x
oldy = mouse_y
if (image_angle != 0)
	return;
if (oldx > x) {
	if (image_xscale != -1) {
		image_xscale -= 0.1
		if (image_xscale <= 0.4)
			image_xscale = -1
	}
}
else {
	if (image_xscale != 1) {
		image_xscale += 0.1;
		if (image_xscale >= -0.4)
			image_xscale = 1;
	}
}
if (state == 2)
	sprite_index = LICENSE
else
	sprite_index = HAMMER
