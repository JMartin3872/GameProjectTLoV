/// @description ?

//Changing sprite index and changing mode to move towards energybar.

if(global.playerEnergy != global.playerEnergyMax){
	done = true;
	sprite_index = sDaggerHitParticle;
	image_speed = 0;
	hSpeed = sign(point_distance(x, y, oEnergyBar.x, oEnergyBar.y));
	vSpeed = sign(point_distance(x, y, oEnergyBar.x, oEnergyBar.y));
}

else{
	instance_destroy();	
}