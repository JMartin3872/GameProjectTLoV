/// @description ?
function FSStateExitShoot(){
	if(sprite_index != sFSExitShoot){
		sprite_index = sFSExitShoot;
	}	

	switch(mySpawnpoint){
		case 0:{
			if(mySpawnManager.spawn0.x > oFSHead.x){
				
				if(shotsLeft == 0){
					state = FSStateController;
				}
				
				else{
					state = FSStatePrepareShoot;	
				}
				
			}
			
			else{
				x -= exitHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			break;
		}
		
		case 1:{
			if(mySpawnManager.spawn1.x + 48 < oFSHead.x){
				if(shotsLeft == 0){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					
					state = FSStateController;
				}
				
				else{
					state = FSStatePrepareShoot;	
				}
			}
			
			else{
				x += exitHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			break;
		}
		
		case 2:{
			if(mySpawnManager.spawn2.x > oFSHead.x){
				if(shotsLeft == 0){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
				
				else{
					state = FSStatePrepareShoot;	
				}
			}
			
			else{
				x -= exitHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			break;
		}
		
		case 3:{
			if(mySpawnManager.spawn3.x + 48 < oFSHead.x){
				if(shotsLeft == 0){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
				
				else{
					state = FSStatePrepareShoot;	
				}
			}
			
			else{
				x += exitHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			break;
		}
		
		
		case 4:{
			if(mySpawnManager.spawn4.y < oFSHead.y){
				if(shotsLeft == 0){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
				
				else{
					state = FSStatePrepareShoot;	
				}
			}
			
			else{
				y += exitHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			break;
		}
			
		case 5:{
			if(mySpawnManager.spawn5.y > oFSHead.y){
				if(shotsLeft == 0){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
				
				else{
					state = FSStatePrepareShoot;	
				}
			}
			
			else{
				y -= exitHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			break;
		}
			
		case 6:{
			if(mySpawnManager.spawn6.y > oFSHead.y){
				if(shotsLeft == 0){
					for(var i = 0; i < numBodyParts-1; i++){
						myBodyList[i].image_angle = 0;	
					}
					state = FSStateController;
				}
				
				else{
					state = FSStatePrepareShoot;	
				}
			}
			
			else{
				y -= exitHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
				
			break;
		}
	}
}