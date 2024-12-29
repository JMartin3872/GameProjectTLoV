/// @description ?
function PlayerCollision()
{
	//Putting a cap on how quickly we can fall:
	vSpeed = min(vSpeed, 10);
	
	//Horisontal collision
	if (place_meeting(x+hSpeed, y, oWall)) //If our next step will hit a wall
	{
		if(place_meeting(x, y, oWall)) //If we are already in a wall
		{
			
			while(place_meeting(x, y, oWall)) //Push us out backwards from wall and set jumpcooldown, this is to prevent clipping with dash and jumps
			{
				x -= sign(image_xscale)
				if(state == PlayerStateWallJump)
				{
					y += 1; // Changing Y here is to not clipp through above character while walljumping.
				}
				
				canJump = 0;
			}
			
		}
		
		
		else
		{
			while(!place_meeting(x + sign(hSpeed), y, oWall)) //Else let us get as close to the wall as possible without touching.
			{
				x += sign(hSpeed);
			}
		}
		
		//If we land with our back against wall after for example jump-attacking we can still change the direction we face
		//Jumpcooldown of 1 frame here is to prevent clip-jumping.
		
		if(state == PlayerStateFree)
		{
			image_xscale = sign(hSpeed);
		}
		
		hSpeed = 0;
		
	
	}
	
	

	//Vertical Collision
	if (place_meeting(x, y + vSpeed, oWall))
	{
		while(!place_meeting(x, y+sign(vSpeed), oWall))
		{
			y += sign(vSpeed);
		}
		
		vSpeed = 0;
	}
	
	//Code for jump-through platforms
	if(vSpeed >= 0){
		
		var platform = noone;
		//Priority on choosing moving platform as chosen platform
		if(instance_place(x, y + max(vSpeed, 1), oMovingPlatform) != noone){
			platform = instance_place(x, y + max(vSpeed, 1), oMovingPlatform);
		}
		
		//Else check if there is a thin platform as chosen platform
		else if(instance_place(x, y + max(vSpeed, 1), oThinPlatform) != noone){
			platform = instance_place(x, y + max(vSpeed, 1), oThinPlatform);
		}
		
		//if platform is null.
		if (platform != noone){
			if(y + 20 <= platform.bbox_top){
				vSpeed = 0;	
				onThinPlatform = true;
				
				while(!place_meeting(x,y + 1, oThinPlatform)){
					y += 1;	
				}
				
			}
			
			if(onThinPlatform){
				externalHSpeed = platform.hSpeed;
				externalVSpeed = platform.vSpeed;
			}
			
		}
		
		else{
				onThinPlatform = false;
				externalHSpeed = 0;
				externalVSpeed = 0;
			}
		
		
	}
	
	else{
		onThinPlatform = false;
	}
	
	
	if(state == PlayerStateCrouch && place_meeting(x, y + 1, oMovingPlatform)){
		x += externalHSpeed;
		y += externalVSpeed;
	}
	
	else{
		if(!place_meeting(x + hSpeed + externalHSpeed, y, oWall)){
			x += hSpeed + externalHSpeed;
			y += vSpeed + externalVSpeed;
		}
		
	}
	
}