/// @description pausing and resuming timers if game is paused

if(global.gamePaused && time_source_get_state(respawn_timer) == time_source_state_active){
	time_source_pause(respawn_timer);	
}

else if(time_source_get_state(respawn_timer) == time_source_state_paused && !global.gamePaused){
	time_source_resume(respawn_timer);
}