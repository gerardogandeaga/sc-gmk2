/// @description Manager Properties 

// constants
global.GAMEPAD_DEAD_ZONE = 0.2;
global.KEYBOARD_ID = -1;
global.MAX_PLAYER_COUNT = 4;

// varaibles

// array which holds a reference to all the player managers which will handle player logic 
player_manager_arr = array_create(global.MAX_PLAYER_COUNT, undefined); 


// room layer definitions 
global.WALL_LAYER = "WALL_LAYER";
global.PLAYER_LAYER = "PLAYER_LAYER";
global.WEAPON_LAYER = "WEAPON_LAYER";
