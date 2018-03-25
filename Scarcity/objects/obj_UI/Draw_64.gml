/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_font(fnt_energy);

draw_sprite(spr_energy_bar,energy_reserve/5,40,40);
if global.leg_power_found {
	draw_sprite(spr_jump_dial,global.leg_power,80 + 256,40);
}
if global.boost_power_found {
	draw_sprite(spr_boost_dial,global.boost_power,120 + 256 + 64,40);
}