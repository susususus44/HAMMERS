function scr_fadeout(_room){
	with (instance_create_depth(x, y, -10000000000000000000000, obj_fade))
		targetRoom = _room
}