/// @description Insert description here
event_inherited();

ITEM_NAME = "AUTO GUN";

// inhereted variables
WEIGHT = global.WEIGHT_HEAVY;
FRICTION = WEIGHT * 1.5;
WEAPON_TYPE = WEAPON_TYPES.AUTOMATIC;
WEAPON_LENGTH = sprite_width;
MAX_FIRE_TIMER = scr_get_seconds(0.1);
MAX_RECOIL = 5;

timer = 0;
bullet_spread = 10;
ammo = 100;

// independent variables
flash = false;
MUZZLE_LENGTH_X = 35;
MUZZLE_LENGTH_Y = 2;
