/// @description ?
function FSStateTailAttack(){
	if(sprite_index != sFSTailAttack){
		sprite_index = sFSTailAttack;
		audio_play_sound(snFSTailAttack,100,false);
		reverseTailMovement = false;
		turnPointTailAttack = room_width/2 - sign(myTail.image_xscale) * 128;
		
		switch(mySpawnpoint){
			case 0:{
				endPointTailAttack = mySpawnManager.spawn0.x;
				break;
			}
			
			case 1:{
				endPointTailAttack = mySpawnManager.spawn1.x;
				break;
			}
			
			case 2:{
				endPointTailAttack = mySpawnManager.spawn2.x;
				break;
			}
			
			case 3:{
				endPointTailAttack = mySpawnManager.spawn3.x;
				break;
			}
		}
	}
	
	if(reverseTailMovement == true && ((myTail.x <= endPointTailAttack && (mySpawnpoint == 0 || mySpawnpoint == 2)) || (myTail.x >= endPointTailAttack && (mySpawnpoint == 1 || mySpawnpoint == 3)))){
		
		tailAttacksLeft--;
		
		if(tailAttacksLeft <= 0){
			state = FSStateTailAttackExit;
		}
		
		else{
			state = FSStatePrepareTailAttack;
		}
	}
	
	else if(reverseTailMovement == true){
		if(mySpawnpoint == 0 || mySpawnpoint == 2){
			myTail.x -= (tailAttackSpeed + (abs(myTail.x - turnPointTailAttack)/25));
		}
		
		else{
			myTail.x += (tailAttackSpeed + (abs(myTail.x - turnPointTailAttack)/25));
		}
	}
	
	else if((mySpawnpoint == 0 || mySpawnpoint == 2) && myTail.x >= turnPointTailAttack){
		reverseTailMovement = true;
	}
	
	else if((mySpawnpoint == 1 || mySpawnpoint == 3) && myTail.x <= turnPointTailAttack){
		reverseTailMovement = true;
	}
	
	else{
		if(mySpawnpoint == 0 || mySpawnpoint == 2){
			myTail.x += (tailAttackSpeed + (abs(myTail.x - turnPointTailAttack)/25));
		}
		
		else{
			myTail.x -= (tailAttackSpeed + (abs(myTail.x - turnPointTailAttack)/25));
		}
	}
	
	FSUpdateBodyTailAttack();
	
	
}