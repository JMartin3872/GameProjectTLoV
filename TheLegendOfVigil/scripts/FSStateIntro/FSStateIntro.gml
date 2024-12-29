// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FSStateIntro(){
	if(sprite_index != sFSHeadIntro){
		sprite_index = sFSHeadIntro;
		image_angle = 0;
		image_xscale = 1;
		x = mySpawnManager.spawn2.x - 30;
		y = mySpawnManager.spawn2.y;
		hSpeed = movementSpeed;
		moveTarget = mySpawnManager.spawn3;
		FSUpdateBodyPosition();
		
		for(var i = 0; i < numBodyParts -1; i++){
			myBodyList[i].image_angle = 0;
			myBodyList[i].image_xscale = 1;
		}
		myTail.image_angle = 0;
		myTail.image_xscale = 1;		
	}
	
	if(myTail.x < moveTarget.x + 30){
		x += hSpeed;
		FSMoveBodyPart();
	}
	
	else{
			
		if(instance_exists(dialogue2_Boss)){
			started = false;
		}
		
		state = FSStateController;
	}

}