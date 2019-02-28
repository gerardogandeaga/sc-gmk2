/// @desc Player Input Logic
event_inherited(); 

item_center_x = x + (dir * WEAPON_LENGTH / 2);
item_center_y = y;

// if gun has an owner then follow the owner
// the owner will be assumed to be an instance of the player object
if (owner_id != undefined) {	
	
	// handle firing the weapong
	if (timer == 0) {
		can_fire = true;
	} else {
		timer--; // decrement timer count
		can_fire = false;
	}
	
	// recoil in parent
	recoil = max(0, recoil - 1);
	if (owner_id.key_action_held && can_fire) {
		// recoil
		recoil = MAX_RECOIL;
		
		timer = MAX_FIRE_TIMER;
		with (instance_create_depth(item_center_x, item_center_y, 100, obj_bullet)) {
			owner_id = other.owner_id;
			dir = other.dir;
			angle = random_range(-other.bullet_spread, other.bullet_spread); 
		}
		flash = true;
	}
	var _angle = scr_get_angle_from_dir(dir);
	x = x - lengthdir_x(recoil, _angle);
	y = y - lengthdir_y(recoil, _angle);
}
