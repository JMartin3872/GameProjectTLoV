/// @description ?
function DuergarPatrolling(){
	if(sprite_index != sDuergarPatrolling){
		sprite_index = sDuergarPatrolling;	
		image_xscale = sign(walkSpeed);
		myCrossbow.image_xscale = image_xscale;
	}
	
	if(!global.gamePaused && instance_exists(oPlayer)){
		//Change direction if there isn't ground in front of enemy
		if(place_meeting(x, y+1, oWall) && !place_meeting(x + sign(walkSpeed) * 16, y+1, oWall)){
			walkSpeed *= -1;
			image_xscale = sign(walkSpeed);
			myCrossbow.image_xscale = image_xscale;
		}
		
		//Change direction if hitting wall.
		if(place_meeting(x + sign(walkSpeed), y, oWall)){
			walkSpeed *= -1;
			image_xscale = sign(walkSpeed);
			myCrossbow.image_xscale = image_xscale;
		}
		
		vSpeed += grav;
		
		//If on ground, reset vSpeed
		if(place_meeting(x,y + vSpeed, oWall)){
			while(!place_meeting(x,y + sign(vSpeed), oWall)){
				y += sign(vSpeed);
			}
			vSpeed = 0;
		}
		
		x += walkSpeed;
		y+= vSpeed;
		
		if(point_in_rectangle(oPlayer.x,oPlayer.y, x - aiming_range_x_left, y - aiming_range_y_up, x + aiming_range_x_right, y + aiming_range_y_down)){
			if(!audio_is_playing(snDuergarAim)){
				audio_play_sound(snDuergarAim,10,false);
			}
			state = DuergarAiming;
		}	
	}
}