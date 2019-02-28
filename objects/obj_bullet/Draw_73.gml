/// @description Bullet Trail
draw_self();

if (trail_timer > 0) trail_timer--; 

// show trail
if (trail_timer == 0 && sprite_index == spr_bullet) {
	var _frames = room_speed;
	for (var _i = 1; _i <= _frames; _i++) {
		var _off_x = lengthdir_x(_i, angle) * dir;
		var _off_y = lengthdir_y(_i, angle) * dir;
		var _alpha = (_frames - _i) / _frames;
		draw_sprite_ext(spr_bullet, 1, x - _off_x, y - _off_y, 1, 1, angle, c_white, _alpha);
		// todo work on 2 dimensional ullet trail
	}
}

// debug
/*
draw_rectangle_color(x - 4, y - 4, x + 4, y + 4, c_red, c_red, c_red, c_red, true);
draw_line_color(x + dest_x, y + dest_y, x, y, c_red, c_red);
