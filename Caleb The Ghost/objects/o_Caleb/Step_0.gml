if (global.title == false) && (room != FinalRoom) && (global.fading != 1){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_ability = keyboard_check_pressed(vk_lshift);
	
	if (key_left) {
		image_xscale = 0.8;
	}
	
	if (key_right) {
		image_xscale = -0.8;
	}
	
	if (key_ability) {
		if (ability > 0) {
			abilitytimer = 120;
		}
	}
	
	if (abilitytimer > 0) && (abilitytimer < 121) {
		image_index = 1;
		abilitytimer -= 1;
	}
	
	if (abilitytimer <= 0) {
		image_index = 0;
		ability = 0;
	}
	
	var move = key_right - key_left;
	
	hsp = move * walksp;
	
	vsp = vsp + grv;
	
	if (place_meeting(x,y+1,o_Block)) && (key_jump) {
		vsp = -15;
	}
	
	if (place_meeting(x+hsp,y,o_Block)) {
		while (!place_meeting(x+sign(hsp),y,o_Block)) {
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	
	x = x + hsp;
	
	if (place_meeting(x,y+vsp,o_Block)) {
		while (!place_meeting(x,y+sign(vsp),o_Block)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	
	y = y + vsp;
}

if (room == FinalRoom) {
	x -= 2;
	if (x < -100) {
		with (o_FinalRoom) {
			image_index = 1;
		}
	}
}

if (global.fantimer > 0) && (global.fantimer < 31) {
	x -= 10;
	global.fantimer -= 1;
}

if (global.actimer > 0) && (global.actimer < 31) {
	x += 10;
	global.actimer -= 1;
}

if (global.vacuumtimer > 0) && (global.vacuumtimer < 31) {
	x += 10;
	global.vacuumtimer -= 1;
}

key_exit = keyboard_check_pressed(vk_escape);

if (key_exit) {
	game_end();
}