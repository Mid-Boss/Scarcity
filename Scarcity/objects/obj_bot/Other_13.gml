/// @description Bullets
// You can write your code in this editor

if key_shoot and energy_reserve >= bullet_energy
{
	energy_reserve -= bullet_energy;
	if image_xscale == 1
		x_shot = x + 10;
	else
		x_shot = x - 10;
		
	o_bullet = instance_create_layer(x_shot, y - 10, "Instances", obj_bullet);
	o_bullet.image_xscale = image_xscale;
}