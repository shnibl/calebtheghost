if (room != Level4) {
	room_restart();
}

if (room == Level4) {
	with (o_Boss) {
		instance_destroy();
	}
}