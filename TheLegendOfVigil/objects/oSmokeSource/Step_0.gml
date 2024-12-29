/// @description Pause spawning if game is paused and unpause when unpaused.

if(global.gamePaused && (time_source_get_state(respawn) != time_source_state_paused)){
	time_source_pause(respawn);	
}

else if(!global.gamePaused && (time_source_get_state(respawn) == time_source_state_paused)){
	time_source_resume(respawn);
}

