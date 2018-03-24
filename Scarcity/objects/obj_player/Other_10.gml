/// @description Walk State

image_speed = 0;
var _animation_speed = 0.6;
var _x_input = obj_input.right_ - obj_input.left_;

if _x_input == 0 {
	if x_speed_ > 0 {
		apply_friction_to_movement_entity();
	}
	if sprite_[player.walk] != spr_bot_runner_idle {
		sprite_[player.walk] = spr_bot_runner_idle;
	}
} else {
	if sprite_[player.walk] != spr_bot_runner_walk {
		sprite_[player.walk] = spr_bot_runner_walk;
	}
	if _x_input == 1 {
		x_direction_ = xdir.right;	
	} else {
		x_direction_ = xdir.left;
	}
	image_xscale = _x_input;
	add_movement_maxspeed_x(acceleration_[power_], max_speed_[power_]);
	image_speed = _animation_speed;
	move_movement_entity_x();
}

if (obj_input.jump_pressed_) {
	y_speed_ = jump_height_[power_];
	y_direction_ = ydir.up;
	state_ = player.jump;
}