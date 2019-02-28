/// Handle collisions with platforms

/* 
platforms are tricky because you are ble to jump through them to get ontop.
If we simply collide with the first instance of the platform then the logic will work but we will not 
be able to handle more than one platform if say one was next to the other but slightly higher
like this ----->    [-----_______].
This script handles multiple platform collsions and makes a decision on which to collide with. */

if (vsp >= 0) {
	// create a list of the all the colliding platforms for handling
	var _platform_list = ds_list_create();
	instance_place_list(x, y + vsp, obj_platform, _platform_list, true);	
	
	if (ds_list_size(_platform_list) > 0) {
		// find the lowest platform
		var _platform = _platform_list[|0];
		for (var _i = 1; _i < ds_list_size(_platform_list); _i++) {
			if (_platform_list[|_i].y > _platform.y) _platform = _platform_list[|_i];
		}
		
		// perform collision
		if (_platform.y > y) {
			while (!place_meeting(x, y + 1, _platform)) {
				y += 1;
			}
			scr_apply_bounce();
		}
	}
}
