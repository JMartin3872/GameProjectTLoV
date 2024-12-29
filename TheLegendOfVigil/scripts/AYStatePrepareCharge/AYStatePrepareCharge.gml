/// @description ?
function AYStatePrepareCharge(){
	
	EnemyCollision();

	if(lastState != AYStatePrepareCharge){
		sprite_index = sAbominableYetiPrepareCharge;
		countdown = prepareChargeCountdown;
		lastState = AYStatePrepareCharge;
		reinforcement_empty = false;
	}
	
	if(!global.gamePaused){
		countdown--;	
	}
	
	if(countdown <= 0){
		state = AYStateCharging;
	}
	

	
}