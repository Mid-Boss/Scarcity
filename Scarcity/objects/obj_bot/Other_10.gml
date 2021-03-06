/// @description All movement and Collisions
// You can write your code in this editor

key_left = -keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_run = keyboard_check_pressed(ord("A"));
key_shoot = keyboard_check_pressed(ord("D"));
key_charge_jmp = keyboard_check_pressed(ord("Q"));
key_charge_dash = keyboard_check_pressed(ord("E"));
key_restart = keyboard_check_pressed(ord("R"));

//Left and right inputs
if !is_wall_jmping
	move = key_left + key_right;
if move != 0
	is_walk = true;
//Set Charging
if key_run && energy_reserve >= run_energy[global.boost_power] && !is_running && run_charge
{
	is_running = true;
	is_acceling = true;
	alarm[1] = run_time;
	alarm[2] = accel_time;
	energy_reserve -= run_energy[global.boost_power];
	run_charge = 0;
}
//Horizontal Movespeed
if !is_running
	hsp = move * h_spd;
else if is_running && is_acceling
	hsp = image_xscale * accel_spd[global.boost_power];
else if is_running && !is_acceling
	hsp = image_xscale * run_spd[global.boost_power];

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
	if energy_reserve >= jmp_energy[global.leg_power]
	{
		vsp = key_jump * -jmp_spd[global.leg_power];
		if vsp < 0
			is_jmp = true;
	}
	run_charge = 1;
}

//If running into an object, do it smoothly
if (place_meeting(x+hsp, y, obj_solid))
{
	while(!place_meeting(x+sign(hsp), y, obj_solid))
	{
		x += sign(hsp);
	}
	
	/*if !place_meeting(x, y + 1, obj_solid) && vsp > 0
	{
		vsp -= v_slide
	}*/
	
	//Wall Jump
	/*if key_jump && !place_meeting(x, y + 1, obj_solid) && energy_reserve >= wall_jmp_energy
	{
		is_wall_jmping = true;
		is_wall_jmp = true;
		image_xscale = -image_xscale;
		alarm[0] = wall_jmp_timer;
	}
	else*/
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

//Add horizontal and vertical speed to position
x += hsp;
if !is_running
	y += vsp;

//Store previous vertical speed
prev_vsp = vsp;

if is_jmp
{
	energy_reserve -= jmp_energy[global.leg_power];
	is_jmp = false;
}
if is_wall_jmp
{
	energy_reserve -= wall_jmp_energy;
	is_wall_jmp = false;
}	