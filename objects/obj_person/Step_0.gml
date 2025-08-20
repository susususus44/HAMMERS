if (state == 0) {
	image_yscale -= 0.01
	if (image_yscale <= 0.8)
		state = 1
}
else {
	image_yscale += 0.01
	if (image_yscale >= 1)
		state = 0
}
x += image_xscale * 8
if (image_xscale == 1) {
	if (x > room_width + 50)
		instance_destroy(id, false)
}
if (image_xscale == -1) {
	if (x < 0 - 50)
		instance_destroy(id, false)
}