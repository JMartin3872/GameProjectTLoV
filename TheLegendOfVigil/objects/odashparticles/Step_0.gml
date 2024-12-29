/// @description

//Movementspeed every step. 
//Also code to remove particles if oPlayer ceases to exist, if dying for example
if(instance_exists(oPlayer))
{
	if(!place_meeting(x+sign(hSpeed), y, oWall) && !global.gamePaused)
	{
		x += lengthdir_x(1, direction ) * hSpeed;
		y += lengthdir_y(1, direction ) * vSpeed;
	}
}

else 
{
	instance_destroy();
}

hSpeed *= 0.9;
vSpeed *= 0.9;
