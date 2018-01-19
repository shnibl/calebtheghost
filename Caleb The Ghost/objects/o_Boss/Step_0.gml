var bullet1 = instance_create_layer(x, y + random_range(100, -200), "Projectiles", o_BossProjectile);
with (bullet1) {
	motion_set(point_direction(x, y, o_Caleb.x, o_Caleb.y), 8);
}

var bullet2 = instance_create_layer(x, y + random_range(100, -200), "Projectiles", o_BossProjectile);
with (bullet2) {
	motion_set(point_direction(x, y, o_Caleb.x, o_Caleb.y), 8);
}

var bullet3 = instance_create_layer(x, y + random_range(100, -200), "Projectiles", o_BossProjectile);
with (bullet3) {
	motion_set(point_direction(x, y, o_Caleb.x, o_Caleb.y), 8);
}

var bullet4 = instance_create_layer(x, y + random_range(100, -200) + 100, "Projectiles", o_BossProjectile);
with (bullet4) {
	motion_set(point_direction(x, y, o_Caleb.x, o_Caleb.y), 8);
}

var bullet5 = instance_create_layer(x, y + random_range(100, -200), "Projectiles", o_BossProjectile);
with (bullet5) {
	motion_set(point_direction(x, y, o_Caleb.x, o_Caleb.y), 8);
}

var bullet6 = instance_create_layer(x, y + random_range(100, -200) + 100, "Projectiles", o_BossProjectile);
with (bullet6) {
	motion_set(point_direction(x, y, o_Caleb.x, o_Caleb.y), 8);
}

if (global.fading == 1) {
	with (o_BossProjectile) {
		instance_destroy();
	}
	sprite_index = s_BossDeath;
	image_alpha -= 0.02;
	if (image_alpha <= 0) {
		instance_destroy();
		global.fading = 0;
	}
}