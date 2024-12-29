/// @description ?
if(oPlayer.controller == 1){
	my_powerup_dialogue = dialogueClimbPowerupController
}

else{
	my_powerup_dialogue = dialogueClimbPowerupKeyboard
}

// Inherit the parent event
event_inherited();

global.hasPowerClimb = true;

