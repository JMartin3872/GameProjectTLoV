// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd2_Boss_0(){
	audio_play_sound(snFSRoar,100,false,2,0,0.7,1);
	oFSHead.state = FSStateIntro;
	oFSHead.started = true;
}