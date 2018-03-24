/// @description Insert description here
// You can write your code in this editor

key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

move = key_left + key_right;
hsp = move * h_spd;
if (vsp < 10)
	vsp += grav;

if (place_meeting(x, y + 1, obj_solid))
{
	vsp = key_jump * -jmp_spd
}

if (place_meeting(x+hsp, y, obj_solid))
{
	while(!place_meeting(x+sign(hsp), y, obj_solid))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, y + vsp, obj_solid))
{
	while(!place_meeting(x, y + sign(vsp), obj_solid))
	{
		y += sign(vsp);
	}
	vsp = 0;
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
	sprite_index = spr_bot_runner_jump_arc;
}

if vsp == 0 and hsp == 0 && !is_landing
{
	sprite_index = spr_bot_runner_land;
}

x += hsp;
y += vsp;
