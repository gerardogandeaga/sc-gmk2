/// @description Physics And Damage Handler

// damage
if (alive) {
	if (hit) {
		dir = -impact_dir;
		image_xscale = dir;
		hit = false;
		vsp = -KICK_VERT;
		hsp = KICK_HOR * -dir;
		alive = false;
	}		
}

// movement
scr_apply_gravity();
scr_horizontal_wall_collision();
scr_vertical_wall_collision();
scr_apply_movement();
