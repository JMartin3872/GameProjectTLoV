/// @description ?
function AYStateIdle(){
	EnemyCollision();
	
	hSpeed = 0;
	
	if(lastState != AYStateIdle){
		sprite_index = sAbominableYetiIdle;
		countdown = 60;
		lastState = AYStateIdle;
		
		
	}
	
	else if(!global.gamePaused){
		countdown--;
	}
	
	if(countdown <= 0){
		state = AYStateController;	
	}
	
}