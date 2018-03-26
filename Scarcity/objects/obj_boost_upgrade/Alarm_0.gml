/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_robot_catapult_fire,7,false);
global.boost_power_found = true;
obj_UI.text_ = "Press E to goose that boost.";
obj_bot.can_input = true;
obj_bot.image_speed = 1;
obj_bot.alarm[3] = obj_bot.text_time
instance_destroy();