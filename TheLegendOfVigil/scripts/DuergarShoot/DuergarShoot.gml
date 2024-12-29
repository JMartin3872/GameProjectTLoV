/// @description ?
function DuergarShoot(){
	if(sprite_index != sDuergarShooting){
		sprite_index = sDuergarShooting;
		shootCountdown = shoot_delay;
	}
	
	vSpeed += grav;
		
	if(place_meeting(x,y + vSpeed, oWall)){
		while(!place_meeting(x,y + sign(vSpeed), oWall)){
			y += sign(vSpeed);
		}
		vSpeed = 0;
	}
		
	y+= vSpeed;
	
	
	if(instance_exists(oPlayer) && !global.gamePaused){
		
		if(!point_in_rectangle(oPlayer.x,oPlayer.y, x - aiming_range_x_left, y - aiming_range_y_up, x + aiming_range_x_right, y + aiming_range_y_down)){
			myCrossbow.image_angle = 0;
			if(object_index == oeDuergarStationary){
				state = DuergarIdle;
			}
			
			else{
				state = DuergarPatrolling;	
			}
		}
		
		if(shootCountdown <= 0){
			with(instance_create_layer(myCrossbow.x, myCrossbow.y, "Bullets", oeCrossbowBolt)){
				image_angle = other.myCrossbow.image_angle;
				direction = other.myCrossbow.image_angle;
			}
			
			audio_play_sound(snDuergarShoot,10,false);
			
			state = DuergarAiming;
		}
		
		else{
			shootCountdown--;	
		}	
	}
}