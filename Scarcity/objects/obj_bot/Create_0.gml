/// @description Insert description here
// You can write your code in this editor

h_spd = 4;
run_spd = [6,8,10];
accel_spd = [18,24,30];
x_disp = 0;
jmp_spd = [8, 10, 12];
h_wall_spd = 2;
v_wall_spd = 2;
grav = 0.4;
v_slide = 0.3;
hsp = 0;
vsp = 0;
is_landing = false;
prev_vsp = 0;
is_wall_jmp = false;
is_wall_jmping = false;
wall_jmp_timer = 20;
energy_reserve = 30;
is_walk = false;
is_jmp = false;
check_on = true;
is_running = false;
run_time = 15;
accel_time = 3;
can_input = true;

run_energy = [5,10,15];
jmp_energy = [5,10,15];
wall_jmp_energy = 5;
bullet_energy = 10;