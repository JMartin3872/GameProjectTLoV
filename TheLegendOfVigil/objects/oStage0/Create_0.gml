/// @description set variables and create paths on the map
oWorldMap.my_levels[0] = self.id;
level = rLevel0_0;
max_number_of_coins = array_length(global.coins_level0);
coins_in_level = global.coins_level0;
coins_collected = 0;
levelIndex = 0;


level_text = "Vigil's Cabin";


for(i = 0; i <max_number_of_coins; i++){
		
	if(coins_in_level[i] == 1){
		coins_collected++;
	}
	
	if(coins_collected == max_number_of_coins){
		sprite_index = sLevelCleared;	
	}
}

