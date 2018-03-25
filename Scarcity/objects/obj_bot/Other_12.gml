/// @description Sprite management
// You can write your code in this editor

//Sprite management
if prev_vsp > 0 and vsp == 0
{
	is_landing = true;
}

if hsp > 0 and vsp == 0
{
	image_xscale = 1;
	sprite_index = spr_bot_runner_walk;
}
else if hsp < 0 and vsp == 0
{
	image_xscale = -1;
	sprite_index = spr_bot_runner_walk;
}
if vsp > 0
{
	sprite_index = spr_bot_runner_fall;
}
else if vsp < 0
{
	sprite_index = spr_bot_runner_jump_up;
}

if is_landing
{
	sprite_index = spr_bot_runner_land;
}

if (sprite_index == spr_bot_runner_land and image_index == 5) or vsp < 0
{
	is_landing = false;
}

if is_running
{
	sprite_index = spr_bot_runner_dash;
}

if vsp == 0 and hsp == 0 and !is_landing
{
	sprite_index = spr_bot_runner_idle;
}
