/// Horizontal wall collision handler 
if (place_meeting(x + hsp, y, obj_horizontal_wall)) {
	while (!place_meeting(x + sign(hsp), y, obj_horizontal_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
