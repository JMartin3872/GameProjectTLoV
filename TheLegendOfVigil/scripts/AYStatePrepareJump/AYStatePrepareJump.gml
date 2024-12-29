/// @description State for prepare jumping.
function AYStatePrepareJump(){
	
	EnemyCollision();
	
	//Set sprite and countdown for telegraphing
	if(sprite_index != sAbominableYetiPrepareJumping){
		sprite_index = sAbominableYetiPrepareJumping;
		lastState = AYStatePrepareJump;
		countdown = prepareJumpDelay;
	}
	
	//Change state
	if(countdown <= 0){
		state = AYStateJump;
	}
	
	if(!global.gamePaused){
		countdown--;	
	}
	

}