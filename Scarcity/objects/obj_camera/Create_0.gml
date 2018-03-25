target_ = noone;
scale_ = 4;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);

enum camera_speed {
	normal = 10,
	dramatic = 50
}

camera_speed_ = 1/camera_speed.normal;
