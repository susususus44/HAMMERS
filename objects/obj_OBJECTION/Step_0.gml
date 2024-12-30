x += image_xscale * 4
if (image_xscale == 1) {
	if (x > room_width + 50)
		scr_endgame()
}
if (image_xscale == -1) {
	if (x < 0 - 50)
		scr_endgame()
}
if (place_meeting(x, y, obj_mouse)) {
	if (obj_mouse.state == 2)
		instance_destroy()
}