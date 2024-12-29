// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd3_14_Auto_Camera(){
	audio_play_sound(mFSChase,100,true);
	global.currentMusic = mFSChase;
	instance_create_layer(oPlayer.x, oPlayer.y, "Player", autoCamera3_14)
}