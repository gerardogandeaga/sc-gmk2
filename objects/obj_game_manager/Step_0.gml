/// @description Detect Controllers

if (room == rm_start_menu_test) {
	
	// break out of room into level
	if (keyboard_check_released(vk_space)) room_goto(rm_test);

	/* device detection */

	var _controller = noone; // controller variable serves as id holder and a flag 

	// detect keyboard
	if (keyboard_check_released(vk_anykey) && !keyboard_check_released(vk_space)) _controller = global.KEYBOARD_ID;

	// detect gamepad
	for (var _gamepad = 0; (_controller == noone) && (_gamepad < global.MAX_PLAYER_COUNT); _gamepad++) {
		if (gamepad_is_connected(_gamepad) && gamepad_button_check_released(_gamepad, gp_start)) _controller = _gamepad;
	}

	/* handling adding and removing */
		
	if (_controller != noone) {
		// first we check controller already exists in the array
		var _controller_index = scr_get_controller_index(_controller);
		if (_controller_index != noone) {
		
			/* removing */
		
			instance_destroy(player_manager_arr[_controller_index]); // destroy player 
			player_manager_arr[_controller_index] = undefined;
		
			show_debug_message("player " + string(_controller_index + 1) + " removed. gamepad " + string(_controller));
		} else {
			
			for (var _i = 0; _i < array_length_1d(player_manager_arr); _i++) {
			
				/* adding */ 
		
				var _player = player_manager_arr[_i]; 
				if (_player == undefined) {
					// add gamepad
					// create player
					var _player = instance_create_depth(x, y, 0, obj_player_manager); // create player
					_player.CONTROLLER_ID = _controller; // set controller value 
					_player.active = false;
					player_manager_arr[_i] = _player; // put player in array
	
					show_debug_message("player " + string(_i + 1) + " added. gamepad " + string(_controller));
					break;
				}
			}
		}
		
		scr_print_player_status();
	}

}
