/// @description Insert description here
// You can write your code in this editor

vSpeed += grav;

vSpeed = min(vSpeed, 10);


if (place_meeting(x, y + vSpeed, oWall))
{
	while(!place_meeting(x, y+sign(vSpeed), oWall))
	{
		y += sign(vSpeed);
	}
		
	vSpeed = 0;
}

y += vSpeed;
