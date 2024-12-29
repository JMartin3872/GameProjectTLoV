/// @description EnemyStateHurt

function EnemyStateHurt()
{
	EnemyCollision();
	
	if (hp <= 0)
	{
		state = EnemyStateDeath;
	}
	
	else
	{
		
		//Setting sprite AND initiating flashshader which will only happen one.
		if(sprite_index != spriteHurt)
		{
			flash = 15;
			sprite_index = spriteHurt;
			if(instance_exists(oPlayer)){
				image_xscale = -sign(oPlayer.image_xscale) * size;
			}
		}
		vSpeed += grav;
		
		flash--
	
		//När fienden nuddar mark igen återgår den till sitt state "efter hurt"
		if (place_meeting(x, y + sign(vSpeed), oWall) || place_meeting(x, y + sign(vSpeed), oThinPlatform) || place_meeting(x, y + 4, oMovingPlatform))
		{
			//sprite_index = sEnemy;
			state = stateAfterHurt;
		}
	}
	
	
}