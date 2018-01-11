key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_ability = keyboard_check_pressed(vk_lshift);
key_choose_left = keyboard_check_pressed(vk_left);
key_choose_right = keyboard_check_pressed(vk_right);
key_exit = keyboard_check_pressed(vk_escape);

if (key_left) {
	image_xscale = 0.8;
}

if (key_right) {
	image_xscale = -0.8;
}

if (key_ability) {
	
}

if (key_choose_left) {
	
}

if (key_choose_right) {
	
}

if (key_exit) {
	game_end();
}

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,o_Floor)) && (key_jump) {
	vsp = -15;
}

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