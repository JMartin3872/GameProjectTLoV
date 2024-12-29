/// @description Countdown and spawn fireball
if(!global.gamePaused){
	if(countdown <= 0){
		with(instance_create_layer(x,y,"Bullets", oFireball)){
			jumpPower = other.fireballJumpPower;	
		}
		
		if(point_in_circle(x,y,oCamera.x, oCamera.y, oCamera.view_w_half)){
			audio_play_sound(snFireballJump,10,false);
		}
		
		
		countdown = spawnInterval;
	}
	else{
		countdown--;	
	}
}