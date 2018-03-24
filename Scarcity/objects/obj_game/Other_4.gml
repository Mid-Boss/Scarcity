button_[power_level.one] = instance_create_layer(128,128,"Instances",obj_button_test);
button_[power_level.two] = instance_create_layer(256,128,"Instances",obj_button_test);
button_[power_level.three] = instance_create_layer(384,128,"Instances",obj_button_test);

button_[power_level.one].value_ = power_level.one;
button_[power_level.one].image_index = 1;
button_[power_level.two].value_ = power_level.two;
button_[power_level.three].value_ = power_level.three;

if object_exists(obj_player) {
	instance_create_layer(0,0,"Instances",obj_camera);	
}

