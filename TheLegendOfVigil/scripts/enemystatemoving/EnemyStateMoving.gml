/// @description ?
function EnemyStateMoving()
{
	
	EnemyCollision();
	
	
	if(startedMoving){
	
		vSpeed += grav;
		hSpeed = walkSpeed;

	
		//Don't walk off edges and change direction instead
		if(grounded) && (afraidofheights) && (!place_meeting(x + sign(hSpeed) * 16 , y + 1, oWall) && !place_meeting(x + sign(hSpeed) * 16 , y + 4, oThinPlatform))
		{
			 walkSpeed = -walkSpeed;
		}
	
		//Change direction if walking in to a wall
		if(place_meeting(x + sign(hSpeed), y, oWall))
		{
			 walkSpeed = -walkSpeed;
		}
	

		//Animation jumping and running
		if(!place_meeting(x, y + 1, oWall) && !place_meeting(x, y + 4, oThinPlatform))
		{
			grounded = false;
			sprite_index = sEnemyJumpFall;
			image_speed = 0;
			if (sign(vSpeed) > 0 )
			{
				image_index = 1;
			}
	
			else
			{ 
				image_index = 0;
			}
	
		}

		else
		{
			grounded = true;
			image_speed = 1;
			if (hSpeed == 0)
			{
				sprite_index = sEnemy;
			}
	
			else
			{
				sprite_index = sEnemyRun;
			}
		}

		//flipping sprite depending on running direction. Also setting size.
		if (hSpeed != 0) 
		{ 
			image_xscale = sign(hSpeed) * size; 
		}

		else {image_xscale = size;}
		
		image_yscale = size;
	}
	
	else{
		hSpeed = 0;
		sprite_index = sEnemy;
	}
	
	
}