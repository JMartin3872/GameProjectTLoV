/// @description ?
function AYStateGatherSnow(){
	
	if(sprite_index != sAbominableYetiGatherSnow){
		sprite_index = sAbominableYetiGatherSnow
		image_speed = 1;
		lastState = AYStateGatherSnow;
		if(sign(image_xscale) == 1){
			with(instance_create_layer(other.bbox_right - 48, other.bbox_bottom, "Bullets", oSnowPile)){
				image_xscale = 2;
				image_yscale = 2;
			}
		}
		
		else{
			with(instance_create_layer(other.bbox_left + 48, other.bbox_bottom, "Bullets", oSnowPile)){
				image_xscale = -2;
				image_yscale = 2;
			}
		}
		
		countdown = gatherSnowDelay;
	}
	
	if(countdown <= 0){
		snowAmmunition = 3;
		if(instance_exists(oSnowPile)){
			instance_destroy(oSnowPile);
		}
		state = AYStatePrepareThrow;
	}
	
	//if(!global.gamePaused){
		countdown--;	
	//}

}