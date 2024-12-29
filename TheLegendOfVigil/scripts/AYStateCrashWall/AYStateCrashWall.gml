/// @description ?
function AYStateCrashWall(){
	EnemyCollision();
	
	if(sprite_index != sAbominableYetiCrashWall){
		sprite_index = sAbominableYetiCrashWall;
		countdown = 180;
		hSpeed = 5 * image_xscale;
		vSpeed = -3;
		
	}
	
	
	if(countdown <= 0){
		image_xscale *= -1;
		state = AYStateController;
	}
	
	else{
		countdown--;	
	}
	
	if(hSpeed != 0){
		hSpeed -= (0.5 * sign(image_xscale));
	}
	
	vSpeed += grav;
		
}