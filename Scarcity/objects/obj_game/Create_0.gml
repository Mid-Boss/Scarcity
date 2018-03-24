//Initializing the Sequencer

//This block sets up 10 sequencers and sequencer pointers.

var _length = 30;
var _height = 10;

for (var _i = 0; _i <_height; _i++) {
	global.sequencer_pointer[_i] = noone;
	for (var _j = 0; _j < _length; _j++) {
		global.sequencer[_i,_j] = false;
	}
}

global.one_second = game_get_speed(gamespeed_fps);

global.gravity_acceleration = 0.25;
global.gravity_max = 6;

enum xdir {
	right,
	left
}

enum ydir {
	up,
	down
}

initialize_text_settings();

//End of create, goto start room

room_goto(rm_labs_start);
