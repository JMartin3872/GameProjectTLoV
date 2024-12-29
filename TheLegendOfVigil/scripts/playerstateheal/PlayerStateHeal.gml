/// @description ?
function PlayerStateHeal(){
	
	PlayerCollision();
	
	//Under första steppet i staten sker följande:
	if(sprite_index != sPlayerHeal){
		
		//Sätter sprite
		sprite_index = sPlayerHeal;
		
		//Nollställer hSpeed, sätter done till false;
		hSpeed = 0;
		done = false;
		
		//Sätter countdown för healing, dvs hur lång tid det tar att heala
		healCountdown = global.healingSpeed;
		
		//Sätter mängd av Energy som ska dras i varje step
		healingEnergyDrain = healingCost /global.healingSpeed;
		
		
		//Sätter igång healcharge ljud.
		if(!audio_is_playing(snHealCharge)){
			audio_play_sound(snHealCharge, 20, false);	
		}
		
		//Avgör om healen kan genomföras beroende på hur mycket energy spelaren har kvar.
		if(global.playerEnergy > healingCost){
			canAffordHeal = true;	
		}
		
		else{
			canAffordHeal = false;
		}
		
	}
	
	
	
	
	//Avbryt heal om knappen släpps
	if(key_heal_release){
		state = PlayerStateFree;	
	}
	
	//Om nedräkningen på healen är klar:
	if(healCountdown == 0){
		//Om healen kunde genomföras:
		if(canAffordHeal){
			//Om hp inte redan är max:
			if(global.playerHealth < global.playerHealthMax){
				//Öka hp med 1 och spela success ljud och sätt flash
				global.playerHealth++;
				audio_play_sound(snHealSuccess, 20, false);
				flash = 5;
			}
		}
		
		//Annars om health inte är max och heal inte kan genomföras spela fail ljud
		else if(global.playerHealth < global.playerHealthMax){
			audio_play_sound(snHealFail, 20, false);	
		}
		
		//Sätt done till true
		done = true;
	}
	
	//Minska healcountdown
	healCountdown--;
	
	//Om färdig återgå från state.
	if(done){
		state = PlayerStateFree;	
	}
	
	//Om healen kan genomföras och health inte redan är på max så skapas "healing partiklar" och energy börjar dras.
	if(!done && canAffordHeal && (global.playerHealth != global.playerHealthMax)){
		instance_create_layer(x + random_range(-10,10), bbox_bottom, "Bullets", oHealingParticle);	
		global.playerEnergy -= healingEnergyDrain;	
	}
	

}