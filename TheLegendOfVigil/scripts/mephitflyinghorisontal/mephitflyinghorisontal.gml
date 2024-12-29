/// @description ?
function MephitFlyingHorisontal(){
	
	
	
	if(place_meeting(x + sign(hSpeed), y, oWall) || directionChange < 0)
	{
		walkSpeed = -walkSpeed	
		
		image_xscale = sign(walkSpeed);
		
		directionChange = directionChangeBackup;
	}
	
	EnemyCollision();
	
	hSpeed = walkSpeed;
	vSpeed = sin(get_timer()/500000) * 0.5;
	
	directionChange--;

}