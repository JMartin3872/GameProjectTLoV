/// @description Damage and spawn hit particles

//Variabel för att endast påverka den oEnemy som blir träffad av daggern.
var enemyId = instance_place(oHornBlast.x, oHornBlast.y, oEnemy);

with(enemyId)
{
	if(!global.gamePaused && object_index != oAbominableYeti)
	{
		if(canBeHurt)
		{
			audio_play_sound(soundHurt, 10, false);
		}
	
		//Om fienden inte har I-frames sätter vi hitstun, startar I-frames och minskar hp.
		//knockback och byte av enemystate sker i scriptet för hitstun.
		if(canBeHurt)
		{
			//Attack strength is defined in create event
			if(!isSalamander && !isDoomsDayMachine){
				hp -= global.attackStrength * 2;
				hurtBuffer = 50;
				canBeHurt = false;
			}
			
			else{
				if(isSalamander){
					HurtSalamander(2, salamanderOwner);
				}
			}
		
			//Starting Player hitstun unless hitstun is already active.
			if(!global.hitstun)
			{
				PlayerHitstun(0.15);
			}
		
			//Verkar som att inte functionen kan sättas för två fiender som blir träffade samtidigt?
			
			if(!isBoss){
				EnemyHitstun(0.15, enemyId);
			}
		}
	}
}


	
	
