/// @description Spawn Player 

if (room == rm_test) {
	if (active) {
		if ((spawn && spawner_id) && player_id == noone) {
			with (instance_create_layer(spawner_id.x, spawner_id.y - 1, global.PLAYER_LAYER, obj_player)) {
				other.player_id = id;
				CONTROLLER_ID = other.CONTROLLER_ID;
				show_debug_message("player spawned! id: " + string(other.player_id));
			}
			spawn = false;
			show_debug_message(string(spawner_id) + " " + string(spawn) + " " + string(player_id));
		}
	}
}
