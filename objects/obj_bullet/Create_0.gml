/// @desc Properties
owner_id = noone;

// physics
dir = 0;
bullet_speed = 30;
angle = 0;
dest_x = 0;
dest_y = 0;

// image info
image_speed = 1;
trail_timer = ceil(90 / bullet_speed); // <- arbitrary factor

// auto destroy bounds
left_bounds = -(room_width / 2);
right_bound = room_width + (room_width / 2);
top_bounds = -room_height / 2;
bottom_bounds = room_height + (room_height / 2);
