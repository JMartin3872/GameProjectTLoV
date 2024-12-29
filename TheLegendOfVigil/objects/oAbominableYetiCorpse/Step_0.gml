/// @description Insert description here
// You can write your code in this editor
if(done == 0)
{
	vSpeed += grav;

	//Horisontal collision
	if (place_meeting(x+hSpeed, y, oWall) || (place_meeting(x+hSpeed, y, oThinPlatform) && !place_meeting(x+hSpeed, y, oThinPlatform)))
	{
		while(!place_meeting(x+sign(hSpeed), y, oWall) && !place_meeting(x+sign(hSpeed), y, oThinPlatform))
		{
			x = x + sign(hSpeed);
		}
	
		hSpeed = 0;
	}
	x += hSpeed;

	//Vertical Collision
	if (place_meeting(x, y+vSpeed, oWall) || (place_meeting(x, y+vSpeed, oThinPlatform) && !place_meeting(x, y+vSpeed, oThinPlatform)))
	{
		if(vSpeed > 0)
		{
			done = 1;
			image_index = 1;
		}
		
		while(!place_meeting(x, y+sign(vSpeed), oWall)&& !place_meeting(x,  y+sign(vSpeed), oThinPlatform))
		{
			y += sign(vSpeed);
		}
	
		vSpeed = 0;
		audio_play_sound(snAYcrash,10,false);
	}
	y += vSpeed;
}