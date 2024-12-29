/// @description ?
function FSStatePrepareTailAttack(){
	if(sprite_index != sFSPrepareTailAttack){
		sprite_index = sFSPrepareTailAttack;
		lastState = FSStatePrepareTailAttack;
		
		if(instance_exists(oPlayer)){
			if(abs(oPlayer.y - mySpawnManager.spawn2.y) < abs(oPlayer.y - mySpawnManager.spawn0.y)){
				mySpawnpoint = choose(2,3);
			}
			
			else{
				mySpawnpoint = choose(0,1);
			}
			
		}
		countdown = chargeTailTime;
		
		if(tailAttacksLeft == numTailAttacks){
			x = mySpawnManager.spawn4.x;
			y = mySpawnManager.spawn4.y;
		}
		
		image_xscale = 1;
		image_yscale = 1;
		image_angle = 0;
		
		switch(mySpawnpoint){
			case 0:{
				myTail.image_angle = 0;
				myTail.image_xscale = -1;
				myTail.x = mySpawnManager.spawn0.x;
				myTail.y = mySpawnManager.spawn0.y;
				break;
			}
		
			case 1:{
				myTail.image_angle = 0;
				myTail.image_xscale = 1;
				myTail.x = mySpawnManager.spawn1.x;
				myTail.y = mySpawnManager.spawn1.y;
				break;
			}
		
			case 2:{
				myTail.image_angle = 0;
				myTail.image_xscale = -1;
				myTail.x = mySpawnManager.spawn2.x;
				myTail.y = mySpawnManager.spawn2.y;
				break;
			}
		
			case 3:{
				myTail.image_angle = 0;
				myTail.image_xscale = 1;
				myTail.x = mySpawnManager.spawn3.x;
				myTail.y = mySpawnManager.spawn3.y;
				break;
			}
		}
	}
	
	if(mySpawnManager.spawn4.y - 64 > oFSHead.y){
		if(countdown == 0){
			state = FSStateTailAttack;
		}
		
		else{
			myTail.x -= enterHoleSpeed * -sign(myTail.image_xscale);
			FSUpdateBodyPosition();
			countdown--;
		}
		
	}
	
	else{
		y -= enterHoleSpeed;
		myTail.x += enterHoleSpeed * -sign(myTail.image_xscale);
		FSUpdateBodyPosition();
	}
	
	
	
	
	
}