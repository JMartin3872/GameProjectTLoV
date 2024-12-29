/// @description ?
function AngryYetiJump(){
	
	if(sprite_index != sAngryYetiJumpFall)
	{
		sprite_index = sAngryYetiJumpFall
		vSpeed = -5;
		canJump = 0;
		canDash = 5;
		
	}
	
	EnemyCollision();
	
	if(place_meeting(x, y + 1, oWall) || place_meeting(x, y + 5, oThinPlatform))
	{
		while(!place_meeting(x, y+1, oWall) && !place_meeting(x, y+4, oThinPlatform)){
			y+=1;	
		}
		if(instance_exists(oPlayer)){
			walkSpeed = sign(lengthdir_x(1, point_direction(x, y, oPlayer.x, oPlayer.y)));
		}
		state = AngryYetiCharge;	
	}
	
	vSpeed += grav;

}