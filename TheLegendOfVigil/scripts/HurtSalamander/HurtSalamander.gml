/// @description ?
function HurtSalamander(argument0, argument1){
	argument1.hp -= global.attackStrength * argument0;
	
	
	if(argument1.hp <= 0){
		with(argument1){
			isDying = true;
			
			hurtOnTouch = false;
			canBeHurt = false;
			hurtBuffer = 500;
			
			
			for(var i = 0; i < numBodyParts - 1; i++){
				myBodyList[i].hurtOnTouch = false;
				myBodyList[i].canBeHurt = false;
				myBodyList[i].hurtBuffer = 500;			
			}
			
			myTail.hurtOnTouch = false;
			myTail.canBeHurt = false;
			myTail.hurtBuffer = 500;
			
			switch(state){
				case(FSStateBeam):{
					image_xscale = 1;
					image_yscale = 1;
					image_angle = 0;
					
					if(instance_exists(myFrostBeam)){
						instance_destroy(myFrostBeam);
					}
		
					if(instance_exists(myFrostBeamScout)){
						instance_destroy(myFrostBeamScout);
					}
					
					state = FSStateExitBeam;
					break;
				}
				
				case(FSStatePrepareBeam):{
					state = FSStateExitBeam;
					break;
				}
				
				
				case(FSStateTailAttack):{
					tailAttacksLeft = 0;
					break;
				}
				
				case(FSStatePrepareTailAttack):{
					tailAttacksLeft = 0;
					break;
				}
				
				case(FSStateShoot):{
					shotsLeft = 1;
					break;
				}
				
				case(FSStatePrepareShoot):{
					shotsLeft = 1;
					break;
				}
				
				case(FSStateMoving):{
					movesLeft = 1;
					break;
				}
			}
				
			
		}
	}
	
	else{
		oFSHead.flash = 15;
		if(instance_exists(oDaggerBounce)){
			oFSHead.hurtBuffer = 15;
		}
	
		else{
			oFSHead.hurtBuffer = 50;
		}
	
		oFSHead.canBeHurt = false;
				
		for(var i = 0; i < oFSHead.numBodyParts; i++){
			if(i < oFSHead.numBodyParts - 1){
				oFSHead.myBodyList[i].hurtBuffer = 15;
				oFSHead.myBodyList[i].canBeHurt = false;
				oFSHead.myBodyList[i].flash = 15;
			}
					
			else{
				oFSHead.myTail.hurtBuffer = 15;
				oFSHead.myTail.canBeHurt = false;
				oFSHead.myTail.flash = 15;
			}
		}
	}
}