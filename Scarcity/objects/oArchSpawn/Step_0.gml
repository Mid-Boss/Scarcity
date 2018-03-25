if (animation_hit_frame(image_number-1)) {
	audio_play_sound(snd_get_battery,7,false);
	player_ = instance_create_layer(x+sprite_width/2,y+sprite_height/2,"Instances",obj_bot);
	image_index = 0;
	image_speed = 0;
	obj_camera.target_ = obj_bot;
}