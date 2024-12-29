/// @description ?
function PlayerStateDash()
{	
	with(oPlayer)
	{
		
		//Changing sprite and setting several parameters only once when we enter this state.
		//Notably deciding the dash end destination and removing player control and gravity. 
		//Also making player invulnerable.
		if(sprite_index != sPlayerTransform && sprite_index != sPlayerDash) //The directional dash only works with controller for now.
		{
			global.playerDirection = direction;
			var controllerh = gamepad_axis_value(0, gp_axislh);
			var controllerv = gamepad_axis_value(0, gp_axislv);
			var k_left = keyboard_check(ord("A"));
			var k_right = keyboard_check(ord("D"));
			var k_up = keyboard_check(ord("W"));
			var k_down = keyboard_check(ord("S"));
			if(abs(controllerh) > 0.2 || (abs(controllerv) > 0.2))
			{
				controllerAngle = point_direction(0, 0, controllerh, controllerv); //Creating an angle based on our controller input.
				controllerAngle = round(controllerAngle / 45) * 45; //Rounding our image_angle to the closest 45 degree angle.
			}
			
			else if(k_left || k_right || k_up || k_down){
				if(k_left){
					if(k_up){
						controllerAngle = 135;
					}
					
					else if(k_down){
						controllerAngle = 225;
					}
					
					else{
						controllerAngle = 180;	
					}
				}
				
				else if(k_right){
					if(k_up){
						controllerAngle = 45;
					}
					
					else if(k_down){
						controllerAngle = 315;
					}
					
					else{
						controllerAngle = 0;	
					}
				}
				
				else if(k_up){
					controllerAngle = 90;
				}
				
				else if(k_down){
					controllerAngle = 270;						
				}
				
			}
			
			//Else if we don't touch the left stick or any keyboardkey we default the dash to the direction we are facing.
			else 
			{
				if(image_xscale >= 0)
				{
					controllerAngle = 0;
				}
				
				else
				{
					controllerAngle = 180;
				}
			}
			
			mask_index = sPlayerDash;
			//image_angle = controllerAngle;
			direction = controllerAngle
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
		while(dashCounter < dashSpeed )
		{
			
			//If not meet thinPlatform from above
			if(controllerAngle < 225 && controllerAngle >= 0 || !place_meeting(x, y + lengthdir_y(1,direction), oThinPlatform)){
				//Breaking loop if we hit a wall or reach our destination.
				//OBS Allow "gliding along a surface when hitting a wall.
				if((!place_meeting(x + lengthdir_x(1, direction), y + lengthdir_y(1, direction), oWall) || place_meeting(x + sign(image_xscale), y + lengthdir_y(1, direction), oDashWall)) || !x == destination)
				{
					x += lengthdir_x(1, direction);
					y += lengthdir_y(1, direction);
					
					
					mask_index = sPlayer;
					if(!place_meeting(x + sign(lengthdir_x(1, direction)), y + sign(lengthdir_y(1, direction)), oWall)){
						last_dash_x = x;
						last_dash_y = y;
					}
					
					mask_index = sPlayerDash;					
				}
			
				else if((!place_meeting(x, y + sign(lengthdir_y(1, direction)), oWall)) || !x == destination)
				{
					y += 1 * sign(lengthdir_y(1, direction));
				}
			
				else if(!place_meeting(x + sign(lengthdir_y(1, direction)),y , oWall) || !x == destination)
				{
					x += 1 * sign(lengthdir_x(1, direction));
				}
			}
			
			//Else if we meet platform and can glide along it
			else if(!place_meeting(x + sign(lengthdir_y(1, direction)),y , oWall) || !x == destination)
				{
					x += 1 * sign(lengthdir_x(1, direction));
				}
			
			//Else if we are done
			if(distanceCounter == travelDistance)
			{
				dashDone = true;
				break;
			}
			
			distanceCounter++;
			dashCounter++;
		}
		
		//Dagger particles which always spawn behind character regardless of dash-direction.
		if(sprite_index == sPlayerDash)
		{
			repeat(10)
			{
				with (instance_create_layer(oPlayer.x - lengthdir_x(10, oPlayer.direction + random_range(-45, 45)), oPlayer.y - lengthdir_y(10, oPlayer.direction + random_range(-45, 45)), "Bullets", oDashParticles))
				{
		
				}
			}
		}
		
		//if the dash is done we return control and make player vulnerable, also setting dash cooldown and returning to free state.
		//Code also runs if we touch end of room object
		if(dashDone == true || place_meeting(x, y, oLevelEnd))
		{
			mask_index = sPlayer
			//OBS OBS Nedansttående collision-kod används för att undvika att spelarens collision ställer till problem när vi går ur state.
			
			if(place_meeting(x,y,oDashWall)){
				x = last_dash_x;
				y = last_dash_y;
			}
			
			else if(place_meeting(x, y + 1, oThinPlatform)){
				y -= 17;
			}
			
			else{
				if(place_meeting(x, y, oWall)){
					x = x - 5 * sign(lengthdir_x(1, direction));
				
				}
			
				if(place_meeting(x, y, oWall)){
					y = y - 20 * sign(lengthdir_y(1, direction));
				}
			}
			
			if(place_meeting(x,y,oWall)){
				x = last_dash_x;
				y = last_dash_y;
			}
	
			touched_wall = false;
			canDash = 50;
			lastState = PlayerStateDash;
			state = PlayerStateFree;
			hascontrol = true;
		}
	}
}