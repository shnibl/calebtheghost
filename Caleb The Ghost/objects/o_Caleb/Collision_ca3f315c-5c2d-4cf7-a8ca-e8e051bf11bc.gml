if (room != Level4) && (image_index == 0){
	room_restart();
}

if (room == Level4) {
	global.fading = 1;
	with (o_Light) {
		instance_destroy();
	}
	with (o_HitBlock) {
		instance_destroy();
	}
}