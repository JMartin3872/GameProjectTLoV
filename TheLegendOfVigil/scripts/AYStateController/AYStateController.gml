/// @description ?
function AYStateController(){
	
	EnemyCollision();
	
	
	if(sprite_index != sAbominableYetiIdle){
		sprite_index = sAbominableYetiIdle;
		countdown = interStateIdleDelay;
		
		if(!place_meeting(x,y+1,oWall)){
			
			while(!place_meeting(x,y+1,oWall)){
				y++;	
			}
			
		}
	}
	
	if(countdown <= 0){
		//If there are bounceblocks include charge state	
		while(newState == lastState){
			if(instance_exists(oBounceBlock)){
				var i = random_range(0,9);

		
				if(i < 2){
					newState = AYStateGatherSnow;
				}
		
				else if(i < 5){
					newState = AYStatePrepareJump;
				}
			
				else if(i < 6 && !reinforcement_empty){
			
					newState = AYStateReinforcement;
			
				}
		
				else{
					newState = AYStatePrepareCharge;	
				}
		
			}
	
			//Else don't include chargestate
			else{
				var i = random_range(0,8);
		
				if(i < 4){
					newState = AYStateGatherSnow;
				}
		
				else if(i < 8){
					newState = AYStatePrepareJump;
				}
		
				else if(!reinforcement_empty){
			
					newState = AYStateReinforcement;
			
				}
			}
		}
	
		state = newState;
	
	}
	
	else{
		countdown--;	
	}
}