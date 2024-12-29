/// @description ?
function FSStatePrepareBeam(){
	if(sprite_index != sFSPrepareBeam){
		sprite_index = sFSPrepareBeam;
		
		audio_play_sound(snFSChargeBeam,100,false);
		
		countdown = beamChargeTime;
		
		mySpawnpoint = irandom_range(4, 6);
		
		switch(mySpawnpoint){
			case 4:{
				x = mySpawnManager.spawn4.x;
				y = mySpawnManager.spawn4.y;
				image_xscale = 1;
				image_yscale = 1;
				image_angle = 0;
				break;
			}
			
			case 5:{
				x = mySpawnManager.spawn5.x;
				y = mySpawnManager.spawn5.y;
				image_xscale = 1;
				image_yscale = -1;
				image_angle = 364;
				break;
			}
			
			case 6:{
				x = mySpawnManager.spawn6.x;
				y = mySpawnManager.spawn6.y;
				image_xscale = 1;
				image_yscale = -1;
				image_angle = 180;
				break;
			}
			
			
		}
		
		for(var i = 0; i < numBodyParts-1; i++){
				myBodyList[i].image_angle = 90;	
		}
		
		FSUpdateBodyPosition();
	}	

	switch(mySpawnpoint){
		case 4:{
			if(mySpawnManager.spawn4.y - 128 > oFSHead.y){
				if(countdown == 0){
					lastState = FSStatePrepareBeam;
					state = FSStateBeam;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				y -= enterHoleSpeed;
				FSUpdateBodyPosition();
			}
			
			break;
		}
			
		case 5:{
			if(mySpawnManager.spawn5.y + 128 < oFSHead.y){
				if(countdown == 0){
					lastState = FSStatePrepareBeam;
					state = FSStateBeam;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				y += enterHoleSpeed;
				FSUpdateBodyPosition();
			}
			
			break;
		}
			
		case 6:{
			if(mySpawnManager.spawn6.y + 128 < oFSHead.y){
				if(countdown == 0){
					lastState = FSStatePrepareBeam;
					state = FSStateBeam;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				y += enterHoleSpeed;
				FSUpdateBodyPosition();
			}
			
			break;
		}
	}
}