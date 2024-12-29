// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd2_12_2(){
	audio_stop_sound(oMusic.myMusic);
	Screenshake(10,60);
	audio_play_sound(snPoof,100,false,1,0,0.5,1);
	oPlayer.vSpeed = -4;
}