/// @desc Initial Player Properties

/* contants */

// ids
CONTROLLER_ID = undefined;

// physics
JUMP_SPEED = 15;
MOVE_SPEED = 5;
WEIGHT = global.WEIGHT_SUPER_HEAVY;
BOUNCE = global.BOUNCE_NONE;

// collision mask
HEIGHT = sprite_height; // todo later convert this to fit the size of the mask
WIDTH = sprite_width;

/* variable */ 

hsp = 0;
vsp = 0;
dir = 1;

// player center where items will be
center_x = 0; 
center_y = 0;
center_offset_y = 0;

/* inventory */

holding = undefined;

/* states */

// phsycis states have to do when doing vertical movements
enum PLAYER_PHYSICS_STATES {
    IDLE,
    FALLING,
    JUMPING
}
// action states are more horizontal actions and interactions
enum PLAYER_ACTION_STATES {
    IDLE,
    WALKING,
	CROUCHING,
	// todo implement later 
	CROUCH_WALKING
}
physics_state = PLAYER_PHYSICS_STATES.IDLE;
action_state = PLAYER_ACTION_STATES.IDLE;

/* animations */

is_animating = false;

/* action variables */

key_right = false;
key_left = false;
key_crouch = false;
key_jump = false;
key_action = false;
key_action_held = false;
key_interact = false;
