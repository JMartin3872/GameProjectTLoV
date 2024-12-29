/// @description Only relevant int AY-Bossfight
function AngryYetiFallingBoss(){
	EnemyCollision();
	hSpeed = 0;
	vSpeed += grav;
	
	if(place_meeting(x,y + vSpeed, oWall)){
		while(!place_meeting(x,y + 1, oWall)){
			y++;	
		}
		
		state = AngryYetiJump;
			
	}
}