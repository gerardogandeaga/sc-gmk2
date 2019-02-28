/// Handle firing autmatic weapons
recoil = MAX_RECOIL;
timer = MAX_FIRE_TIMER;
with (instance_create_depth(item_center_x, item_center_y, 100, obj_bullet)) {
	owner_id = other.owner_id;
	dir = other.dir;
	angle = random_range(-other.bullet_spread, other.bullet_spread); 
}
flash = true;
