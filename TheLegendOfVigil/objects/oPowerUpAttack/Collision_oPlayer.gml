/// @description ?

if(oPlayer.controller == 1){
	my_powerup_dialogue = dialogueAttackPowerupController
}

else{
	my_powerup_dialogue = dialogueAttackPowerupKeyboard
}

// Inherit the parent event
event_inherited();

global.hasPowerAttack = true;

