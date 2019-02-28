/// @description Draw PLayer Status

if (room == rm_start_menu_test) {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(room_width * 0.25, room_height * 0.25, "player one : " +   (player_manager_arr[0] == undefined ? "inactive" : "active"));
	draw_text(room_width * 0.75, room_height * 0.25, "player two : " +   (player_manager_arr[1] == undefined ? "inactive" : "active"));
	draw_text(room_width * 0.25, room_height * 0.75, "player three : " + (player_manager_arr[2] == undefined ? "inactive" : "active"));
	draw_text(room_width * 0.75, room_height * 0.75, "player four : " +  (player_manager_arr[3] == undefined ? "inactive" : "active"));
}
