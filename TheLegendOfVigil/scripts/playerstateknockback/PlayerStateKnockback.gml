/// @description ?
function PlayerStateKnockback(){
	
	
	if(sprite_index != sPlayerHurt)
	{
		startPositionKnockback = oPlayer.y;
		sprite_index = sPlayerHurt;
		
		//Movement, hSpeed is set to a factor 0.5 of lengthdirx and vSpeed to a factor 0.3 of lengthdiry
		//If you want to change the "speed" of the knockbacks then change the factors.
		hSpeed = lengthdir_x(sourceLength, sourceDirection) * 0.5;
		vSpeed = lengthdir_y(sourceLength, sourceDirection) * 0.3;
		
		if(place_meeting(x,y + vSpeed, oThinPlatform)){
			vSpeed = 0;
		}
			
	}
	
	//Remove control during knockback
	hascontrol = false;
	
	//Countdown how long distance is remaining.
	moveDistanceRemaining -= 1;
	
	PlayerCollision();
	
	
	//If we have been knocked our full distance OR having been knocked more than 50 pixels i y-led:
	if (moveDistanceRemaining <= 0 || (oPlayer.y - startPositionKnockback) < -50)
	{
		hascontrol = true;
		direction = 0;
		state = PlayerStateFree;	
	}
}