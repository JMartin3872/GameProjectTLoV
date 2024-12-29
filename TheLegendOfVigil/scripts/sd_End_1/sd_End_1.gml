// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd_End_1(){
	instance_create_layer(x,y,"Entities",oRestoreCamera960540);
	audio_play_sound(mEnd,100,false);
	global.currentMusic = mEnd;
	
	oDialogue_point_End.started = true;
}