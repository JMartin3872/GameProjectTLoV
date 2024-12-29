/// @description Move to target room and set invulnerable
with(oPlayer)
{
	if(hascontrol && key_up && !global.gamePaused)
	{
		audio_play_sound(snDoor,15,false);
		hascontrol = false;
		hSpeed = 0;
		invulnerable = 60;
		global.spawn = other.set_spawn;
		SlideTransition(TRANS_MODE.GOTO, other.my_target);
	}
	
	
}