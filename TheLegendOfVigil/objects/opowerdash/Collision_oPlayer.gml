/// @description ?
if(oPlayer.controller == 1){
	my_powerup_dialogue = dialogueDashPowerupController
}

else{
	my_powerup_dialogue = dialogueDashPowerupKeyboard
}

// Inherit the parent event
event_inherited();

global.hasPowerDash = true;

