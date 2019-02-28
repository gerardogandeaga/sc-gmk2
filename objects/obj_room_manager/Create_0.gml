/// @description Wold Properties
randomize();
room_speed = 60; // 60 fps
// create physics hander
instance_create_depth(x, y, 0, obj_physics_manager);

// camera
instance_create_depth(x, y, 100, obj_camera_manager);


// create a copy of the player array holding the player managers
player_manager_arr = array_create(array_length_1d(obj_game_manager.player_manager_arr), undefined);
array_copy(player_manager_arr, 0, obj_game_manager.player_manager_arr, 0, array_length_1d(obj_game_manager.player_manager_arr)) 
for (var _i = 0; _i < instance_number(obj_player_spawn_manager); _i++) {
	var _player = player_manager_arr[_i];
	if (_player == undefined) continue;

	// activate and spawn players
	_player.active = true;
	_player.spawner_id = instance_find(obj_player_spawn_manager, _i);
	_player.spawn = true;
}
