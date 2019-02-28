/// @description Weapon Action
event_inherited(); // item movement

if (timer != 0) timer--;

// if gun has an owner then follow the owner
// the owner will be assumed to be an instance of the player object
if (owner_id != undefined) {
	
	recoil = max(0, recoil - 1); // reset recoil
	if (owner_id.key_action_held && timer == 0) {
		
		switch (WEAPON_TYPE) {
			case WEAPON_TYPES.NONE:
				break;
			case WEAPON_TYPES.MELEE:
				break;
			case WEAPON_TYPES.THROWABLE:
				break;
			case WEAPON_TYPES.AUTOMATIC:
				scr_automatic_fire();
				break;
			case WEAPON_TYPES.SEMI_AUTOMATIC:
				break;
			case WEAPON_TYPES.SINGLE_FIRE:
				break;
			case WEAPON_TYPES.PUMP_ACTION: 
				break;
		}
	}
	
	var _angle = scr_get_angle_from_dir(dir);
	x = x - lengthdir_x(recoil, _angle);
	y = y - lengthdir_y(recoil, _angle);
}
