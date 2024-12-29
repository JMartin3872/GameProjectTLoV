/// @description ?
function ShakeObject(objectID, start_x, start_y, magnitude_x, magnitude_y, duration = 0){
	
	with(objectID){
			x = start_x + random_range(-magnitude_x, magnitude_x);
			y = start_y + random_range(-magnitude_y, magnitude_x);
	}

	if(duration < 0){
		return 1;	
	}
	
	else{
		return 0;
	}
	
}