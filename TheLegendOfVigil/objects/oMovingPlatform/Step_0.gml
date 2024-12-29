/// @description ?
if(!global.gamePaused && activated && !stop){
	if(currentTarget == 0){
		currentTarget = target0;
		direction = point_direction(x, y, currentTarget.x, currentTarget.y);
	
	}

	if(abs(point_distance(x, y, currentTarget.x, currentTarget.y)) < abs(speedFactor)){
		
		if(currentTarget == stopAtTarget){
			stop = true;
			//x = currentTarget.x;
			//y = currentTarget.y;
			hSpeed = 0;
			vSpeed = 0;
			sprite_index = sMovingPlatformInactive;
		}
		
		else{
		
			if(currentTarget == target0){
				currentTarget = target1;	
			}
	
			else{
				currentTarget = target0;	
			}
	
			direction = point_direction(x,y, currentTarget.x, currentTarget.y);
		}
	
	
	}
	
	if(!stop){
		hSpeed = (lengthdir_x(1, direction) / 2) * speedFactor;
		vSpeed = (lengthdir_y(1, direction) / 2)  * speedFactor;
	}


	x += hSpeed;
	y += vSpeed;
}

else if(instance_exists(oPlayer) && place_meeting(x, bbox_top - 1, oPlayer)){
	activated = true;
	if(!stop){
		sprite_index = sMovingPlatformActive;
	}
}



