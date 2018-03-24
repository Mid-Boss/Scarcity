/// @description Jump State

move_movement_entity_y();
move_movement_entity_x();
apply_gravity_to_movement_entity();

if (y_direction_ == ydir.up) and (sprite_[player.jump] == spr_bot_runner_jump_up) and (y_speed_ <= global.gravity_acceleration*2) {
	sprite_[player.jump] = spr_bot_runner_jump_arc;
	image_speed = 1;
}

if (animation_hit_frame(image_number-1)) and (sprite_[player.jump] == spr_bot_runner_jump_arc) {
	sprite_[player.jump] = spr_bot_runner_jump_up;
	state_ = player.fall;
}
