/// Vertical wall collisions handler

if (place_meeting(x, y + vsp, obj_vertical_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_vertical_wall)) {
		if (abs(vsp) < 1) vsp = sign(vsp) * 1;
		y += sign(vsp);
		
show_debug_message("hsp: " + string(hsp) + " vsp: " + string(vsp));
	}
	
	// sets vsp to 0 or a negative value (bounce)
	scr_apply_bounce();
}
