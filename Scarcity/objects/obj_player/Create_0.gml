/// @description Insert description here
// You can write your code in this editor

initialize_movement_entity(.2,obj_solid);
image_speed = 0;
acceleration_ = 0.5;

airborn_ = false;
falling_ = false;
jump_force_ = 0;

initialize_player_states_and_sprites();

enum power_level {
	one,
	two,
	three
}

power_ = power_level.one;

jump_height_[power_level.one] = 4;
jump_height_[power_level.two] = 7;
jump_height_[power_level.three] = 10;

max_speed_[power_level.one] = 1.5;
max_speed_[power_level.two] = 2.5;
max_speed_[power_level.three] = 3.5;

acceleration_[power_level.one] = 0.5;
acceleration_[power_level.two] = 1;
acceleration_[power_level.three] = 1.5;