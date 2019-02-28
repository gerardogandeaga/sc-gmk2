/// @description Destroy Self And Create New Grenade
if (sprite_index == spr_explosion) {
	instance_create_layer(x, y, global.WEAPON_LAYER, obj_grenade);
	instance_destroy();
}
