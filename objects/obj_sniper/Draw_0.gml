/// @description Draw Muzzle Flash
draw_self();

if (flash) {
	draw_sprite(spr_bullet_flash, 0, item_center_x + (4 * dir), item_center_y);
	flash = false;
}
