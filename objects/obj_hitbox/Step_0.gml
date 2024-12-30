with (obj_person) {
	if (place_meeting(x, y, obj_hitbox)) {
		instance_destroy()
		global.count++
		audio_play_sound(SCREAM, 1, false)
	}
}