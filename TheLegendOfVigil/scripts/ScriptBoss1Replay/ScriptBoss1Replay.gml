// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScriptBoss1Replay(){
	oBoss.started = true;
	audio_stop_sound(global.currentMusic);
	audio_play_sound(mBoss1,1000,false);
	global.currentMusic = mBoss1;
}