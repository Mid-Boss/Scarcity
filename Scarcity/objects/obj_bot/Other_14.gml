/// @description Check Outside the Room Boundries
// You can write your code in this editor

if bbox_left > room_width || bbox_right < 0 || bbox_bottom < 0 || bbox_top > room_height
{
	room_restart();
}