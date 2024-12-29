// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DuergarAimingFlying(){
	if(!global.gamePaused && instance_exists(oPlayer)){
		if(sprite_index != sDuergarFlyingAiming){
			sprite_index = sDuergarFlyingAiming;
			aimCountdown = aiming_time;
			myCrossbow.image_xscale = 1;
		}

		image_xscale = (oPlayer.x < x) ? -1:1;
		
		myCrossbow.image_angle = point_direction(myCrossbow.x,myCrossbow.y,oPlayer.x,oPlayer.y);
		
		
		if(!point_in_rectangle(oPlayer.x,oPlayer.y, x - aiming_range_x_left, y - aiming_range_y_up, x + aiming_range_x_right, y + aiming_range_y_down)){
			myCrossbow.image_angle = 0;
			state = DuergarIdleFlying;
		}
		
		if(aimCountdown <= 0){
			state = DuergarShootFlying;
		}
		
		else{
			aimCountdown--;	
		}
	}
}