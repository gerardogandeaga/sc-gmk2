/// @description State And Animation Handler

// state switching
if (!alive) {
	if (vsp != 0) {
		action_state = ENEMY_ACTION_STATES.DYING;
	} else {
		action_state = ENEMY_ACTION_STATES.DEAD;
	}
}

switch (action_state) {
	case ENEMY_ACTION_STATES.DYING:
		sprite_index = spr_dummy_dead;
		image_index = 0;
		image_speed = 0;
		break;
	case ENEMY_ACTION_STATES.DEAD:
		sprite_index = spr_dummy_dead;
		image_index = 1;
		image_speed = 0;
		break;
}
