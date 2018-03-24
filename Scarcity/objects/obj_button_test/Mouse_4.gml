if (pressed_) {
	pressed_ = false;
	image_index = 0;
}

if !pressed_ {
	with (obj_button_test) {
		pressed_ = false;
		image_index = 0;
	}
	obj_player.power_ = value_;
	pressed_ = true
	image_index = 1;
}