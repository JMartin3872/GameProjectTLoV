/// @description ?
//State ends on animation end, see oPlayer object!
function PlayerStateAttack()
{	
	if(!global.hitstun)
	{
		image_speed = 1;
	}
	
	#region // Code for keeping movement while initiating attack. Copied from PlayerStateFree and needs to be revised if player movement will change.
	//Calculate movement
	var move = key_right - key_left;
	hSpeed = move * walkSpeed * 0.75;

	vSpeed += grav;
	
	PlayerCollision();


	//Jumping
	
	if (canJump < 0 && key_jump && (place_meeting(x, y+1, oWall)|| onThinPlatform))
	{
		vSpeed = -7;
		canJump = 7;
		audio_play_sound(snJump, 5, false);
	}
	

	else
	{
		//Jumpbuffer
		canJump -= 1;	
	}
	
	
	/*flipping sprite depending on running direction. Removed to lock attack-direction even with change of movement.
	if (hSpeed != 0) 
	{ 
		image_xscale = sign(hSpeed); 
	}
	*/
	
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
		lastState = PlayerStateAttack;
		state = PlayerStateClimb;
	}
	
	#endregion
	
	if(image_index >=4 && image_index <5)
	{
		with(instance_create_layer(x, y, "Dagger", oDagger))
		{
		}
	}
	
	//Soundeffect for player attacking only happening once
	if(sprite_index != sPlayerAttackForward)
	{
		audio_play_sound(snPlayerAttackForward, 1, false);	
	}
	
	//Setting sprite
	sprite_index = sPlayerAttackForward;
				
}