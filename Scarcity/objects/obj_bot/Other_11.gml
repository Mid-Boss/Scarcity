/// @description Energy Stuff
// You can write your code in this editor

o_checkpoint = instance_place(x, y, obj_checkpoint);

if o_checkpoint != noone
{
	if check_on
	{
		check_on = false;
		energy_reserve = 100;
		/*leg_energy = get_integer("Input Leg Energy...Current Energy Reserve: " + string(energy_reserve), 0);
		if leg_energy > energy_reserve
			leg_energy = get_integer("***ERROR! ENERGY RESERVE DOES NOT COVER AMOUNT ENTERED*** Input Leg Energy...Current Energy Reserve: " + string(energy_reserve), 0);
		energy_reserve -= leg_energy;
		arm_energy = get_integer("Input Arm Energy...Current Energy Reserve: " + string(energy_reserve), 0);
		if arm_energy > energy_reserve
			arm_energy = get_integer("***ERROR! ENERGY RESERVE DOES NOT COVER AMOUNT ENTERED*** Input Arm Energy...Current Energy Reserve: " + string(energy_reserve), 0);
		energy_reserve -= arm_energy;
		body_energy = get_integer("Input Body Energy...Current Energy Reserve: " + string(energy_reserve), 0);
		if body_energy > energy_reserve
			body_energy = get_integer("***ERROR! ENERGY RESERVE DOES NOT COVER AMOUNT ENTERED*** Input Body Energy...Current Energy Reserve: " + string(energy_reserve), 0);
		energy_reserve -= body_energy;*/
	}
}
else
	check_on = true;

