if (!fadein) {
	image_alpha += 0.02
	if (image_alpha >= 1.1) {
		fadein = true
		room_goto(targetRoom)
	}
}
else {
	image_alpha -= 0.02
	if (image_alpha <= 0)
		instance_destroy()
}
x = room_width / 2