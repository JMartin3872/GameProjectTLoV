/// @description Checking death and executing state
//hurtbuffer counter and destroy instance if hp reaches 0



// Enter deathstate if hp is below 0.


//If game isn't paused, execute state
//OBS make death state
if(!global.gamePaused)
{
	if(!hitStunned){
		script_execute(state);
	}
	
	else{
		x += externalHSpeed;
		y += externalVSpeed;
	}
}