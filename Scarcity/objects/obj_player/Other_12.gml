/// @description Fall State

apply_gravity_to_movement_entity();
move_movement_entity_y();
move_movement_entity_x();

if (y_speed_ <= 0) {
	state_ = player.walk;	
}