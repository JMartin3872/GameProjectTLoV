/// @description Play music on room start

if(!audio_is_playing(myMusic)){
	audio_stop_sound(global.currentMusic);
	if(myMusic != noone){
		audio_play_sound(myMusic, 1000, true);
	}
	
	global.currentMusic = myMusic;
}
