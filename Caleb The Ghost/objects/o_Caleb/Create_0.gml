hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 8;
global.vacuumtimer = 31;
global.fantimer = 31;
global.actimer = 31;
global.starCollected = false;
image_xscale = 0.8;
image_yscale = 0.8;
image_speed = 0;
image_index = 0;
window_set_fullscreen(true);

if (room == FinalRoom) {
	y += 4
}

if (room != Level4) && (room != FinalRoom) {
	image_xscale = -0.8;
}