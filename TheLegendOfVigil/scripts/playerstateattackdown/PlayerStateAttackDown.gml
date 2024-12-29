/// @description ?
function PlayerStateAttackDown()
{
if(!global.hitstun)
	{
		image_speed = 1;
	}

	//Setting sprite
	sprite_index = sPlayerAttackDown;
	
	#region // Code for keeping movement while initiating attack. Copied from PlayerStateFree and needs to be revised if player movement will change.
	//Calculate movement
	var move = key_right - key_left;
	hSpeed = move * walkSpeed;

	vSpeed += grav;
	
	if (hSpeed != 0) 
	{ 
		image_xscale = sign(hSpeed); 
	}
	
	
	PlayerCollision();

	#endregion



	#region //Code for entering climbing state. Copied from PlayerStateFree and needs to be revised if player movement will change.
	
	//Cooldown of climbing
	if(canClimb >= 0)
	{
		canClimb--
	}

	//Checking if conditions for climbing is in place.
	if (key_climb && global.hasPowerClimb && canClimb < 0 && place_meeting(x + sign(image_xscale) * reach_climb, y, oWall))
	{
		//Code for pulling player towards the wall before entering climbing state.
		while(!place_meeting(x+sign(image_xscale), y, oWall))
		{
			x += sign(image_xscale);
		}
		
		if(!place_meeting(x+sign(image_xscale), y-20, oWall))
		{
			y += 30;
		}
		isClimbing = true;
	}
	
	//Change state
	if (isClimbing)
	{	
		mask_index = sPlayer;
		
		if(instance_exists(oDaggerBounce)){
			with(oDaggerBounce){
				instance_destroy();
			}
		}
		
		lastState = PlayerStateAttackDown;
		state = PlayerStateClimb;
	}
	
	#endregion
	

	//Allowing dash during this state.
	if(key_dash && global.hasPowerDash && canDash < 0)
	{
		mask_index = sPlayer;
		
		if(instance_exists(oDaggerBounce)){
			with(oDaggerBounce){
				instance_destroy();
			}
		}
		
		lastState = PlayerStateAttackDown;
		state = PlayerStateDash;
	}
	
	else
	{
		canDash--;	
	}
	
	
	if(image_index >= 4 && image_index < 5)
	{
		with(instance_create_layer(x, y, "Dagger", oDaggerBounce))
		{
		}
	}
	
	//Soundeffect for player attacking only happening once
	if(sprite_index == sPlayerAttackDown && image_index >= 4 && image_index <= 5 && !audio_is_playing(snPlayerAttackDown))
	{
		audio_play_sound(snPlayerAttackDown, 1, false);	
	}
	
	
	
	
	//Interupt state/animation when touching ground.
	if((place_meeting(x, y + 32, oWall)|| place_meeting(x, y + 32, oThinPlatform)) && !place_meeting(x, y + 32, oDestructibleBlock))
	{
		mask_index = sPlayer;
		
		if(instance_exists(oDaggerBounce)){
			with(oDaggerBounce){
				instance_destroy();
			}
		}
		
		lastState = PlayerStateAttackDown;
		state = PlayerStateFree;
	}
	
	//Keeping player one pixel away from collision with wall in a jump to avoid clipping.
	if(place_meeting(x+sign(oPlayer.image_xscale), y, oWall))
	{
		while(place_meeting(x+sign(oPlayer.image_xscale), y, oWall))
		{
			x -= sign(oPlayer.image_xscale);
		}
		
	}
		
}