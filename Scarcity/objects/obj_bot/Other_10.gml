/// @description Insert description here
// You can write your code in this editor

key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Left and right inputs
if !is_wall_jmping
	move = key_left + key_right;
if move != 0
	is_walk = true;
//Horizontal Movespeed
//if leg_energy > 0
	hsp = move * h_spd;
//Apply Gravity
if (vsp < 10)
	vsp += grav;

//Wall Jump Mechanics
if is_wall_jmping
{
	if hsp > 0
		hsp = -h_wall_spd;
	else if hsp < 0
		hsp = h_wall_spd;
	vsp = -v_wall_spd;
}

//If on the ground, allow jumping
if (place_meeting(x, y + 1, obj_solid))
{
	if energy_reserve > 0
	{
		vsp = key_jump * -jmp_spd
		if vsp < 0
			is_jmp = true;
	}
}

//If running into an object, do it smoothly
if (place_meeting(x+hsp, y, obj_solid))
{
	while(!place_meeting(x+sign(hsp), y, obj_solid))
	{
		x += sign(hsp);
	}
	//Wall Jump
	if key_jump && !place_meeting(x, y + 1, obj_solid) && energy_reserve > 0
	{
		is_wall_jmping = true;
		is_wall_jmp = true;
		image_xscale = -image_xscale;
		alarm[0] = wall_jmp_timer;
	}
	else
		hsp = 0;
}

//If falling to the ground, do it smoothly
if (place_meeting(x, y + vsp, obj_solid))
{
	while(!place_meeting(x, y + sign(vsp), obj_solid))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

//If somehow inside a block...
if (place_meeting(x, y, obj_solid))
{
	while (place_meeting(bbox_right, y, obj_solid))
	{
		x -= 1;
	}
	while (place_meeting(bbox_left, y, obj_solid))
	{
		x += 1;
	}
	while (place_meeting(x, bbox_bottom, obj_solid))
	{
		y -= 1;
	}
	while (place_meeting(x, bbox_top, obj_solid))
	{
		y += 1;
	}
}

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

if vsp == 0 and hsp == 0 && !is_landing
{
	sprite_index = spr_bot_runner_idle;
}

//Add horizontal and vertical speed to position
x += hsp;
y += vsp;

//Store previous vertical speed
prev_vsp = vsp;

if is_jmp || is_wall_jmp
{
	energy_reserve -= 5;
	is_jmp = false;
	is_wall_jmp = false;
}