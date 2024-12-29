// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DuergarIdleFlying(){
	if(sprite_index != sDuergarFlying){
			sprite_index = sDuergarFlying;
			myCrossbow.image_xscale = image_xscale;
	}
	

		
	
	
	if(instance_exists(oPlayer)){
		if(point_in_rectangle(oPlayer.x,oPlayer.y, x - aiming_range_x_left, y - aiming_range_y_up, x + aiming_range_x_right, y + aiming_range_y_down)){
			audio_play_sound(snDuergarAim,10,false);
			state = DuergarAimingFlying;
		}
	}
}