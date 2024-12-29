// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MephitHomingWaiting(){
	if(instance_exists(oPlayer)){	
		
		//Check if player is under icetap and in trigger range
		if((oPlayer.y - y) > 0 && (oPlayer.y - y) < triggerLength && (abs(x - oPlayer.x) < 20) && !getLoose){
			audio_play_sound(snShaking, 10, false);
			getLoose = true;
			if(x < oPlayer.x){
				image_xscale = 1;
			}
			
			else{
				image_xscale = -1;	
			}
		}
		
		//Shaking until fallcounter reaches stopeshake, then start transforming
		else if(getLoose && !global.gamePaused){
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
				if(!audio_is_playing(snMephitLaugh)){
					audio_play_sound(snMephitLaugh, 10, false);
				}
			}
	
			else if(fallCounter == 0){
				getLoose = false;
				image_speed = 1;
			}
			
			fallCounter--;
		}
	}
}