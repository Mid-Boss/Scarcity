///@arg direction
///@arg acceleration
///@arg max_speed

var _acceleration = argument0;
var _max_speed = argument1;

x_speed_ += _acceleration;
x_speed_ = min(x_speed_, _max_speed);

