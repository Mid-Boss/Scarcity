/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_robot_catapult_fire,7,false);
global.leg_power_found = true;
obj_UI.text_ = "Juice up that jump.";
obj_bot.can_input = true;
obj_bot.image_speed = 1;
instance_destroy();