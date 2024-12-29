/// @description ?

if(oPlayer.controller == 1){
	my_powerup_dialogue = dialogueBouncePowerupController
}

else{
	my_powerup_dialogue = dialogueBouncePowerupKeyboard
}

// Inherit the parent event
event_inherited();

global.hasPowerBounce = true;

