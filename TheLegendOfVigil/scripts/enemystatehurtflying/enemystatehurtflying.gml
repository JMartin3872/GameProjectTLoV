/// @description EnemyStateHurt

function EnemyStateHurtFlying()
{
	EnemyCollision();
	
	
	//Om det är första gången vi kör igenom staten och fienden har 0 hp så sätter vi sprite samt ger stark launch
	//Efter att timer har expirat så dör fienden med en "rökpuff"
	if (sprite_index != spriteHurt)
	{	
		audio_play_sound(soundDeath, 10, false);
		flash = 15;
		sprite_index = spriteHurt;
		image_xscale = -sign(oPlayer.image_xscale);
		
		
		if(hp <= 0 )
		{
			
			hSpeed = lengthdir_x(10, direction);
			vSpeed = lengthdir_y(10, direction + random_range(-3,3));
			launchTimer = time_source_create(time_source_game, 0.5, time_source_units_seconds, function()
			{
				state = EnemyStateDeathFlying;
			}
			);
		
			time_source_start(launchTimer);
		}
		
	}
	
	if(place_meeting(x + sign(hSpeed)*10, y+sign(vSpeed)*10, oWall) || place_meeting(x + sign(hSpeed)*10, y+sign(vSpeed)*10, oSpike))
	{
		if(time_source_exists(launchTimer))
		{
			time_source_stop(launchTimer);
		}
		state = EnemyStateDeathFlying;
	}
		
	
	
	//Här är frågan om det kommer finnas flygande fiender med mer än 1 hp?
	//Då behöver vi kanske någon liten knockback i luften?
	//Denna kod är dock ej färdigställd.
	else if(hp > 0)
	{
		hSpeed = lengthdir_x(3, direction);
		vSpeed = min(lengthdir_y(3, direction), -3);
		
		knockbackTimer = time_source_create(time_source_game, 0.5, time_source_units_seconds, function()
		{
			state = stateAfterHurt;
		}
		);
		
		time_source_start(knockbackTimer);
	}
	
	//När fienden nuddar mark igen återgår den till sitt state "efter hurt"
	if (place_meeting(x, y + sign(vSpeed), oWall))
	{
		sprite_index = sEnemy;
		state = stateAfterHurt;
	}
	
	flash--;
}