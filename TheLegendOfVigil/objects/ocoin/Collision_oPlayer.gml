/// @description Collect coin

//If we collide with coin for the first time, play sound, speed up spin and start cooldown for coin to be destroyed
if(!audio_is_playing(snCoin) && spinSpeed == 1)
{
	audio_play_sound(snCoin, 100, false);
	spinSpeed = 0.1;
	destroyCooldownStart = true;
}
if(!triggered){
	triggered = true;
	if(!array_contains(global.coins_level0,1) && !array_contains(global.coins_level1,1) && !array_contains(global.coins_level2,1) && !array_contains(global.coins_level3,1)){
		instance_create_layer(oPlayer.x, oPlayer.y,"Entities", dialogue_coin);
	}
}
	
