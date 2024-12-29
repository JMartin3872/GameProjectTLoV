/// @description Autosaving, Important that save and load follow the same order.
function AutoSave(){
	
	if((instance_exists(oPlayer) || instance_exists(oPlayerWorldMap))){
		file_delete(SAVEFILE);
	
		//Create a new savefile
		var file;
		file = file_text_open_write(SAVEFILE);
	
		file_text_write_real(file, room); //Save current room
		file_text_write_real(file, global.spawn); //Save current spawn
		file_text_write_real(file, global.playerHealthMax); //Max health
		file_text_write_real(file, global.playerHealth); //Current health
		file_text_write_real(file, global.playerEnergyMax); //Max Energy
		file_text_write_real(file, global.playerEnergy); //Current Energy
		file_text_write_real(file, global.coins); //Current Coins
		file_text_write_real(file, global.attackStrength); //Attack strength
		file_text_write_real(file, global.healingSpeed); //Heal speed
	
		file_text_write_real(file, global.hasPowerAttack); //Has attack
		file_text_write_real(file, global.hasPowerBounce); //Has bounce-attack
		file_text_write_real(file, global.hasPowerClimb); //Has climb
		file_text_write_real(file, global.hasPowerDash); //Has dash
		file_text_write_real(file, global.hasPowerAttackRanged); //Has ranged attack
		file_text_write_real(file, global.hasPowerAttackHorn); //Has horn attack
	
		file_text_write_real(file, global.skill_menu[0]); //Health upgrade 1
		file_text_write_real(file, global.skill_menu[1]); //Health upgrade 2
		file_text_write_real(file, global.skill_menu[2]); //Health upgrade 3
		file_text_write_real(file, global.skill_menu[3]); //Energy upgrade 1
		file_text_write_real(file, global.skill_menu[4]); //Energy upgrade 2
		file_text_write_real(file, global.skill_menu[5]); //Ranged attack
		file_text_write_real(file, global.skill_menu[6]); //Double damage
		file_text_write_real(file, global.skill_menu[7]); //Heal speed increase
		file_text_write_real(file, global.skill_menu[8]); //Horn upgrade
	
		file_text_write_real(file, global.cleared_stage_0); //stage 0
		file_text_write_real(file, global.cleared_stage_1); //stage 1
		file_text_write_real(file, global.cleared_stage_2); //stage 2
		file_text_write_real(file, global.cleared_stage_3); //stage 3
		file_text_write_real(file, global.cleared_stage_4); //stage 4
		
		file_text_write_real(file, global.currentLevel); //Current level
	
		//Save seen values for dialogues in level 0
		for(var i = 0; i < array_length(global.dialogues_level0); i++){
			file_text_write_real(file,global.dialogues_level0[i]);
		}
	
		//Save seen values for dialogues in level 1
		for(var i = 0; i < array_length(global.dialogues_level1); i++){
			file_text_write_real(file,global.dialogues_level1[i]);
		}
	
		//Save seen values for dialogues in level 2
		for(var i = 0; i < array_length(global.dialogues_level2); i++){
			file_text_write_real(file,global.dialogues_level2[i]);
		}
	
		//Save seen values for dialogues in level 3
		for(var i = 0; i < array_length(global.dialogues_level3); i++){
			file_text_write_real(file,global.dialogues_level3[i]);
		}
	
		//Save acquired coins in level 0
		for(var i = 0; i < array_length(global.coins_level0); i++){
			file_text_write_real(file,global.coins_level0[i]);
		}
	
		//Save acquired coins in level 1
		for(var i = 0; i < array_length(global.coins_level1); i++){
			file_text_write_real(file,global.coins_level1[i]);
		}
	
		//Save acquired coins in level 2
		for(var i = 0; i < array_length(global.coins_level2); i++){
			file_text_write_real(file,global.coins_level2[i]);
		}
	
		//Save acquired coins in level 3
		for(var i = 0; i < array_length(global.coins_level3); i++){
			file_text_write_real(file,global.coins_level3[i]);
		}
		
		//Save lever statuses
		for(var i = 0; i < array_length(global.levers); i++){
			file_text_write_real(file,global.levers[i]);
		}
	
		file_text_close(file);
	
	}

}