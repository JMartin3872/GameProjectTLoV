/// @description ?
function PlayerStateClimb()
{
	
	//Changing hSpeed to 0 so you can only move up and down. Then checking for vertical speed.
	hSpeed = 0;
	var vMove = key_down - key_up; 
	vSpeed = vMove * climbSpeed;
	
	if (vMove < 0) {vSpeed = vSpeed * 0.7}
	
	PlayerCollision();
	
	if (canDash >= 0)
	{
		canDash--;
		
		if(canDash <= 0){
			flash = 10;
			audio_play_sound(snDashRecharged, 30, false);
		}
	}
	
	
	if (!place_meeting(x, y + vSpeed, oWall))
	{
		y += vSpeed;
	}
	
	
	//Code for idle climbing animation and countdown for playing out the animation.
	if (vSpeed == 0)
	{
		if (place_meeting(x + sign(image_xscale)*reach_climb, y + 40, oWall))
		{
			sprite_index = sPlayerClimbIdle;
		
			if(climbIdleCounter > 0)
			{
				image_index = 0;
				image_speed = 0;
			}
		
			else if (climbIdleCounter < 0 &&  image_index <= 7)
			{
				image_speed = 1;
			}
		
			else if(image_index == 8)
			{
				image_speed = 0;	
			}
		
			climbIdleCounter--;
		}
		
		//Code for idle hanging animation. Stops after one loop in animation end event.
		else
		{
			sprite_index = sPlayerClimbHanging;
			if(image_index <= 29)
			{
				image_speed = 1;
			}
			
			else {image_speed = 0;}
			
		}
	}
	
	//Code for climbing up or down and respective animations.
	if(vSpeed != 0)
	{
		climbIdleCounter = 150;
		
		if(vSpeed > 0)
		{
			sprite_index = sPlayerClimbDown;
			
			if(!place_meeting(x, y+vSpeed, oWall))
			{
				with (instance_create_layer(x + (sign(image_xscale) * 10), y - 15, "Bullets", oDust))
				{
					vSpeed = 0;
				}
				
				if(!audio_is_playing(snPlayerClimbDown))
				{
					audio_play_sound(snPlayerClimbDown, 1, false);
				}
				
			}
		}
		
		else if(vSpeed < 0)
		{
			image_speed = 1;
			sprite_index = sPlayerClimbUpwards;	
			climbIdleCounter = 150;
			
			if((image_index >= 4 && image_index < 5) || (image_index >= 11 && image_index < 12))
			{
				with (instance_create_layer(x + (sign(image_xscale) * 10), y - 20, "Bullets", oDust))
				{
					vSpeed = 0;
				}
				
				if(!audio_is_playing(snPlayerClimb))
				{
					audio_play_sound(snPlayerClimb, 1, false);
				}
			}
		}
		
		else {image_speed = 0;}
	}
	
	
		
	
	
	
	//Checking if conditions for climbing is still in place or not, otherwise returning to free state and setting climbing cooldown.
	if(key_climb_release || !place_meeting(x + sign(image_xscale)*reach_climb, bbox_bottom - 25, oWall) || !place_meeting(x + sign(image_xscale)*reach_climb, bbox_top, oWall))
	{
		climbIdleCounter = 150;
		isClimbing = false;
		lastState = PlayerStateClimb;
		state = PlayerStateFree;
		canClimb = 5;
		
		//Code for falling of end of a wall without stuttering.
		if(!place_meeting(x + sign(image_xscale)*reach_climb, bbox_bottom, oWall))
		{
			oPlayer.y += 10;
		}
		
		
		// Code for climbing up a ledge and not stuttering
		if(!place_meeting(x + sign(image_xscale)*reach_climb, bbox_top, oWall) && vSpeed < 0)
		{
			state = PlayerStateClimbUp;
		}
		
	}
	
	//Jumping from climbing
	if(key_jump)
	{
		climbIdleCounter = 150;
		state = PlayerStateWallJump;
	}
}