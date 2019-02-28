/// @desc Physics State Switcher And Animation Handling

/* action state switching */

if (hsp == 0) {
	if (key_crouch) {
		action_state = PLAYER_ACTION_STATES.CROUCHING;
	} else {
		action_state = PLAYER_ACTION_STATES.IDLE;
	}
} else {
    if (vsp == 0) action_state = PLAYER_ACTION_STATES.WALKING;
}

/* physics state switching */

// falling
if (vsp > 0) {
    physics_state = PLAYER_PHYSICS_STATES.FALLING;
} else 
// jumping / rising
if (vsp < 0) {
    physics_state = PLAYER_PHYSICS_STATES.JUMPING;
} else {
// idle 
    physics_state = PLAYER_PHYSICS_STATES.IDLE;
}

/* default variabe reset */
if (action_state != PLAYER_ACTION_STATES.CROUCHING) center_y = y - 10;
if (!is_animating) image_speed = 0;

/* animations */
switch (physics_state) {
	case PLAYER_PHYSICS_STATES.JUMPING:
		sprite_index = spr_player_jumping;
		image_index = 0;
		is_animating = false;
		break;
	case PLAYER_PHYSICS_STATES.FALLING:
		sprite_index = spr_player_jumping;
		image_index = 1;
		is_animating = false;
		break;
		
	// sprite can only change on actions if the physics state is idle 
	// so we handle action states here
	case PLAYER_PHYSICS_STATES.IDLE:
		switch (action_state) {			
			case PLAYER_ACTION_STATES.IDLE: 
				sprite_index = spr_player_idle; 
				is_animating = false;
				break;
			case PLAYER_ACTION_STATES.WALKING: 
				sprite_index = spr_player_walking;
				image_speed = 0.5;
				is_animating = true;
				break;
			case PLAYER_ACTION_STATES.CROUCHING:
				sprite_index = spr_player_crouching;
				center_y = y - 5;
				is_animating = false;
				break;
		}
		break;	
}

// direction
if (key_right - key_left != 0) dir = sign(key_right - key_left);
image_xscale = dir;
center_x = x + dir * 4;
