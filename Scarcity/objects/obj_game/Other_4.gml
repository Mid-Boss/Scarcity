camera_ = instance_create_layer(0,0,"Instances",obj_camera);	
ui_ = instance_create_layer(0,0,"Instances",obj_UI);

if (object_exists(oArchSpawn)) {
	camera_.target_ = oArchSpawn;
	exit;
}

if object_exists(obj_bot) {
	camera_.target_ = obj_bot;
}