/// @desc Input Capture 

// if gamepad id is 0 then can also use keyboard
if (CONTROLLER_ID != undefined) {
	if (CONTROLLER_ID == global.KEYBOARD_ID) {
		// held
		key_right = keyboard_check(vk_right);
		key_left = keyboard_check(vk_left);
		key_crouch = keyboard_check(vk_down);
		key_action_held = keyboard_check(ord("X"));
		// pressed
		key_jump = keyboard_check_pressed(vk_up);
		key_interact = keyboard_check_pressed(ord("Z"));
		key_action = keyboard_check_pressed(ord("X"));
	} else {
		// held
		key_right = 
		gamepad_button_check(CONTROLLER_ID, gp_padr) || (gamepad_axis_value(CONTROLLER_ID, gp_axislh) > global.GAMEPAD_DEAD_ZONE );
		key_left = 
		gamepad_button_check(CONTROLLER_ID, gp_padl) || (gamepad_axis_value(CONTROLLER_ID, gp_axislh) < -global.GAMEPAD_DEAD_ZONE );
		key_crouch =
		gamepad_button_check(CONTROLLER_ID, gp_padd) || (gamepad_axis_value(CONTROLLER_ID, gp_axislv) > global.GAMEPAD_DEAD_ZONE );
		key_action_held =  
		gamepad_button_check(CONTROLLER_ID, gp_face3);

		// pressed
		key_jump = 
		gamepad_button_check_pressed(CONTROLLER_ID, gp_padu) || gamepad_button_check_pressed(CONTROLLER_ID, gp_face1);
		key_interact = 
		gamepad_button_check_pressed(CONTROLLER_ID, gp_face4);
		key_action = 
		gamepad_button_check_pressed(CONTROLLER_ID, gp_face3);
	}
} else {
	show_error("controller id not set on player : " + id, true);
}
