/// @description ?
function FSStateRotate(){
	
	if(sprite_index != sFSHeadRotate){
		sprite_index = sFSHeadRotate;
		countdown = 60;
		lastState = FSStateRotate;
	}
	
	image_angle += 10;
	
	
	if(countdown == 0){
		state = FSStateController;
	}
	
	else{
		countdown--;	
	}
	
}