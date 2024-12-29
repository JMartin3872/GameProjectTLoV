// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd2_12_3(){
	with(oFSChaseLeft){
		instance_change(oFSChaseLeftOutro,true);	
	}
	
	audio_stop_sound(mFSChase);
}