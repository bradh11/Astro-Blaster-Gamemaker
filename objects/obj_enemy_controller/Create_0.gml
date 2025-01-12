/// @description Enemy create event

// set a default hp and max_hp
hp = 10
max_hp = hp

// Set random speed (lower than rocket speed)
var min_speed = 1;
var max_speed = 3;
speed = irandom_range(min_speed, max_speed);

// Set random direction
direction = irandom(360);

// Set random rotation speed
var min_rotation_speed = 0.1;
var max_rotation_speed = 1;
rotation_speed = irandom_range(min_rotation_speed, max_rotation_speed);

// obj_enemy1 particle 
particle_cleanup_list = ds_list_create();
active_particle_effects = ds_list_create();