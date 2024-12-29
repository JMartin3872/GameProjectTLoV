/// @description ?

if(hp <= 0){
	instance_destroy();	
}

if(hp != maxHp && image_index == 0){
	image_index = random_range(1, 4);	
}


if(global.gamePaused && time_source_get_state(hurtTimer) == time_source_state_active){
	time_source_pause(hurtTimer);
}

else if(!global.gamePaused && time_source_get_state(hurtTimer) == time_source_state_paused){
	time_source_resume(hurtTimer);
}

if(!global.gamePaused && !canBeHurt && time_source_get_time_remaining(hurtTimer) > (time_source_get_period(hurtTimer) / 2)){
	ShakeObject(self, xstart, ystart, 3, 1);	
}

else if(x != xstart || y != ystart){
	x = xstart;
	y = ystart;
}