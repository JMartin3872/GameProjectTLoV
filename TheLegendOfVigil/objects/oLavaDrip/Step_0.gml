/// @description Animation start and create drop.
if(!global.gamePaused){
	if(countdown <= 0){
		image_speed = 1;
		countdown = dropInterval;
	}

	else{
		countdown--;	
	}

	if(image_index >= 5 && image_index < 6 && !dropped){
		dropped = true;
		instance_create_layer(x,y,"Bullets", oLavaDrop);
	}
}