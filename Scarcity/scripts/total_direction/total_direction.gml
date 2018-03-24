if x_speed_ == 0 and y_speed_ == 0 {
	exit;
}

var _y_dir = 0;
var _x_dir = 0;

switch (x_direction_) {
	case xdir.right:
	_x_dir = 1;
	break;
	case xdir.left:
	_x_dir = -1;
	break;
	default:
	break;
}

switch (y_direction_) {
	case ydir.down:
	_y_dir = 1;
	break;
	case ydir.up:
	_y_dir = -1;
	break;
	default:
	break;
}

direction_ = point_direction(x,y,x+x_speed_*_x_dir,y+y_speed_*_y_dir);