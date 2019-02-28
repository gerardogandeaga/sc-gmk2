/// @description Weapon Properties
event_inherited();

ITEM_TYPE = "WEAPON"

// *** weapon types ***
enum WEAPON_TYPES {
	NONE,
	MELEE,
	THROWABLE,
	AUTOMATIC,
	SEMI_AUTOMATIC,
	SINGLE_FIRE,
	PUMP_ACTION
}

// contant values (only changed on)
BOUNCE = global.BOUNCE_NONE;

// type of weapon
WEAPON_TYPE = undefined;
WEAPON_LENTH = undefined;
// number of steps between firing
MAX_FIRE_TIMER = undefined;
MAX_RECOIL = undefined;

// variables
timer = 0;
recoil = 0;
bullet_spread = undefined;
ammo = undefined;

flash = false;
reload = false;
