/// @description Item Parameters

ITEM_NAME = undefined;
ITEM_TYPE = undefined;

// physics constants 
// weight of item, value from 0 to 1, 1 being super heavy and 0 being light
WEIGHT = undefined;
FRICTION = undefined;
BOUNCE = undefined;

// id of the player who is holding the items
owner_id = undefined; 
is_owned = false;
thrown = false;

// direction item is facing
dir = 1;
// centre
item_center_x = undefined;
item_center_x = undefined;

// phsyics 
hsp = 0;
vsp = 0;
impulse_x = 15;
impulse_y = -10;
