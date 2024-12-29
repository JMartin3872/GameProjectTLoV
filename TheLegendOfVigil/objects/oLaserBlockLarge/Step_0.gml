/// @description Insert description here
// You can write your code in this editor
if(!global.gamePaused && started){
	if(firing){
		if(countdown <= 0){
			firing = false;
			idlePreCharge = true;
			countdown = idleTimePreCharge
			for(var i = 0; i < array_length(myBeams); i++){
				instance_destroy(myBeams[i]);
			}
			audio_stop_sound(snFSBeam);
		
		}
	
		else{
			countdown--;
		}
	}

	else if(idlePreCharge){
		if(countdown <= 0){
			idlePreCharge = false;
			charging = true;
			countdown = chargeTime;
			if(instance_exists(oPlayer) && point_in_rectangle(oCamera.x, oCamera.y,x-room_width,y-480, x + 270, y + 480)){
				audio_play_sound(snFSChargeBeam,100,true);
			}
		
			event_perform(ev_other,ev_user1);
		}
	
		else{
			countdown--;
		}
	}

	else if(charging){
		if(countdown <= 0){
			charging = false;
			idleTimePostCharge= true;
			countdown = idleTimePostCharge
		
			audio_stop_sound(snFSChargeBeam);
		}
	
		else{
			countdown--;
		}
	}

	else if(idleTimePostCharge){
		if(countdown <= 0){
			idleTimePostCharge = false;
			firing = true;
			countdown = fireTime
		
			for(var i = 0; i < array_length(myTelegraph); i++){
				instance_destroy(myTelegraph[i]);
			}
		
		
			if(instance_exists(oPlayer) && point_in_rectangle(oCamera.x, oCamera.y,x-room_width,y-480, x + 270, y + 480)){
				audio_play_sound(snFSBeam,100,true);
			}
				
			event_perform(ev_other,ev_user0);
		}
	
		else{
			countdown--;	
		}
	}
}