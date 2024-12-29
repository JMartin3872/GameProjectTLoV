/// @description EnemyHitstun(length, ID)
/// @arg Seconds sets the length of hitstun in seconds.
/// @arg EnemyID decides which enemy should be affected.
function EnemyHitstun(argument0, argument1)
{
	
	//Locking image speed.
	argument1.image_speed = 0;
	
	//Locking movement, need for locking grav?
	argument1.hitStunned = true;
	
	
	//Timer for how long hitstun should last.
	//Also includes the knockcback and state transition for enemy,
	hitstunTimer = time_source_create(time_source_game, argument0, time_source_units_seconds, function(argument1)
	{
		//resuming image speed, setting knockback and changing states. 
		if(instance_exists(argument1))
		{
			with (argument1)
			{
				image_speed = 1;
				
				//Behov av att se över hur direction och lengthdir faktiskt funkar för att få en dynamisk knockback.
				
				if(instance_exists(oPlayer))
				{
					direction = point_direction(oPlayer.x, oPlayer.y, x, y);
				}
				
				hitStunned = false;
				
				//If not flying then regular hurtstate.
				if(argument1.flying == false)
				{
					hSpeed = lengthdir_x(3, direction);
					vSpeed = min(lengthdir_y(3, direction), -3);
					state = EnemyStateHurt;
				}
				
				//If flying then send them to yeeeet flying hurt.
				else
				{
					state = EnemyStateHurtFlying;
				}
				
			}
		}
	}
	, [argument1]);
	
	time_source_start(hitstunTimer);
	
	


}