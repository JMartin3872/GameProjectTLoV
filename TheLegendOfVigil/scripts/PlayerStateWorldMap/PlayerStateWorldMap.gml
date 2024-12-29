/// @description ?
function PlayerStateWorldMap(){
	
	if(reached_target && key_jump){
		audio_play_sound(snMenuSelect,50,false);
		global.currentLevel = oWorldMap.target.levelIndex;
		
		SlideTransition(TRANS_MODE.GOTO, oWorldMap.target.level);	
	}
	
	if(key_left && oWorldMap.counter_my_levels > 0 && reached_target){	
		
		if(instance_exists(oWorldMap.my_levels[(oWorldMap.counter_my_levels - 1)])){
			oWorldMap.counter_my_levels--;
			oWorldMap.target = oWorldMap.my_levels[oWorldMap.counter_my_levels];
			reached_target = false;
			controllerCooldown = 30;
			sprite_index = sPlayerRunWorldMap;
			image_xscale = -1;
		}
	}

	if(key_right && oWorldMap.counter_my_levels < 4  && reached_target){
		if(instance_exists(oWorldMap.my_levels[(oWorldMap.counter_my_levels + 1)])){
			oWorldMap.counter_my_levels++;
			oWorldMap.target = oWorldMap.my_levels[oWorldMap.counter_my_levels];
			reached_target = false;
			controllerCooldown = 30;
			sprite_index = sPlayerRunWorldMap;
			image_xscale = 1;
		}
		
	}


	if(!place_meeting(x, y, oWorldMap.target) && !reached_target){
		move_direction = point_direction(x, y, oWorldMap.target.x, oWorldMap.target.y);
		hSpeed = lengthdir_x(3, move_direction);
		vSpeed = lengthdir_y(3, move_direction);
		
	}
	
	else{
		reached_target = true;
		hSpeed = 0;
		vSpeed = 0;
		sprite_index = sPlayerWorldMap;
	}

	x += hSpeed;
	y += vSpeed;

}