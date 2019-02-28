/// @description Print 4 player status, is connected, controller id
for (var _i = 0; _i < 4; _i++) {
	var _player = player_manager_arr[_i];
	show_debug_message(
		"player " + string(_i + 1) + " ->" +
		" | status: " + (_player == undefined ? "inactive" : "active") + 
		" | device: " + (_player == undefined ? "undefined" : string(_player.CONTROLLER_ID)) +
		" | player: " + (_player == undefined ? "undefined" : string(_player))
 	);
}

show_debug_message("\n");
