
if (y_direction_ == ydir.up) {
	y_speed_ = approach(y_speed_, 0, global.gravity_acceleration);
	if (y_speed_ == 0) {
		y_direction_ = ydir.down;
	}
}

if (y_direction_ == ydir.down) {
	y_speed_ = approach(y_speed_, global.gravity_max, global.gravity_acceleration);
}
