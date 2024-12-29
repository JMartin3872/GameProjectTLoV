/// @description Position

//Staying in front of player and destroying if wrong state
if(instance_exists(oPlayer))
{
	x = oPlayer.x + (sign(oPlayer.image_xscale) * 33);
	y = oPlayer.y;
}

else
{
	instance_destroy();
}

with (oPlayer)
{
	if(state == PlayerStateClimb)
	{
		instance_destroy(other);
	}
}