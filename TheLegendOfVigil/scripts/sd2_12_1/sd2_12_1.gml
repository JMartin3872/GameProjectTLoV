// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd2_12_1(){
	
	with(oFSChaseLeftIntro){
		instance_change(oFSChaseLeft,true);	
	}
	
	audio_play_sound(mFSChase, 1000, true);
	global.currentMusic = mFSChase;
	
	instance_create_layer(oPlayer.x, oPlayer.y, "Player", autoCamera2_12)
	
}