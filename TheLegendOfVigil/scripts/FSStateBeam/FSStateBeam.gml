/// @description ?
function FSStateBeam(){
	if(sprite_index != sFSBeam){
		sprite_index = sFSBeam;
		audio_play_sound(snFSBeam,100,true, 2, 0, 1, 1);
		
		
		
		with(instance_create_layer(x + dcos(image_angle) * 48, y - dsin(image_angle) * 48, "Bullets", oFrostBeam)){
			other.myFrostBeam = self;
			myOwner = other;
			image_angle = other.image_angle;
		}
		
		with(instance_create_layer(x + dcos(image_angle) * 48, y - dsin(image_angle) * 48, "Bullets", oFrostBeamScout)){
			other.myFrostBeamScout = self;
			image_angle = other.image_angle;
		}
		
		
	}
	
	myFrostBeamScout.x = x + dcos(image_angle) * 48;
	myFrostBeamScout.y = y - dsin(image_angle) * 48;
	myFrostBeamScout.image_angle = other.image_angle;
	
	
	while(!position_meeting(myFrostBeamScout.x, myFrostBeamScout.y, oWall)){
		myFrostBeamScout.x += lengthdir_x(8, myFrostBeamScout.image_angle);
		myFrostBeamScout.y += lengthdir_y(8, myFrostBeamScout.image_angle);
	
	}
	
	
	myFrostBeam.image_angle = image_angle;
	myFrostBeam.x = x + dcos(image_angle) * 48;
	myFrostBeam.y = y - dsin(image_angle) * 48;
	myFrostBeam.image_xscale = point_distance(myFrostBeam.x, myFrostBeam.y, myFrostBeamScout.x, myFrostBeamScout.y)/48;
	
	
	
	
	
	
	if(mySpawnpoint == 4 && image_angle < 180){
		if(image_angle >= 90 && image_yscale == 1){
			image_yscale = -1;
		}
		
		image_angle++;	
	}
	
	else if(mySpawnpoint == 5 && image_angle > 270){
		image_angle--;	
	}
	
	else if(mySpawnpoint == 6 && image_angle < 270){
		image_angle++;	
	}
	
	
	else{
		state = FSStateExitBeam;
		instance_destroy(myFrostBeam);
		instance_destroy(myFrostBeamScout);
	}
	

}