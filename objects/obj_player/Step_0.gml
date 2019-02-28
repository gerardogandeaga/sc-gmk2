/// @description Movement

// adjust centers

// movement
move = key_right - key_left;
hsp = move * MOVE_SPEED;
scr_apply_gravity();

/* collisions */

scr_horizontal_wall_collision();
scr_vertical_wall_collision();
scr_platform_collision();

/* platform interactions */

// drop from platform
if (vsp == 0 && place_meeting(x, y + 1, obj_platform) && key_crouch && key_jump) { 
	vsp = 5; 
} else
// jumping
if (vsp == 0 && key_jump) {
	vsp = key_jump * -JUMP_SPEED;
}

scr_apply_movement(); // move

/* inteactions */

// picking up and dropping items
if (holding == undefined) {
	if (place_meeting(x, y, obj_item) && instance_place(x, y, obj_item).owner_id == undefined) {
		if (key_interact) {
			var _inst = instance_place(x, y, obj_item);
			_inst.owner_id = id;
			show_debug_message(string(id) + " holding -> name: " + string(_inst.ITEM_NAME) + " type: " + string(_inst.ITEM_TYPE));
		}
	}
}
 