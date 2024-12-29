// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SalamanderDeath(){
	instance_create_layer(x, y, layer, objectDeath);
	
	audio_play_sound(soundDeath, 10, false);
	
	instance_destroy();	

}