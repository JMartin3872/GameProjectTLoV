/// @description ?
function FSStateExitBeam(){
	if(sprite_index != sFSExitBeam){
		sprite_index = sFSExitBeam;
		if(audio_is_playing(snFSBeam)){
			audio_stop_sound(snFSBeam)
		}
		countdown = beamExitWaitingTime;
	}	

	if (countdown == 0){
		switch(mySpawnpoint){
			case 4:{
				if(mySpawnManager.spawn4.y + 20 < oFSHead.y){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
			
				else{
					y += exitHoleSpeed;
					if(!isDying){
						FSUpdateBodyPosition();
					}
					
					else{
						for(var i = 0; i < numBodyParts-1; i++){
							myBodyList[i].y += exitHoleSpeed;	
						}
					}
				}
			
				break;
			}
			
			case 5:{
				if(mySpawnManager.spawn5.y > oFSHead.y){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
			
				else{
					y -= exitHoleSpeed;
					FSUpdateBodyPosition();
				}
			
				break;
			}
			
			case 6:{
				if(mySpawnManager.spawn6.y > oFSHead.y){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
			
				else{
					y -= exitHoleSpeed;
					FSUpdateBodyPosition();
				}
				
				break;
			}
		}
	}
	
	else{
		countdown--;	
	}
}