// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd1_boss_41(){
	oAbominableYetiDead.sprite_index = sAbominableYetiIdle;
	with(oAbominableYetiDead){
		if(!place_meeting(x,y+1,oWall)){
			while(!place_meeting(x,y+1,oWall)){
				y++;	
			}	
		}
	}
}