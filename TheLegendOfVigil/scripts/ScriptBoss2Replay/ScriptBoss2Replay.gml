// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScriptBoss2Replay(){
	audio_play_sound(mBoss2, 1000, true);
	oFSHead.started = true;
	global.currentMusic = mBoss2;
}