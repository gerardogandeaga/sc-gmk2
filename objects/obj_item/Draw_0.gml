/// @description Render Item
var _pos_x = x;
var _pos_y = y;
if (owner_id != undefined) {
	_pos_x = owner_id.x;
	_pos_y = owner_id.y;
}
draw_sprite_ext(ITEM_SPRTIE, 0, _pos_x, _pos_y, dir, 1, 0, c_white, 1);
