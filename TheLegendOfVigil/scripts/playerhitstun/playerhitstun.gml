/// @description PlayerHitstun(length)
/// @arg Seconds sets the length of hitstun in seconds.
function PlayerHitstun(argument0)
{
	
	//global variable to tell rest of game hitstun is active
	global.hitstun = true;
	
	//Locking image speed, pausing soundeffect and taking away control during hitstun.
	oPlayer.image_speed = 0;
	audio_pause_sound(snPlayerAttackForward);
	oPlayer.hascontrol = false;
	
	//Storing active speed values
	storePlayerHspeed = oPlayer.hSpeed;
	storePlayerVspeed = oPlayer.vSpeed;
	
	//Locking movement
	oPlayer.hSpeed = 0;
	oPlayer.vSpeed = 0;
	oPlayer.grav = 0;
	
	//Timer for how long hitstun should last.
	hitstunTimer = time_source_create(time_source_game, argument0, time_source_units_seconds, function()
	{
		if(instance_exists(oPlayer))
		{
			//resuming image speed, soundeffect and control. Turning off hitstun variable.
			oPlayer.image_speed = 1;
			audio_resume_sound(snPlayerAttackForward);
			oPlayer.hascontrol = true;
			global.hitstun = false;
		
			//Resuming movement. OBS: check that grav here is same as in oPlayer create step.
			oPlayer.grav = 0.3;
			oPlayer.hSpeed = storePlayerHspeed;
			oPlayer.vSpeed = storePlayerVspeed * grav;
		}
		
	}
	);
	
	time_source_start(hitstunTimer);
	
	


}