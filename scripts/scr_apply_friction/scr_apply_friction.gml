// Apply friction when object is on a surface

// apply friction
if (FRICTION != 0 && vsp == 0 && hsp != 0) {
	// slow down object
	hsp += -sign(hsp) * FRICTION;
	// stop when |hsp| < friction
	if (abs(hsp) < FRICTION) hsp = 0;
}