/// @description Throwing
event_inherited();

// activating grenade
if (!thrown && !activated &&owner_id != undefined) {
	activated = owner_id.key_action;
	timer = MAX_FIRE_TIMER;
}

// rotate image after being thrown
if (thrown) {
	image_angle += -(hsp * 2);
}

// handle activated grenade
if (activated) {
	// countdown timer
	if (timer > 0) timer--;
	// explode if time is up
	if (timer == 0) { 
		hsp = 0;
		vsp = 0;
		sprite_index = spr_explosion;
		image_angle = 0;
		image_speed = 1;
		activated = false; 
	}
}
