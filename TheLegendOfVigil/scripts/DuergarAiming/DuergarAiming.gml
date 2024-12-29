/// @description ?
function DuergarAiming(){
	if(!global.gamePaused && instance_exists(oPlayer)){
		if(sprite_index != sDuergarAiming){
			sprite_index = sDuergarAiming;
			aimCountdown = aiming_time;
			myCrossbow.image_xscale = 1;
		}
		
		vSpeed += grav;
		
		if(place_meeting(x,y + vSpeed, oWall)){
			while(!place_meeting(x,y + sign(vSpeed), oWall)){
				y += sign(vSpeed);
			}
			vSpeed = 0;
		}
		
		y+= vSpeed;
	
		
		image_xscale = (oPlayer.x < x) ? -1:1;
		
		myCrossbow.image_angle = point_direction(myCrossbow.x,myCrossbow.y,oPlayer.x,oPlayer.y);
		
		
		if(!point_in_rectangle(oPlayer.x,oPlayer.y, x - aiming_range_x_left, y - aiming_range_y_up, x + aiming_range_x_right, y + aiming_range_y_down)){
			myCrossbow.image_angle = 0;
			if(object_index == oeDuergarStationary){
				state = DuergarIdle;
			}
			
			else{
				state = DuergarPatrolling;	
			}
		}
		
		if(aimCountdown <= 0){
			state = DuergarShoot;
		}
		
		else{
			aimCountdown--;	
		}
	}
}