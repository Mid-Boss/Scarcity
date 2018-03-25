/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_font(fnt_energy);
draw_text(180, 40, "Energy Reserve: ");
draw_text(400, 40, string(energy_reserve));
draw_text(140, 80, "Leg Energy: ");
draw_text(400, 80, string(leg_energy));
draw_text(140, 120, "Arm Energy: ");
draw_text(400, 120, string(arm_energy));
draw_text(140, 160, "Body Energy: ");
draw_text(400, 160, string(body_energy));