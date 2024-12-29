/// @description ?
function PlayerStateDash_Backup()
{
	with(oPlayer)
	{
		
		//Changing sprite and setting several parameters only once when we enter this state.
		//Notably deciding the dash end destination and removing player control and gravity. 
		//Also making player invulnerable.
		if(sprite_index != sPlayerTransform && sprite_index != sPlayerDash)
		{
			image_speed = 1;
			sprite_index = sPlayerTransform;
			destination = x + sign(image_xscale) * dashLength;
			travelDistance = max(x, destination) - min(x, destination);
			distanceCounter = 0;
			hascontrol = false;
			dashDone = false;
			vSpeed = 0;
			
			
			audio_play_sound(snDash, 5, false);
		}
		
		dashCounter = 0;
		
		//While loop for "dividing" the dash into sections so the player doesn't travel the full length instantaneously.
		//dashCounter counts the length of each "dash-frame".
		//distanceCounter counts if we have travelled the distance needed to reach the destination and thus ending state.
		//distanceCounter allows dash animation and duration to play out fully even if we hot a wall which will make the playersexperience better.
		while(dashCounter < dashSpeed )//&& sprite_index != sPlayerTransform)
		{
			
			//Breaking loop if we hit a wall or reach our destination.
			if(!place_meeting(x + 2, y, oWall) || !x == destination)
			{
				x += 1 * sign(image_xscale);
			}
			
			if(distanceCounter == travelDistance)
			{
				dashDone = true;
				break;
			}
			
			distanceCounter++;
			dashCounter++;
		}
		
		//Dagger particles
		if(sprite_index == sPlayerDash)
		{
			repeat(10)
			{
				with (instance_create_layer(oPlayer.x + 10 *-sign(oPlayer.image_xscale), oPlayer.y + random_range(-10, 10), "Bullets", oDashParticles))
				{
		
				}
			}
		}
		
		//if the dash is done we return control and make player vulnerable, also setting dash cooldown and returning to free state.
		if(dashDone = true)
		{
			canDash = 50;
			lastState = PlayerStateDash;
			state = PlayerStateFree;
			hascontrol = true;
		}
	}
}