// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd3_Boss_Start_Phase3(){
	Screenshake(10,60);
	audio_play_sound(snPoof,100,false,1,0,0.5,1);
	instance_create_layer(oPlayer.x, oPlayer.y, "Player", oClearPhase2);
	with(oBrojk){
			sprite_index = sBrojkIdle;
	}
}