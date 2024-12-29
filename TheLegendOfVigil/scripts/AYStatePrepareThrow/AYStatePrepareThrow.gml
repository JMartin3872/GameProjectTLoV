/// @description ?
function AYStatePrepareThrow(){
	if(sprite_index != sAbominableYetiPrepareThrow){
		sprite_index = sAbominableYetiPrepareThrow;		
		countdown = prepareThrowDelay;
		
		if(place_meeting(x,y,oWall)){
			while(place_meeting(x,y,oWall)){
				y--;	
			}
			
		}
	}
	
	if(countdown <= 0){	
		
		with(instance_create_layer(x + (30 * sign(image_xscale)), y - 30,"Bullets", oSnowBall)){
			image_xscale = oAbominableYeti.image_xscale;	
		}
		snowAmmunition--;
		
		state = AYStateThrowing;
	}
	
	if(!global.gamePaused){
		countdown--;	
	}
		
}