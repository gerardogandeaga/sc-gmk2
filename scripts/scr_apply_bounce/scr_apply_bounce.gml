/// Retruns how high object will based on the last known vsp speed multiplied by the bounce factor 
vsp = (vsp > 1 ? -(vsp * BOUNCE) : 0); 
