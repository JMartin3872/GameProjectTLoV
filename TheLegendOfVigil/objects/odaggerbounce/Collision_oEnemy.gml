/// @description ?
/// @description ?

//Variabel för att endast påverka den oEnemy som blir träffad av daggern.
var enemyId = instance_place(oDaggerBounce.x, oDaggerBounce.y, oEnemy);

with(enemyId)
{
	if(canBeHurt)
	{
		audio_play_sound(soundHurt, 10, false);
		
	}
	
	//Om fienden inte har I-frames sätter vi hitstun, startar I-frames och minskar hp.
	//knockback och byte av enemystate sker i scriptet för hitstun men vid bounce jumping vill vi inte ha någonn hitstun.
	if(canBeHurt)
	{
		//Dagger particles som ger energy.
		//Anledning till att vi använder bbox för att räkna ut mitten av objektet är då alla enemies inte har samma "origin", jämför Voomer med vanlig enemy.
		repeat(10 * global.attackStrength)
		{
			//For explanation of particle position on creation see oDaggerHitParticles.
			instance_create_layer( bbox_left + (bbox_right-bbox_left)/2, bbox_top + (bbox_bottom-bbox_top)/2, "Bullets", oDaggerHitParticle);
		}
		
		
		//Attack strength is defined in create event
		if(!isSalamander){
			hp -= global.attackStrength;
			hurtBuffer = 15;
			canBeHurt = false;
		}
			
		else{
			HurtSalamander(1, salamanderOwner);
		}
		
		if(instance_exists(oPlayer))
		{
			direction = point_direction(oPlayer.x, oPlayer.y, x, y);
		}
		
		flash = 15;
	}
	
	if(hp <= 0 && !isSalamander)
	{
		if(flying)
		{
			state = EnemyStateHurtFlying;	
		}
		
		else
		{
			state = EnemyStateHurt;	
		}
	}
	
	with(oPlayer)
	{
		
		instance_destroy(oDaggerBounce);
		vSpeed = jumpHeight;
		canJump = 0;
		canDash = 5;
		if(!audio_is_playing(snJump))
		{
			audio_play_sound(snJump, 5, false);
		}
	}
	
}


