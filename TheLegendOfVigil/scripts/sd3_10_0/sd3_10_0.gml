// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd3_10_0(){
	Screenshake(20,60);
	audio_play_sound(snPoof,100,false,1,0,0.5,1);
	audio_play_sound(snPoof,100,false,1,0,0.5,1);
	oPlayer.vSpeed = -4;
}