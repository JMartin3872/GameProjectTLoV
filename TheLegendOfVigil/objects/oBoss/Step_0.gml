/// @description Executing state

//If game isn't paused
if(!global.gamePaused)
{
	//If started and not hitstunned
	if(started && !hitStunned){
		script_execute(state);
	}
	
	else{
		x += externalHSpeed;
		y += externalVSpeed;
	}
}