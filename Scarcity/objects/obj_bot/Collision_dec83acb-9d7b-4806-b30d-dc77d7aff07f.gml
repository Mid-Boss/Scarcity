obj_UI.text_ = "";

with (other) {
	if (target_ != noone) {
		instance_destroy(target_);
	}
	instance_destroy();
}