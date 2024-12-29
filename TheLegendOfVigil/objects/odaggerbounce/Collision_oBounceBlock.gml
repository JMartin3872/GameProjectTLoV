/// @description ?

with(oPlayer)
	{
		
		instance_destroy(oDaggerBounce);
		vSpeed = jumpHeight;
		canJump = 0;
		canDash = 5;
		if(!audio_is_playing(snJump))
		{
			audio_play_sound(snJump, 5, false);
		}
	}