/// @description Dummy Properties
event_inherited();

// constant 
WIDTH = sprite_width;
HEIGHT = sprite_height;
KICK_HOR = 4;
KICK_VERT = 10;
WEIGHT = global.WEIGHT_SUPER_HEAVY;

// vars
alive = true;
dir = 1;
hsp = 0;
vsp = 0;

enum ENEMY_ACTION_STATES {
	IDLE,
	DYING,
	DEAD
}
action_state = ENEMY_ACTION_STATES.IDLE;

image_xscale = dir;
