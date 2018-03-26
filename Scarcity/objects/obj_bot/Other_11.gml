/// @description Energy Stuff
// You can write your code in this editor

o_checkpoint = instance_place(x, y, obj_checkpoint);

if o_checkpoint != noone
{
	if check_on and energy_reserve < 100
	{
		check_on = false;
		audio_play_sound(snd_power_up,7,false);
		energy_reserve = 100;
	}
}
else
	check_on = true;

if energy_reserve <= 0  && is_trans{
	audio_play_sound(snd_power_down,7,false);
	is_trans = false;
	//room_restart();
}
else if energy_reserve > 0
	is_trans = true;