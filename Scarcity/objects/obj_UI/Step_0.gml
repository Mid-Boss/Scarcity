/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_bot)) {
	energy_reserve = obj_bot.energy_reserve;
}

if global.leg_power_found {
	if device_mouse_check_button_pressed(0, mb_left) {
		if device_mouse_x_to_gui(0) > (80 + 256) && device_mouse_x_to_gui(0) < (80 + 256 + 64) {
			if device_mouse_y_to_gui(0) > (40) && device_mouse_y_to_gui(0) < (40 + 55) {
				global.leg_power++;
				if (global.leg_power > power_level.three) {
					global.leg_power = power_level.one;
					audio_play_sound(snd_power_down,7,false);
				} else {
					audio_play_sound(snd_get_battery,7,false);
				}
			}
		}
	}
}

if global.boost_power_found {
	if device_mouse_check_button_pressed(0, mb_left) {
		if device_mouse_x_to_gui(0) > (120 + 256 + 64) && device_mouse_x_to_gui(0) < (120 + 256 + 64 + 64) {
			if device_mouse_y_to_gui(0) > (40) && device_mouse_y_to_gui(0) < (40 + 55) {
				global.boost_power++;
				if (global.boost_power > power_level.three) {
					global.boost_power = power_level.one;
					audio_play_sound(snd_power_down,7,false);
				} else {
					audio_play_sound(snd_get_battery,7,false);
				}
			}
		}
	}
}
