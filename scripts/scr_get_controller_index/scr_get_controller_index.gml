/// @decription Checks if controller is registered in game manager and return the index of the player to which the controller is binded, if not then return noone
var controller = argument0;

for (var _i = 0; _i < 4; _i++) {
	var _player = player_manager_arr[_i];
	if (_player == undefined) continue;
	if (_player.CONTROLLER_ID == controller) { return _i; }
}

return noone; // nothing was found 
