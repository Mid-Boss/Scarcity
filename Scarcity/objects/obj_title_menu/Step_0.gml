/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up)
{
	if y_arrow == y_pos_1
		y_arrow = y_pos_2;
	else if y_arrow == y_pos_2
		y_arrow = y_pos_1;
	audio_play_sound(snd_robot_walk_1, 1, false);
}

if keyboard_check_pressed(vk_space)
{
	if y_arrow == y_pos_1
	{
		room_goto(rm_init);
		audio_play_sound(snd_get_battery, 1, false);
	}
	else if y_arrow == y_pos_2
		game_end();
}