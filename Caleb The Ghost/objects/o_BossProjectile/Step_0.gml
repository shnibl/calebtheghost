if (place_meeting(x, y, o_Block)) {
	if (global.bullettimer > 0) {
		image_index = 1;
		global.bullettimer -= 1;
	}
	if (global.bullettimer == 0) {
		instance_destroy();
	}
}