/// @description Positoning

// camers is going to always be in the cneter of the the action
// here we will handle the position

// get all players in a ds list
if (instance_exists(obj_player)) {	
	// create lists
	var _player_list = scr_get_all_players();
	var _x_list = ds_list_create();
	var _y_list = ds_list_create();
	
	for (var _i = 0; _i < ds_list_size(_player_list); _i++) {
		var _player = ds_list_find_value(_player_list, _i);
		ds_list_add(_x_list, _player.x);
		ds_list_add(_y_list, _player.y);
	}
	
	// sort lists in acsending order 
	ds_list_sort(_x_list, true);
	ds_list_sort(_y_list, true);
	
	// set mins and maxs'
	min_x = ds_list_find_value(_x_list, 0);
	max_x = ds_list_find_value(_x_list, ds_list_size(_x_list) - 1);
	min_y = ds_list_find_value(_y_list, 0);
	max_y = ds_list_find_value(_y_list, ds_list_size(_y_list) - 1);
	
	// get averages
	var _x_pos = (min_x + max_x) / 2;
	var _y_pos = (min_y + max_y) / 2;

	// update position
	x = _x_pos;
	y = _y_pos;
	
	var _width = (max_x - min_x) + PADDING;
	var _height = _width * RATIO;
	var _camera = view_camera[0];
	camera_set_view_size(_camera, clamp(_width, WIDTH, room_width), clamp(_height, HEIGHT, room_height));
	camera_set_view_border(_camera, camera_get_view_width(_camera) / 2, camera_get_view_height(_camera) / 2);

	// cleanup
	ds_list_destroy(_player_list);
	ds_list_destroy(_x_list);
	ds_list_destroy(_y_list);
}
