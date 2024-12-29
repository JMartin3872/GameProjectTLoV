// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd1_boss_3(){
	audio_stop_sound(global.currentMusic);
	with(oAbominableYetiDead){
		if(instance_exists(oPlayer)){
			if(x > room_width/2){
				image_xscale = -1;	
			}
			
			else{
				image_xscale = 1;
			}
			oPlayer.image_xscale = sign(point_direction(oPlayer.x,oPlayer.y,x,y));
			
		}
	}
}