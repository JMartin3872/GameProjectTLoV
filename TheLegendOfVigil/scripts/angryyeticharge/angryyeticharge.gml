/// @description ?
function AngryYetiCharge(){
	
	if(instance_exists(oPlayer))
	{
	
		if(sprite_index != sAngryYetiCharge)
		{
			walkSpeed = sign(lengthdir_x(1, point_direction(x, y, oPlayer.x, oPlayer.y)));
			sprite_index = sAngryYetiCharge;
		}
	
		EnemyCollision();
		
		//DustParticles while dashing.
		with(instance_create_layer(x + random_range(-15,15), bbox_bottom, "Bullets", oDust))
		{
				
		}
	
		vSpeed += grav;
		hSpeed = walkSpeed;
	
		//Change direction if walking in to a wall
		if(place_meeting(x + sign(hSpeed), y, oWall))
		{
			 walkSpeed = -walkSpeed;
		}
	
		//flipping sprite depending on running direction. Also setting size.
		if (hSpeed != 0) 
		{ 
			image_xscale = sign(hSpeed); 
		}
	
		//Accelerating until reaching walkspeed 5
		if(abs(walkSpeed) < 5)
		{
			walkSpeed *= 1.05;
		}
	
	
		//If follow cooldown is reset and the Yeti is a certain distance away from the player
		if(chargeFollowCooldown <= 0 && abs(lengthdir_x(point_distance(x, y, oPlayer.x, oPlayer.y), point_direction(x, y, oPlayer.x, oPlayer.y))) > 200)
		{
			//If the Yeti is facing away from the player it changes direction and speed resets
			if(sign(lengthdir_x(point_distance(x, y, oPlayer.x, oPlayer.y), point_direction(x, y, oPlayer.x, oPlayer.y))) != sign(image_xscale))
			{
				walkSpeed = sign(lengthdir_x(1, point_direction(x, y, oPlayer.x, oPlayer.y)));
				chargeFollowCooldown = 50;
			}
		}
	
		if(chargeFollowCooldown > 0)
		{
			chargeFollowCooldown--;
		}
	
	}
	
}