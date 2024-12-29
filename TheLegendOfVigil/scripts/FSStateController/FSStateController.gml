/// @description ?
function FSStateController(){
	if(sprite_index != sFSHeadIdle){
		image_xscale = 1;
		image_yscale = 1;
		sprite_index = sFSHeadIdle;
		countdown = interStateIdleDelay;
	}
	
	
	if(countdown <= 0){
		if(!isDying){
			//Choose a new state which is not equal to laststate.	
			while(newState == lastState){
				var i = irandom_range(0,3);
				
				switch(i){
					case 0:{
						newState = FSStatePrepareBeam;
						break;
					}
					
					case 1:{
						newState = FSStateMoving;
						break;
					}
					
					case 2:{
						newState = FSStatePrepareShoot;
						break;
					}
					
					case 3:{
						newState = FSStatePrepareTailAttack;
						break;
					}
				}			
			}
			
				state = newState;
		}
		
		else{
			state = SalamanderPrepareDying;	
			if(instance_exists(oPlayer)){
				instance_create_layer(oPlayer.x,oPlayer.y,"Player",dialogue2_Boss_Dead);
			}
			audio_stop_sound(mBoss2);
			global.currentMusic = noone;
		}
	}
	
	else{
		countdown--;	
	}
}