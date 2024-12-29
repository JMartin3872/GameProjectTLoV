/// @description Updating Bodyparts position and direction
function FSUpdateBodyPosition(){

	if(sprite_index == sFSPrepareBeam || sprite_index == sFSExitBeam){
		for(var i = 1; i <= numBodyParts; i++){
	
			if(i < numBodyParts){
				if(mySpawnpoint != 4 || sprite_index != sFSExitBeam){
					if(mySpawnpoint == 4){
						myBodyList[i-1].image_xscale = image_xscale;
					}
					
					else{
						myBodyList[i-1].image_xscale = -1;
					}
					myBodyList[i-1].x = x;
					myBodyList[i-1].y = y + (96 * i * sign(image_yscale));
				}
				
				else{
					
					myBodyList[i-1].image_xscale = image_xscale;	
					myBodyList[i-1].x = x;
					myBodyList[i-1].y = y - (96 * i * sign(image_yscale));
				}
		
			}
	

			else{
				if(mySpawnpoint != 4 || sprite_index != sFSExitBeam){
					myTail.image_xscale = image_xscale;
					myTail.x = x;
					myTail.y = y + (96 * i * sign(image_yscale));
				}
				
				else{
					myTail.image_xscale = image_xscale;
					myTail.x = x;
					myTail.y = y - (96 * i * sign(image_yscale));
				}
			}
		}	
	}
	
	else if(sprite_index == sFSPrepareShoot || sprite_index == sFSExitShoot){
		
		if(mySpawnpoint == 4){
			for(var i = 1; i <= numBodyParts; i++){
	
				if(i < numBodyParts){
					myBodyList[i-1].image_xscale = image_xscale;
					myBodyList[i-1].x = x;
					myBodyList[i-1].y = y + (96 * i);
		
				}
	
		
				else{
					myTail.image_xscale = image_xscale;
					myTail.x = x;
					myTail.y = y + (96 * i);
				}
			}
		}
		
		else if(mySpawnpoint > 4){
			for(var i = 1; i <= numBodyParts; i++){
	
				if(i < numBodyParts){
					myBodyList[i-1].image_xscale = -1;
					myBodyList[i-1].x = x;
					myBodyList[i-1].y = y + (96 * i * sign(image_yscale));
		
				}
	
		
				else{
					myTail.image_xscale = image_xscale;
					myTail.x = x;
					myTail.y = y + (96 * i * sign(image_yscale));
				}
			}
		}
		
		else{
			for(var i = 1; i <= numBodyParts; i++){
	
				if(i < numBodyParts){
					myBodyList[i-1].image_xscale = image_xscale;
					myBodyList[i-1].x = x - (96 * i * sign(image_xscale));
					myBodyList[i-1].y = y;
		
				}
	
		
				else{
					myTail.image_xscale = image_xscale;
					myTail.x = x - (96 * i * sign(image_xscale));
					myTail.y = y;
				}
			}
			
		}
	
	}
	
	else if(sprite_index == sFSPrepareTailAttack){
		for(var i = 1; i <= numBodyParts; i++){
	
			if(i < numBodyParts){
				myBodyList[i-1].image_xscale = myTail.image_xscale;
				myBodyList[i-1].x = myTail.x - (96 * i * -myTail.image_xscale);
				myBodyList[i-1].y = myTail.y;
			}
		}
	}
		
		

	else{
		for(var i = 1; i <= numBodyParts; i++){
	
			if(i < numBodyParts){
				myBodyList[i-1].image_xscale = sign(hSpeed);
				myBodyList[i-1].x = x - (96 * i * sign(hSpeed));
				myBodyList[i-1].y = y;
		
			}
	
			else{
				myTail.image_xscale = sign(hSpeed);
				myTail.x = x - (96 * i * sign(hSpeed));
				myTail.y = y;
			}
		}
	}
}