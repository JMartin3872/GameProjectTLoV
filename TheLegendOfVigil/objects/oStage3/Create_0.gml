/// @description Setup variables and check if previous stage clear.

if(!global.cleared_stage_2){
	instance_destroy();	
}

else{
	oWorldMap.my_levels[3] = self.id;
	level = rLevel3_0;
	max_number_of_coins = array_length(global.coins_level3);
	coins_in_level = global.coins_level3;
	coins_collected = 0;
	level_text = "Dwarven Stronghold";
	levelIndex = 3;


	last_level = oStage2;
	last_level_direction = point_direction(x,y,last_level.x,last_level.y);
	last_level_distance = point_distance(x,y,last_level.x,last_level.y);
	stop_drawing_path = (last_level_distance/10);

	var i = 0;

	while(i <stop_drawing_path){
	
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

