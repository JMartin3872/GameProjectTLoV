/// @description ?
function MephitFlyingIdle(){
	
	
	/*
	if(place_meeting(x, y + sign(vSpeed), oWall) || directionChange < 0)
	{
		walkSpeed = -walkSpeed	
		
		directionChange = directionChangeBackup;
	}
	*/
	
	EnemyCollision();
	
	hSpeed = 0
	vSpeed = sin(get_timer()/500000) * 0.2;
	
	//directionChange--;

}