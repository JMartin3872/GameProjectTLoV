/// @description Setup variables and check if previous stage clear.

if(!global.cleared_stage_0){
	instance_destroy();	
}

else{
	oWorldMap.my_levels[1] = self.id;
	level = rLevel1_0;
	max_number_of_coins = array_length(global.coins_level1);
	coins_in_level = global.coins_level1;
	coins_collected = 0;
	level_text = "Road to Village";
	levelIndex = 1;

	//Drawing dots to the previous level.
	last_level = oStage0;
	last_level_direction = point_direction(x,y,last_level.x,last_level.y);
	last_level_distance = point_distance(x,y,last_level.x,last_level.y);
	stop_drawing_path = (last_level_distance/10);

	var i = 0;

	while(i < stop_drawing_path){
	
		with(instance_create_layer(x + (lengthdir_x(10, other.last_level_direction) * i),y + (lengthdir_y(10,other.last_level_direction) * i),"instances", oMapPathDot)){
			image_angle = other.last_level_direction;	
		
		}
	
		i++;		 
	}
	
	for(var i = 0; i <max_number_of_coins; i++){
		
	if(coins_in_level[i] == 1){
		coins_collected++;
	}
	
	if(coins_collected == max_number_of_coins){
		sprite_index = sLevelCleared;	
	}
}
}

