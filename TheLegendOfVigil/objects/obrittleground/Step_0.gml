/// @description Check if player stands on top of block
//Check if player stands on block and if so start crumbling
if(!crumbling && place_meeting(x,y - 1, oPlayer) && time_source_get_state(destroy_timer) != time_source_state_active){
	time_source_start(destroy_timer);
	crumbling = true;
	audio_play_sound(snShaking, 10, false);
}

if(global.gamePaused && time_source_get_state(destroy_timer) == time_source_state_active){
	time_source_pause(destroy_timer);	
}

else if(time_source_get_state(destroy_timer) == time_source_state_paused && !global.gamePaused){
	time_source_resume(destroy_timer);
}



