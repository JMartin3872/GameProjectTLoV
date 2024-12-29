/// @description Restore energy



if(global.playerEnergy != global.playerEnergyMax){
	global.playerEnergy = global.playerEnergyMax;
	audio_play_sound(snHealSuccess, 10, false, 1, 0, 1.5, 1);
}
