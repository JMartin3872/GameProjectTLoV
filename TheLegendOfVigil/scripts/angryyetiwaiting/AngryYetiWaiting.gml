/// @description ?
function AngryYetiWaiting()
{
	EnemyCollision();
	hSpeed = 0;
	vSpeed += grav;
	
	if(instance_exists(oPlayer)){
		if(point_distance(x, y, oPlayer.x, oPlayer.y) < triggerDistance)
		{
			audio_play_sound(snDetected, 15, false);
			state = AngryYetiJump;	
		}
	}
		
	
}