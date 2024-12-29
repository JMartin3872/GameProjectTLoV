/// Script for jumping while climbing on a wall.
function PlayerStateWallJump()
{
	PlayerCollision();
	
	//"Releasing player from climbing with a walljump.
	if(isClimbing)
	{

		isClimbing = false;
		canClimb = 5;
		
		vSpeed = wallJumpHeight;
		
		audio_play_sound(snJump, 5, false);
	}
	
	//Countdown until player can enter freestate and control character again.
	if (wallJumpCountdown < 0)
	{
		wallJumpCountdown = 6;			
		state = PlayerStateFree;
	}

	
	//Code for the jump itself
	x += -sign(image_xscale) * 3;
	y += vSpeed + grav;
		
	wallJumpCountdown--;		
}