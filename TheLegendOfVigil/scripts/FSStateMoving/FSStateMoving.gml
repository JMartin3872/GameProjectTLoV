/// @description ?
function FSStateMoving(){
	//Setup spawnposition and update body
	if(sprite_index != sFSHeadMoving){
		sprite_index = sFSHeadMoving;
		newMove = true;
		movesLeft = amountOfMoves;
		image_angle = 0;
	}
	
	if(newMove){
		newMove = false;
		mySpawnpoint = round(random_range(0,3));
		
		switch (mySpawnpoint){			
			case 0:{
				image_xscale = 1;
				x = mySpawnManager.spawn0.x;
				y = mySpawnManager.spawn0.y;
				hSpeed = movementSpeed;
				moveTarget = mySpawnManager.spawn1;
				
				break;
			}
			
			case 1:{
				image_xscale = -1;
				x = mySpawnManager.spawn1.x;
				y = mySpawnManager.spawn1.y;
				hSpeed = -movementSpeed;
				moveTarget = mySpawnManager.spawn0;
				
				break;
			}
			
			case 2:{
				image_xscale = 1;
				x = mySpawnManager.spawn2.x;
				y = mySpawnManager.spawn2.y;
				hSpeed = movementSpeed;
				moveTarget = mySpawnManager.spawn3;
				
				break;
			}
			
			case 3:{
				image_xscale = -1;
				x = mySpawnManager.spawn3.x;
				y = mySpawnManager.spawn3.y;
				hSpeed = -movementSpeed;
				moveTarget = mySpawnManager.spawn2;
				
				break;
			}
		}
		
		FSUpdateBodyPosition();	
	}
	
	x += hSpeed;
	FSMoveBodyPart();
	
	if(hSpeed > 0 && place_meeting(myTail.bbox_left - sign(image_xscale) * 96, myTail.y, moveTarget)){
		
		movesLeft--;
		
		if(movesLeft == 0){
			state = FSStateController;
			lastState = FSStateMoving;
		}
		
		else{
			newMove = true;
		}
	}
	
	else if(hSpeed < 0 && place_meeting(myTail.bbox_right - sign(image_xscale) * 96, myTail.y, moveTarget)){
		
		movesLeft--;
		
		if(movesLeft == 0){
			state = FSStateController;
			lastState = FSStateMoving;
		}
		
		else{
			newMove = true;
		}
	}
}