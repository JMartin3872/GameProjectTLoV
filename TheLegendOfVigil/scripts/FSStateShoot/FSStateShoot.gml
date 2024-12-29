/// @description ?
function FSStateShoot(){
	if(sprite_index != sFSShoot){
		sprite_index = sFSShoot;
	}
	
	if(mySpawnpoint == 1 || mySpawnpoint == 3){
		
		var start_angle = floor(numScatterShots/2);
		
		for(var i = 0; i < numScatterShots; i++){
			with(instance_create_layer(x + dcos(image_angle + 180) * 48, y - dsin(image_angle +180) * 48, "Bullets", oFSShot)){
				myDirection = other.image_angle + (180 - (15 * start_angle)) + (i * 15);
				image_angle = random_range(0,364);
			}
		}
		
	}
		
	else{
		
		var start_angle = floor(numScatterShots/2);
		
		for(var i = 0; i < numScatterShots; i++){
			with(instance_create_layer(x + dcos(image_angle) * 48, y - dsin(image_angle) * 48, "Bullets", oFSShot)){
				myDirection = other.image_angle + ((15 * start_angle) - (i * 15));
				image_angle = random_range(0,364);
			}
		}
	}
		
	shotsLeft--;
	state = FSStateExitShoot;
}