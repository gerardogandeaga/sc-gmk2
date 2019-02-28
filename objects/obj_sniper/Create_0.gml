/// @description Insert description here
event_inherited();

ITEM_NAME = "AUTO GUN";

// inhereted variables
WEIGHT = global.WEIGHT_MEDIUM;
FRICTION = WEIGHT * 1.5;
WEAPON_TYPE = WEAPON_TYPES.AUTOMATIC;
WEAPON_LENGTH = sprite_width;
MAX_FIRE_TIMER = 5;
MAX_RECOIL = 5;

timer = 10;
bullet_spread = 8;
ammo = 100;

// independent variables
flash = false;
