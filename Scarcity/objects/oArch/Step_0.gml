var _x = x+sprite_width/2;
var _y = y+sprite_height/2;

if !instance_exists(obj_bot) exit;

if (draw_in_) {
	obj_bot.x = lerp(obj_bot.x, _x, 0.05);
	obj_bot.y = lerp(obj_bot.y, _y, 0.05);
}

if (obj_bot.x - _x <= 0.5) and (obj_bot.x - _x >= -0.5) and (obj_bot.y - _y <= 0.5) and (obj_bot.y - _y >= -0.5) and alarm[0] <= 0 and obj_bot.sprite_index == spr_bot_runner_fall{
	image_speed = 0.4;
	var _snd = choose(snd_speak_drifting, snd_speak_finish_line, snd_speak_first_place, snd_speak_malfunction);
	audio_play_sound(_snd,7,false);
	alarm[0] = global.one_second;
}

if obj_bot.sprite_index == spr_bot_runner_elec and (animation_hit_frame(image_number-1)) {
	room_goto(target_);	
}