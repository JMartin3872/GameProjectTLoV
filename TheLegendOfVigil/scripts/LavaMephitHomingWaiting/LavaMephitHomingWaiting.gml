// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LavaMephitHomingWaiting(){
	if(instance_exists(oPlayer)){	
		
		//Check if player is under icetap and in trigger range
		if((oPlayer.y - y) > 0 && (oPlayer.y - y) < triggerLength && (abs(x - oPlayer.x) < 20) && !getLoose){
			getLoose = true;
			if(x < oPlayer.x){
				image_xscale = 1;
			}
			
			else{
				image_xscale = -1;	
			}
			
			if(!audio_is_playing(snMephitLaugh)){
					audio_play_sound(snMephitLaugh, 10, false);
			}
			
			sprite_index = sLavaMephitDrip;
			image_speed = 1;
			
		}
	}
}