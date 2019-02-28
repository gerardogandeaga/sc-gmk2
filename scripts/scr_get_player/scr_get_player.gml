/// @description get player by getting the player managers and then their specific player ids
var index = argument0;

// get manager 
var _manager = scr_get_player_manager(index);
if (_manager == undefined) return undefined;

if (_manager.active) {
	var _player = _manager.player_id;
	if (_player != noone) {
		return _player; // return player id
	}
} else {
	return undefined; // nothing
}
