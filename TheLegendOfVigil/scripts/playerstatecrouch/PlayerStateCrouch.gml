/// @description ?
function PlayerStateCrouch(){
	
	//Set sprite and mask
	if(!(sprite_index == sPlayerCrouching)){
		sprite_index = sPlayerCrouching;	
		mask_index = sPlayerCrouching;		
	}
	
	//Normal vSpeed, hSpeed being reduced step by step to allow for some "glide"
	vSpeed += grav;
	hSpeed *= glideResistance;
		
	PlayerCollision();
	
	//Changing direction
	if(key_left){
		image_xscale = -1;
	}
		
	if(key_right){
		image_xscale = 1;
	}
	
	//If we release crouch key or aren't standing on wall or thin platform return to free state
	if((!key_down && !place_meeting(x, y - 1, oWall)) || (!place_meeting(x, y + 1, oWall) && !onThinPlatform)){
		mask_index = sPlayer;
		
		state = PlayerStateFree;	
	}
	
	//We we are squeezed under another wall we can't stand up and only jump forward.
	if(place_meeting(x, y - 1, oWall) && key_jump && !onThinPlatform){
		
		x += 5 * sign(image_xscale);
		audio_play_sound(snJump, 10, false);
		
	}
	
	//If crouching and jumping while standing on a thin platform, jump down.
	else if(key_jump){
		if(onThinPlatform){
			y += 15;	
			canCrouch = 15;
			state = PlayerStateFree;
			onThinPlatform = false;
			externalHSpeed = 0;
			externalVSpeed = 0;
		}
		
		//Else if we can jump, jump.
		else if(canJump > 0){
			mask_index = sPlayer;
		
			state = PlayerStateFree;
			
			vSpeed = jumpHeight;
			canJump = 0;
			audio_play_sound(snJump, 5, false);
		}
		
	}
}