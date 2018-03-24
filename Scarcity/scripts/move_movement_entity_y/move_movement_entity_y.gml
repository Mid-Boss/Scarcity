if y_speed_ <= 0 exit; // No need to check for collisions

var _y_spd = y_speed_;
if y_direction_ == ydir.up {
	_y_spd *= -1;	
}

if place_meeting(x, y+_y_spd-1, collision_object_) {
	while !place_meeting(x, y+sign(_y_spd)-1, collision_object_) {
		y += sign(_y_spd);
	}
	_y_spd = 0;
	y_speed_ = 0;
}
y += _y_spd;

// Make sure to update speed and direction
//x_speed_ = point_distance(0, 0, x_speed_, y_speed_);
