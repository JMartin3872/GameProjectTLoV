// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd0_Intro_2(){
	var level_end = instance_create_layer(0,0,"Entities",oLevelEnd);
	
	with(level_end){
		my_target = rLevel0_0;
		x = oPlayer.x;
		y = oPlayer.y;
	}
}