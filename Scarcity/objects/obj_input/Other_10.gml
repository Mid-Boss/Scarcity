/// @description GET INPUT

right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);

right_pressed_ = keyboard_check_pressed(vk_right);
left_pressed_ = keyboard_check_pressed(vk_left);

action_1_pressed_ = keyboard_check_pressed(ord("X"));
action_2_pressed_ = keyboard_check_pressed(ord("Z"));

jump_pressed_ = keyboard_check_pressed(vk_space);

restart_debug_ = keyboard_check_pressed(vk_end);