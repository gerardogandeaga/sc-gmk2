/// @description Grenade Properties
event_inherited();

WEAPON_NAME = "GRENADE"

// inherited variables
WEIGHT = global.WEIGHT_MEDIUM;
FRICTION = WEIGHT * 0.2;
BOUNCE = global.BOUNCE_MEDIUM;
WEAPON_TYPE = WEAPON_TYPES.THROWABLE;
MAX_FIRE_TIMER = scr_get_seconds(3);

activated = false;
