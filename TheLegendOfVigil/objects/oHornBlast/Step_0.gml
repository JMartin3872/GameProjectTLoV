/// @description Position

//Staying in front of player and destroying if wrong state
if(instance_exists(oPlayer))
{
	x = oPlayer.x;
	y = oPlayer.y;
}

else
{
	instance_destroy();
}
