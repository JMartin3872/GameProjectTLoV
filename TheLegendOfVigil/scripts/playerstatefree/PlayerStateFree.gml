/// @description ?
function PlayerStateFree()
{
	if(mask_index != sPlayer){
		mask_index = sPlayer;	
	}
	
	//Calculate movement
	if(oPlayer.hascontrol){
		var move = key_right - key_left;
		hSpeed = move * walkSpeed;
	}

	vSpeed += grav;
	
	PlayerCollision();


	//Jumping
	canJump -= 1;
	if ((canJump > 0) && (key_jump))
	{
		vSpeed = jumpHeight;
		canJump = 0;
		audio_play_sound(snJump, 5, false);
	}
	
	//Code for variable jumping height.
	if (vSpeed < 0 && !key_jump_held)
	{
		vSpeed = max (vSpeed, jumpHeight/2);
	}
	
	
	

	//Animation jumping and running
	if(!place_meeting(x, y+1, oWall) && !onThinPlatform)
	{
		
		//Keeping player one pixel away from collision with wall in a jump to avoid clipping.
		if(place_meeting(x+sign(oPlayer.image_xscale), y, oWall))
		{
			while(place_meeting(x+sign(oPlayer.image_xscale), y, oWall))
			{
				x -= sign(oPlayer.image_xscale);
			}
		
		}
		
		//Jumpsprite if no horisontal movement
		if (hSpeed == 0)
		{
			sprite_index = sPlayerJumpFall;
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
		
		//jumpsprite with horisontal movement
		else
		{
			sprite_index = sPlayerJumpFallMoving;
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
	
	}

	else
	{
		//Jumpbuffer
		canJump = 5;
		
		//Soundeffect for landing and repeat function for dust
		if(sprite_index == sPlayerJumpFall || sprite_index == sPlayerJumpFallMoving)
		{
			playerLanded = true;
			audio_sound_pitch(snLanding, 1.5)
			audio_play_sound(snLanding, 4, false);
			repeat(5)
			{
				with (instance_create_layer(x, bbox_bottom, "Bullets", oDust))
				{
					vSpeed = 0;
				}
			}
		
		}
	
		image_speed = 1;
		
		if (hSpeed == 0)
		{
			sprite_index = sPlayer;
		}
		
		
		else
		{
			sprite_index = sPlayerRun;
			
			//Code for footstep soundeffect on certain image index. Not elegant but functional.
			if( image_index >= 1 && image_index <= 2 && !audio_is_playing(snPlayerStep1) && !audio_is_playing(snPlayerStep2))
			{
				audio_play_sound(choose(snPlayerStep1, snPlayerStep2), 1, false);		
			}
			
			if( image_index >= 13 && image_index <= 14 && !audio_is_playing(snPlayerStep1) && !audio_is_playing(snPlayerStep2))
			{
				audio_play_sound(choose(snPlayerStep1, snPlayerStep2), 1, false);		
			}
		}
	}
	
	
	//flipping sprite depending on running direction.
	if (hSpeed != 0) 
	{ 
		image_xscale = sign(hSpeed); 
	}
	
	
	//Cooldown for climbing
	if(canClimb >= 0)
	{
		canClimb--
	}
	
	//Cooldown for crouching
	
	if(canCrouch >= 0){
		canCrouch--;	
	}

	//Checking if conditions for climbing is in place.
	//OBS Also exists in Attack state, and changes here needs to happen there too.
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
		lastState = state;
		state = PlayerStateClimb;
	}
	
	//Entering Attack state
	
	if(key_attack && global.hasPowerAttack)
	{
		image_index = 0;
		lastState = state;
		state = PlayerStateAttack;
	}	
	
	if(key_attack_ranged && global.hasPowerAttackRanged)
	{
		if(global.playerEnergy >= ranged_attack_cost){
			
			global.playerEnergy -= ranged_attack_cost;
			image_index = 0;
			lastState = state;
			state = PlayerStateAttackRanged;
		}
		
		else{
			if(!audio_is_playing(snHealFail)){
				audio_play_sound(snHealFail,15, false);	
			}
			
		}
	}
	
	if(key_attack_horn && global.hasPowerAttackHorn){
		if(global.playerEnergy >= horn_attack_cost){
			image_index = 0;
			state = PlayerStateAttackHorn;
			global.playerEnergy -= horn_attack_cost;
			lastState = state;
		}
		
		else{
			if(!audio_is_playing(snHealFail)){
				audio_play_sound(snHealFail,15,false);	
			}
		}
	}
	
	
	if(canBounceAttack >= 0)
	{
		canBounceAttack--
	}
	
	//Entering bounce attack state
	if(key_attack_bounce && !place_meeting(x, y+1, oWall) && !onThinPlatform && canBounceAttack < 0 && global.hasPowerBounce)
	{
		canBounceAttack = bounceAttackCooldown;
		mask_index = sPlayerAttackDown;
		lastState = state;
		state = PlayerStateAttackDown;	
	}

	//Entering dash state if not on cooldown, else reduce cooldown.
	//OBS Also exists in Bounce attack state and needs to be changed there if changed here.
	if(key_dash && canDash < 0 && global.hasPowerDash)
	{
		lastState = state;
		state = PlayerStateDash;
	}
	
	else if (canDash >= 0)
	{
		canDash--;
		
		if(canDash <= 0){
			flash = 10;
			audio_play_sound(snDashRecharged, 30, false);
		}
	}
	
	
	//Om vi kan hela och är nära/står på marken så går vi in i heal-state.
	if(key_heal && (place_meeting(x, y+1, oWall) || place_meeting(x, y+abs(vSpeed * 10), oWall) || place_meeting(x, y + 4, oThinPlatform)))
	{
		state = PlayerStateHeal;
	}
	
	//Om vi står på marken och håller styrspaken nedåt
	if(key_down && canCrouch < 0 && (place_meeting(x, y+1, oWall) || onThinPlatform)){
		state = PlayerStateCrouch;	
	}
}



