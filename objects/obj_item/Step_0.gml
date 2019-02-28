/// @description Item Movment 

if (owner_id != undefined) {
	hsp = 0;
	vsp = 0;
	
	// update positions and direction
	dir = owner_id.dir;
	image_xscale = dir;
	// we have to add owner speeds so item wont be lagging behind
	x = owner_id.center_x + owner_id.hsp;
	y = owner_id.center_y + owner_id.vsp;
	
	// if owner drops item
	if (is_owned && owner_id.key_interact) {
		owner_id = undefined;
		// throw
		hsp = dir * scr_weight_factor(impulse_x, WEIGHT);
		vsp = scr_weight_factor(impulse_y, WEIGHT);
		thrown = true;
	}
	
	is_owned = (owner_id != undefined);
} 

if (!is_owned) {
	scr_apply_gravity();
	scr_vertical_wall_collision();
	scr_platform_collision();
	scr_apply_friction();
	scr_apply_movement();
}
