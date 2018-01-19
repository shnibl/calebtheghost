hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 8;
ability = 1;
abilitytimer = 121;
global.fading = 0;
global.vacuumtimer = 31;
global.fantimer = 31;
global.actimer = 31;
global.starCollected = false;
image_xscale = 0.8;
image_yscale = 0.8;
image_speed = 0;
image_index = 0;
window_set_fullscreen(true);

if (room == Level1) {
	var lvl1inst = instance_create_layer(-2, 1023, "Floor", o_Block);
	with (lvl1inst) {
		image_index = 1;
		image_xscale = 200;
	}
}

if (room == Level2) {
	var lvl2inst = instance_create_layer(0, 1440, "Instances", o_Block);
	with (lvl2inst) {
		image_index = 1;
		image_xscale = 200;
	}
}

if (room == Level3) {
	var lvl3inst = instance_create_layer(0, 1436, "Instances", o_Block);
	with (lvl3inst) {
		image_index = 1;
		image_xscale = 200;
	}
}

if (room == Level4) {
	audio_stop_all();
	audio_play_sound(boss, 0, true);
	var lvl4inst = instance_create_layer(0, 1184, "Instances", o_Block);
	with (lvl4inst) {
		image_index = 1;
		image_xscale = 200;
	}
}

if (room != Level4) && (room != FinalRoom) {
	image_xscale = -0.8;
}

if (room == FinalRoom) {
	y += 4;
	audio_stop_all();
	audio_play_sound(win, 0, true);
}