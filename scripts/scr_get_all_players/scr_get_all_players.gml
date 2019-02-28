/// @description get all currently alive players

// get manager 
var _player_list = ds_list_create();

for (var _i = 0; _i < global.MAX_PLAYER_COUNT; _i++) {
	// get player id
	var _player = scr_get_player(_i);
	// check if player is null
	if (_player != undefined) {
		// add player if it not null
		ds_list_add(_player_list, _player);
	}
}

return _player_list;
