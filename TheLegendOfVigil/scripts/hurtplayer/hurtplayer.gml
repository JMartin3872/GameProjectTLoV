/// @description Hurting the player
/// @Arg hurtDirection is the direction we where hit from
/// @Arg hurtLength is the distance from we where hit from
/// @Arg force is the amount of knockback we will get
/// @Arg damage is the amount of damage that will be done.

function HurtPlayer(hurtDirection, hurtLength, force, damage){
	with(oPlayer){
	
		PlayerCollision();
	
		if(oPlayer.invulnerable <= 0 && oPlayer.state != PlayerStateDash) //Is the player invulnerable or dashing? in that case no damage.
		{
			global.playerHealth = max(0, global.playerHealth-damage) //Reduce players health with damage
			if(!audio_is_playing(snPlayerHurt))
			{
				audio_play_sound(snPlayerHurt, 30, false);	
			}
		
			if(global.playerHealth > 0) //If the player still has health left the following happens
			{
				sourceDirection = hurtDirection;
				sourceLength = hurtLength;
				moveDistanceRemaining = force; //Set how long movingdistance we should have based on force.
				state = PlayerStateKnockback; //Set player state to knocked back state
				Screenshake(2,10);	//Screenshsake
				flash = 5; //Player flash
				invulnerable = 90; //Make pc invulnerable
			
			}
		
			else //Else kill player.
			{
			
				KillPlayer();
		
			}
		}
	}
	
	

}