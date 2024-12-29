/// @description Getting player coordinates.

if(instance_exists(oPlayer)){
	
	target_coordinate_x = oPlayer.x;
	target_coordinate_y = oPlayer.y - 15;
	target_direction = point_direction(x,y,target_coordinate_x,target_coordinate_y);
	
}


else{
	instance_destroy();	
}


spinSpeed = random_range(-maxSpinSpeed, maxSpinSpeed);