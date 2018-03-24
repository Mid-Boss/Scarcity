if x_speed_ <= 0 exit; // No need to check for collisions

var _x_spd = x_speed_;
if x_direction_ == xdir.left {
	_x_spd *= -1;	
}

if place_meeting(x+_x_spd, y-1, collision_object_) {
	while !place_meeting(x+sign(_x_spd), y, collision_object_) {
		x += sign(_x_spd);
	}
	_x_spd = 0;
	x_speed_ = 0;
}
x += _x_spd;

// Make sure to update speed and direction
//x_speed_ = point_distance(0, 0, x_speed_, y_speed_);
