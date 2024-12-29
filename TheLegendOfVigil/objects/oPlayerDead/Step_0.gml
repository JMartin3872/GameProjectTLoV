if(done == 0)
{
	vSpeed += grav;

	//Horisontal collision
	if (place_meeting(x+hSpeed, y, oWall))
	{
		while(!place_meeting(x+sign(hSpeed), y, oWall))
		{
			x = x + sign(hSpeed);
		}
	
		hSpeed = 0;
	}
	x += hSpeed;

	//Vertical Collision
	if (place_meeting(x, y+vSpeed, oWall))
	{
		if(vSpeed > 0)
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		
		while(!place_meeting(x, y+sign(vSpeed), oWall))
		{
			y += sign(vSpeed);
		}
	
		vSpeed = 0;
	}
	y += vSpeed;
	
	if(counter <= 0 && done != 1)
	{
		done = 1;
		image_index = 1;
		alarm[0] = 60;
	}
	
	counter--;
}
