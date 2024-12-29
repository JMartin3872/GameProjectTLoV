// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd1_boss_4(){
	with(oAbominableYetiDead){
	sprite_index = sAbominableYetiReinforcement;
		if(place_meeting(x,y,oWall)){
			while(place_meeting(x,y,oWall)){
				y--;	
			}	
		}
	}
	audio_play_sound(snEnemyBigDeath,100,false);
	Screenshake(10,120);
}