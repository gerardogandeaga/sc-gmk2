/* 
@desc retuns an angle based on a 2d plane, 
where inputs are left and right and returns either 180 for left and 0 for right */

/// @param dir direction object is facing (1 = right ; -1 = left)
var dir = argument0;

if (dir == -1) {
	return 180;
} else 
if (dir == 1){
	return 0;
} else {
	// if get an exception of 0 then that is invalid and we throw error message
	show_error("invalid dir -> " + string(dir), true);
}
