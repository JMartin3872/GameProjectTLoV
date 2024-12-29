/// @description ?
function PlayerStateClimbUp()
{
	if(climbUpCounter > 0)
	{
		x += 4 * sign(image_xscale);
		y -= 5;
		climbUpCounter--
	}
	
	else
	{
		lastState = PlayerStateClimbUp;
		state = PlayerStateFree;
		climbUpCounter = 4;
	}
}