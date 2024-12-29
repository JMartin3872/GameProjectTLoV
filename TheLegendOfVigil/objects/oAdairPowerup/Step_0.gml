/// @description Insert description here
// You can write your code in this editor
if(travelTime <= 0){
	
	repeat 10{
		with(instance_create_layer(x,y,"Bullets",oDashParticles)){
			
			direction = random_range(0, 364);
		}
	}
	
	instance_create_layer(x,y,"Entities",myPowerup);
	instance_destroy(self);
}

else{
	x += hSpeed;
	y += vSpeed * sin(get_timer()/200000);
	travelTime--;	
}