/// @description Spawn Mephit

if(low_start){
	with(instance_create_layer(x,y,"Enemy",oeLavaMephitVertical)){
		direction_change = 352;
		walkSpeed = -2;
	}
}

else{
	with(instance_create_layer(x,y,"Enemy",oeLavaMephitVertical)){
		direction_change = 352;
		walkSpeed = 2;
	}
	
}