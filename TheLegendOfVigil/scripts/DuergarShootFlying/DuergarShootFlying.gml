/// @description ?
function DuergarShootFlying(){
	if(sprite_index != sDuergarFlyingShoot){
		sprite_index = sDuergarFlyingShoot;
		shootCountdown = shoot_delay;
	}
	
	if(instance_exists(oPlayer) && !global.gamePaused){
		
		if(!point_in_rectangle(oPlayer.x,oPlayer.y, x - aiming_range_x_left, y - aiming_range_y_up, x + aiming_range_x_right, y + aiming_range_y_down)){
			myCrossbow.image_angle = 0;
			state = DuergarIdleFlying;
		}
		
		if(shootCountdown <= 0){
			with(instance_create_layer(myCrossbow.x, myCrossbow.y, "Bullets", oeCrossbowBolt)){
				image_angle = other.myCrossbow.image_angle;
				direction = other.myCrossbow.image_angle;
			}
			
			audio_play_sound(snDuergarShoot,10,false);
			
			state = DuergarAimingFlying;
		}
		
		else{
			shootCountdown--;	
		}	
	}
}