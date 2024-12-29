/// @description Damage and spawn hit particles

//Variabel för att endast påverka den oEnemy som blir träffad av daggern.
var enemyId = instance_place(oDagger.x, oDagger.y, oEnemy);

with(enemyId)
{
	if(!global.gamePaused && object_index != oAbominableYeti)
	{
		if(canBeHurt)
		{
			audio_play_sound(soundHurt, 10, false);
			
			//Dagger particles som ger energy.
			//Anledning till att vi använder bbox för att räkna ut mitten av objektet är då alla enemies inte har samma "origin", jämför Voomer med vanlig enemy.
			repeat(10 * global.attackStrength)
			{
				instance_create_layer( bbox_left + (bbox_right-bbox_left)/2, bbox_top + (bbox_bottom-bbox_top)/2, "Bullets", oDaggerHitParticle);
			}
		}
	
		//Om fienden inte har I-frames sätter vi hitstun, startar I-frames och minskar hp.
		//knockback och byte av enemystate sker i scriptet för hitstun.
		if(canBeHurt)
		{
			//Attack strength is defined in create event
			if(!isSalamander){
				hp -= global.attackStrength;
				hurtBuffer = 50;
				canBeHurt = false;
			}
			
			else{
				HurtSalamander(1, salamanderOwner);
			}
			
			//Om fienden inte är en boss
			if(!isBoss){
				//Starting Player hitstun unless hitstun is already active.
				if(!global.hitstun)
				{
					PlayerHitstun(0.15);
				}
		
				//Verkar som att inte functionen kan sättas för två fiender som blir träffade samtidigt?
				EnemyHitstun(0.15, enemyId);
			}
			
			//Om fienden är en boss
			else{
				if(!global.hitstun)
				{
					PlayerHitstun(0.15);
				}
	
				else
				{
					flash = 15;
				}
			}
		}
	}
}


	
	
