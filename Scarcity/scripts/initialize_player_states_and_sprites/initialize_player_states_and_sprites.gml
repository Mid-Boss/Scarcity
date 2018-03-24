enum player {
	walk,
	jump,
	fall
}

sprite_[player.walk] = spr_bot_runner_walk;
sprite_[player.jump] = spr_bot_runner_jump_up;
sprite_[player.fall] = spr_bot_runner_fall;

starting_state_ = player.walk;
state_ = starting_state_;