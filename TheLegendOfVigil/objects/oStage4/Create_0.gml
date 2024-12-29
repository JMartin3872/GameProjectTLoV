/// @description Setup variables and check if previous stage clear.

if(!global.cleared_stage_3){
	instance_destroy();	
}

else{
	oWorldMap.my_levels[4] = self.id;
	level = rLevel2_13;
	max_number_of_coins = 0;
	coins_in_level = 0;
	level_text = "Skies above Frostgale Valley";
	levelIndex = 4;


	last_level = oStage3;
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
}