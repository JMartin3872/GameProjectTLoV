/// @description conditions for falling and falling

//If player is within decided distance in both x and y, start shaking and play sound
if(instance_exists(oPlayer) && (oPlayer.y - y) > 0 && (oPlayer. y - y) < triggerLength && (abs(x - oPlayer.x) < 20) && !getLoose && !falling){
	audio_play_sound(snShaking, 10, false);
	
	getLoose = true;
	
}


//Shaking until fallcounter reaches stopeshake, then start falling
if(getLoose && !global.gamePaused){
	
	if((fallCounter % 3) == 0 && (fallCounter > stopShake)){
		if(fallCounter % 2 = 0){
			x = (xstart + 1);
		}
		
		else{
			x = (xstart - 1);
		}
	}
	
	else if(fallCounter == stopShake){
		x = xstart;
	}
	
	else if(fallCounter == 0){
		x = xstart;
		getLoose = false;
		falling = true;
	}
	
	fallCounter--;
}


//Falling
if(falling && !global.gamePaused){
	y += fallSpeed;	
}