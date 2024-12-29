/// @description Damage enemy

//Variabel för att endast påverka den oEnemy som blir träffad av daggern.
var enemyId = instance_place(oDaggerRanged.x, oDaggerRanged.y, oEnemy);

with(enemyId)
{
	if(!global.gamePaused && instance_exists(oPlayer) && object_index != oAbominableYeti)
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
			if(!isSalamander){
				hp -= global.attackStrength;
				hurtBuffer = 50;
				canBeHurt = false;
			}
			
			else{
				HurtSalamander(1, salamanderOwner);
			}
		
			if(!isBoss){
				//Verkar som att inte functionen kan sättas för två fiender som blir träffade samtidigt?
				EnemyHitstun(0.05, enemyId);
			}
		}
	}
}

instance_destroy();
