/// @description position
if(instance_exists(oPlayer))
{
	x = oPlayer.x;
	y = oPlayer.bbox_bottom + 20;
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