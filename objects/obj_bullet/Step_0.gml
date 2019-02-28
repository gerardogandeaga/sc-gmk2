/// @description Bullet Travel
if (dir == -1 && image_xscale == 1) angle *= dir; // <- we could handle this in a with() creation event in gun but lets handle this internally

image_xscale = dir;
image_angle = angle;

// 2d bullet movement
var _bullet_velocity = bullet_speed * dir; // vector 
dest_x = lengthdir_x(_bullet_velocity, angle);
dest_y = lengthdir_y(_bullet_velocity, angle);

// predictive collision checking
// todo collision ine list and fix bullet collisions
var _collision_list = ds_list_create();
collision_line_list(x, y, x + dest_x, y + dest_y, obj_bullet_impact_manager, true, true, _collision_list, true);
var _instance = ds_list_find_value(_collision_list, 0); // grab first instance which is closest

if (ds_list_size(_collision_list) > 0 && _instance != owner_id) {
	// if we are colliding with the player who shot the bullet then void the collision
	if (_instance != owner_id) { 
		var _inc_x = (dest_x / bullet_speed);
		var _inc_y = (dest_y / bullet_speed);
		var _break_point = ceil(bullet_speed * 1.1);
	
		// check if bullet is already colliding on creation
		if (!collision_point(x, y, _instance, true, true)) {
			do {
				_break_point--;
				// we move "slow enought" to be able to detect a collision in the collision masks (x,y)
				x += _inc_x; 
				y += _inc_y;
			} until (place_meeting(x, y, _instance) || _break_point <= 0);
		}
	
		// todo damage
		with (_instance) {
			//hit = true;
			//impact_dir = other.dir;
			// with bullet 
			with (other) {
				bullet_speed = 0;
				can_draw_trail = false;
				sprite_index = spr_bullet_impact;
			} 
		}
	}
} else {
	// move
	x += dest_x;
	y += dest_y;
}

// cleanup
ds_list_destroy(_collision_list);
