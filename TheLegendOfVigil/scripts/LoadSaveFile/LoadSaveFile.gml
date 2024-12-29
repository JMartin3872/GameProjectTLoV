/// @description Load, Important that save and load follow the same order.
function LoadSaveFile(){
	
	if(file_exists(SAVEFILE)){
	//Create a new savefile
	var file;
	file = file_text_open_read(SAVEFILE);
	
	var target = file_text_read_real(file); //Load current room
	global.spawn = file_text_read_real(file); //Load current spawn
	global.playerHealthMax = file_text_read_real(file); // Load max health
	global.playerHealth = file_text_read_real(file); //Load current health
	global.playerEnergyMax = file_text_read_real(file); //Load max Energy
	global.playerEnergy = file_text_read_real(file); //Load current Energy
	global.coins = file_text_read_real(file); //Load current Coins
	global.attackStrength = file_text_read_real(file); //Load attack strength
	global.healingSpeed = file_text_read_real(file); // Load heal speed
	
	global.hasPowerAttack = file_text_read_real(file); //Load Attack
	global.hasPowerBounce = file_text_read_real(file); //Load Bounce-attack
	global.hasPowerClimb = file_text_read_real(file); //Load climb
	global.hasPowerDash = file_text_read_real(file); //Load dash
	global.hasPowerAttackRanged = file_text_read_real(file); //Load ranged attack
	global.hasPowerAttackHorn = file_text_read_real(file); //Load horn attack
	
	global.skill_menu[0] = file_text_read_real(file); //Health upgrade 1
	global.skill_menu[1] = file_text_read_real(file); //Health upgrade 2
	global.skill_menu[2] = file_text_read_real(file); //Health upgrade 3
	global.skill_menu[3] = file_text_read_real(file); //Energy upgrade 1
	global.skill_menu[4] = file_text_read_real(file); //Energy upgrade 2
	global.skill_menu[5] = file_text_read_real(file); //Ranged attack
	global.skill_menu[6] = file_text_read_real(file); //Double damage
	global.skill_menu[7] = file_text_read_real(file); //Heal speed increase
	global.skill_menu[8] = file_text_read_real(file); //Horn upgrade
	
	global.cleared_stage_0 = file_text_read_real(file); //stage 0
	global.cleared_stage_1 = file_text_read_real(file); //stage 1
	global.cleared_stage_2 = file_text_read_real(file); //stage 2
	global.cleared_stage_3 = file_text_read_real(file); //stage 3
	global.cleared_stage_4 = file_text_read_real(file); //stage 4
	
	global.currentLevel = file_text_read_real(file); //Current level
	
	//Load seen values for dialogues in level 0
	for(var i = 0; i < array_length(global.dialogues_level0); i++){
		global.dialogues_level0[i] = file_text_read_real(file);
	}
	
	//Load seen values for dialogues in level 1
	for(var i = 0; i < array_length(global.dialogues_level1); i++){
		global.dialogues_level1[i] = file_text_read_real(file);
	}
	
	//Load seen values for dialogues in level 2
	for(var i = 0; i < array_length(global.dialogues_level2); i++){
		global.dialogues_level2[i] = file_text_read_real(file);
	}
	
	//Load seen values for dialogues in level 3
	for(var i = 0; i < array_length(global.dialogues_level3); i++){
		global.dialogues_level3[i] = file_text_read_real(file);
	}
	
	//Load acquired coins in level 0
	for(var i = 0; i < array_length(global.coins_level0); i++){
		global.coins_level0[i] = file_text_read_real(file);
	}
	
	//Load acquired coins in level 1
	for(var i = 0; i < array_length(global.coins_level1); i++){
		global.coins_level1[i] = file_text_read_real(file);
	}
	
	//Load acquired coins in level 2
	for(var i = 0; i < array_length(global.coins_level2); i++){
		global.coins_level2[i] = file_text_read_real(file);
	}
	
	//Load acquired coins in level 3
	for(var i = 0; i < array_length(global.coins_level3); i++){
		global.coins_level3[i] = file_text_read_real(file);
	}
	
	//Load lever statuses
	for(var i = 0; i < array_length(global.levers); i++){
		global.levers[i] = file_text_read_real(file);
	}
	
	file_text_close(file);
	
	SlideTransition(TRANS_MODE.GOTO, target);
	
	}
}
