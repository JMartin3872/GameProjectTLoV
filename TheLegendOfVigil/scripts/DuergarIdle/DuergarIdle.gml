/// @description ?
function DuergarIdle(){	
	if(sprite_index != sDuergar){
			sprite_index = sDuergar;
			myCrossbow.image_xscale = image_xscale;
	}
	
	vSpeed += grav;
		
	if(place_meeting(x,y + vSpeed, oWall)){
		while(!place_meeting(x,y + sign(vSpeed), oWall)){
			y += sign(vSpeed);
		}
		vSpeed = 0;
	}
		
	y+= vSpeed;
	
	
	if(instance_exists(oPlayer)){
		if(point_in_rectangle(oPlayer.x,oPlayer.y, x - aiming_range_x_left, y - aiming_range_y_up, x + aiming_range_x_right, y + aiming_range_y_down)){
			audio_play_sound(snDuergarAim,10,false);
			state = DuergarAiming;
		}
	}
}