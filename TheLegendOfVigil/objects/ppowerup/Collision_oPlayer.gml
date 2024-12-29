/// @description ?

//Enter what the powerup will do below

if(!audio_is_playing(snPowerup) && !triggered)
{
	triggered = true;
	audio_play_sound(snPowerup, 100, false);
	raiseCounter = 150;
	
	instance_create_layer(oPlayer.x,oPlayer.y,"Player", my_powerup_dialogue)
}
