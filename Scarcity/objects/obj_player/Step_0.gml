total_direction();

if !place_meeting(x, y+1, collision_object_) and (state_ != player.fall) and (state_ != player.jump) and (y_speed_ <= 0){
	state_ = player.fall;
}

sprite_index = sprite_[state_];
event_user(state_);