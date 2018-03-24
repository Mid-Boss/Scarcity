/// @description scr_check_collision()

// Retrieve the collision layer's tilemap
var k = layer_get_id("Tiles_Collisions");
tilemap = layer_tilemap_get_id(k);
env_collide = false;

// Variables to map collison perimeters
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

// Perimeters based on velocity and direction

	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	var o_collide = collision_line(bbox_left, bbox_bottom, bbox_right, 
					bbox_bottom, obj_parent_collision_env, false, true);
	if (t1 != 0 || t2 != 0) || o_collide != noone// downwards
	{
		if o_collide == noone
			env_collide = true;
		return "bottom";
	}    

	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var o_collide = collision_line(bbox_left, bbox_top, bbox_right, 
					bbox_top, obj_parent_collision_env, false, true);
					
	if (t1 != 0 || t2 != 0) || o_collide != noone
	{
		if o_collide == noone
			env_collide = true;
		return "top";
	} 

	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	var o_collide = collision_line(bbox_left, bbox_bottom, bbox_right, 
					bbox_bottom, obj_parent_collision_env, false, true);
	
	if !(t1 != 0 || t2 != 0) && o_collide == noone//&& t == 0
	{
		if o_collide == noone
			env_collide = true;
		return "nothing";
	}    

	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	var o_collide = collision_line(bbox_right, bbox_top, bbox_right, 
					bbox_bottom, obj_parent_collision_env, false, true);
	
	if (t1 != 0 || t2 != 0) || o_collide != noone
	{
		if o_collide == noone
			env_collide = true;
		return "right";
	}    

	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var o_collide = collision_line(bbox_left, bbox_top, bbox_left, 
					bbox_bottom, obj_parent_collision_env, false, true);
	
	if (t1 != 0 || t2 != 0) || o_collide != noone
	{
		if o_collide == noone
			env_collide = true;
		return "left";
	} 

return "busy";