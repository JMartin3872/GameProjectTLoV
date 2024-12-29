/// @description ?
function EnemyCollision()
{
	//Horisontal collision regular wall
	if (place_meeting(x+hSpeed, y, oWall))
	{
		while(!place_meeting(x+sign(hSpeed), y, oWall))
		{
			x += sign(hSpeed);
		}
	
		hSpeed = 0;
	
	}
	
	//Horisontal collision thin platform (also moving)
	if (place_meeting(x+hSpeed, y, oThinPlatform) && externalVSpeed == 0)
	{
		while(!place_meeting(x+sign(hSpeed), y, oThinPlatform))
		{
			x += sign(hSpeed);
		}
	
		hSpeed = 0;
	
	}
	
	

	//Vertical Collision
	if (place_meeting(x, y+vSpeed, oWall) || place_meeting(x, y+vSpeed, oThinPlatform))
	{
		while(!place_meeting(x, y+sign(vSpeed), oWall) && !place_meeting(x, y+sign(vSpeed), oThinPlatform))
		{
			y += sign(vSpeed);
		}
			
	
		vSpeed = 0;
	}
	
	if(place_meeting(x + hSpeed, y, oMovingPlatform)){
		externalHSpeed = oMovingPlatform.hSpeed;
	}
	
	else{
		externalHSpeed = 0;
	}
	
	if(place_meeting(x, y + max(vSpeed,5), oMovingPlatform)){
		externalVSpeed = oMovingPlatform.vSpeed;
	}
	
	else{
		externalVSpeed = 0;
	}
	
	
	x += hSpeed + externalHSpeed;
	y += vSpeed + externalVSpeed;
}