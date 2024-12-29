/// @description Start moving camera
oCamera.follow = auto_move_camera_end;
oCamera.automatic = true;
oCamera.auto_speed_x = speed_x;
oCamera.auto_speed_y = speed_y;





if(wallsDown){
	with(instance_create_layer(oCamera.x - oCamera.view_w_half, oCamera.y + oCamera.view_h_half, "Walls", oWallCameraDown)){
		image_xscale = camera_get_view_width(view_camera[0]) / 32;
	}
}

if(wallsLeft){
	with(instance_create_layer(oCamera.x - oCamera.view_w_half - 32, oCamera.y - oCamera.view_h_half, "Walls", oWallCameraLeft)){
		image_yscale = camera_get_view_height(view_camera[0]) / 32;
	}
}

if(wallsRight){
	with(instance_create_layer(oCamera.x + oCamera.view_w_half, oCamera.y - oCamera.view_h_half, "Walls", oWallCameraRight)){
		image_yscale = camera_get_view_height(view_camera[0]) / 32;
	}
}

if(wallsUp){
	with(instance_create_layer(oCamera.x + oCamera.view_w_half - 32, oCamera.y - oCamera.view_h_half - 32, "Walls", oWallCameraUp)){
		image_xscale = camera_get_view_width(view_camera[0]) / 32;
	}
}

if(deathDown){
	with(instance_create_layer(oCamera.x - oCamera.view_w_half, oCamera.y + oCamera.view_h_half, "Walls", oWallDeathDown)){
		image_xscale = camera_get_view_width(view_camera[0]) / 32;
	}
	
}

if(deathLeft){
	with(instance_create_layer(oCamera.x - oCamera.view_w_half - 32, oCamera.y - oCamera.view_h_half, "Walls", oWallDeathLeft)){
		image_yscale = camera_get_view_height(view_camera[0]) / 32;
	}
}

if(deathRight){
	with(instance_create_layer(oCamera.x + oCamera.view_w_half, oCamera.y - oCamera.view_h_half, "Walls", oWallDeathRight)){
		image_yscale = camera_get_view_height(view_camera[0]) / 32;
	}
}

if(deathUp){
	with(instance_create_layer(oCamera.x + oCamera.view_w_half - 32, oCamera.y - oCamera.view_h_half - 32, "Walls", oWallDeathUp)){
		image_xscale = camera_get_view_width(view_camera[0]) / 32;
	}
}


instance_destroy(self);