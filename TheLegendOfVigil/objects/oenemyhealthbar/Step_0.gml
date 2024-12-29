/// @description 

x = camera_get_view_x(view_camera[0]) + 480;
y = camera_get_view_y(view_camera[0]) + 50;

//reduce healthbar depending on owner hp and shake when hp changes
if(instance_exists(owner)){
	image_xscale = (owner.hp/owner.maxHp) * 10;
	
	
	if(owner.hp < current_hp){
		current_hp = owner.hp;
		shakeDuration = 20;
	}

	if(shakeDuration){
		ShakeObject(self, x, y, 3, 2, shakeDuration);	
		shakeDuration--;
	
	}
	
}


//Destroy if hp bar reaches 0
if(image_xscale = 0){
	instance_destroy();	
}


