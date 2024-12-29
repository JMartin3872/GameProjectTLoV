/// @description ?
function AYStateCharging(){
	EnemyCollision();
	
	if(sprite_index != sAbominableYetiCharging){
		sprite_index = sAbominableYetiCharging;	
		hSpeed = sign(image_xscale)*5;	
	}
	
	if(hSpeed < MaxChargeSpeed){
		hSpeed += sign(image_xscale)*0.1;	
	}
	
	if(place_meeting(x + hSpeed, y, oWall)){
		while(!place_meeting(x + sign(hSpeed), y, oWall)){
			x += sign(hSpeed);
		}
		
		Screenshake(10, 30);
		audio_play_sound(snAYcrash,20,false);
		state = AYStateCrashWall;
	}

}