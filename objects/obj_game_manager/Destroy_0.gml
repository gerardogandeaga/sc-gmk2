/// @description Clean up created objects

// player managers
for (var _i = 0; _i < array_length_1d(player_manager_arr); _i++) {
	var _player = player_manager_arr[_i];
	if (_player != undefined) instance_destroy(_player);
}

show_debug_message("obj_game_manager destroyed!");
