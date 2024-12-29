/// @description ?
function MephitFlyingVertical(){
	
	if(place_meeting(x, y + sign(vSpeed), oWall) || directionChange < 0)
	{
		walkSpeed = -walkSpeed	
		
		directionChange = directionChangeBackup;
	}
	
	EnemyCollision();
	
	hSpeed = 0;
	vSpeed = walkSpeed;
	
	directionChange--;

}