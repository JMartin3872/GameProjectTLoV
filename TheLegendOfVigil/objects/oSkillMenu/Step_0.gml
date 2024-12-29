/// @description Controlling menu and choosing upgrade

if(keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_face2)){
		oPauseMenu.hideMenu = false;
		oPauseMenu.menu_control = true;
		instance_destroy(self);
}

if(moveCooldown > 0){
	moveCooldown--;
}

target = global.skill_menu[myCursorCounter];

if(skillMenuControl && moveCooldown == 0){
	
	#region //Move cursor
	if(myCursorCounter >= 3 && (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_axis_value(0, gp_axislv) < -0.2)){
		myCursorCounter -= 3;
		cursorMove = true;
	}
	
	if(myCursorCounter <= 5 && (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0.2)){
		myCursorCounter += 3;
		cursorMove = true;
	}
	
	if(myCursorCounter % 3 && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_axis_value(0, gp_axislh) < -0.2)){
		myCursorCounter--;
		cursorMove = true;	
	}
	
	if((myCursorCounter != 2 && myCursorCounter != 5 && myCursorCounter != 8 )&& (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0.2)){
		myCursorCounter++;
		cursorMove = true;	
	}
	
	if(cursorMove){
		with(myCursor){
			if(other.myCursorCounter < 3){
				y = ystart;	
			
				switch(other.myCursorCounter){
					case 0:{
						x = xstart;
						break;
					}
				
					case 1:{
						x = xstart + 72;
						break;
					}
				
					case 2:{
						x = xstart + 144;
						break;
					}
				
				}
			}
		
			else if(other.myCursorCounter < 6){
				y = ystart + 72;	
			
				switch(other.myCursorCounter){
					case 3:{
						x = xstart;
						break;
					}
				
					case 4:{
						x = xstart + 72;
						break;
					}
				
					case 5:{
						x = xstart + 144;
						break;
					}
				
				}
			}
		
			else if(other.myCursorCounter < 9){
				y = ystart + 144;	
			
				switch(other.myCursorCounter){
					case 6:{
						x = xstart;
						break;
					}
				
					case 7:{
						x = xstart + 72;
						break;
					}
				
					case 8:{
						x = xstart + 144;
						break;
					}
				
				}
			}
		}
		audio_play_sound(snMenuMove,20,false);
		cursorMove = false;
		moveCooldown = 10;
	}
	
	#endregion
	
	//Selecting an upgrade, target is checking if the upgrade was bought already or not, eg is the value in the skill_menu list 0 or 1 where 1 means already bought
	if(target != -1 && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1)))
	{
		switch(myCursorCounter){
			
			//health upgrade 1
			case 0 :{
				switch(target){
			
					case 0:{
						if(global.coins >=1){
							global.coins -= 1;
							global.skill_menu[myCursorCounter] = 1;
							global.playerHealthMax++;
							global.playerHealth = global.playerHealthMax;
							audio_play_sound(snHealSuccess, 10, false);
							
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
						
						break;
						
					
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//health upgrade 2
			case 1 :{
				switch(target){
			
					case 0:{
						
						if(global.coins >= 2){
							global.coins -= 2;
							global.skill_menu[myCursorCounter] = 1;
							global.playerHealthMax++;
							global.playerHealth = global.playerHealthMax;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
							
						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//health upgrade 3
			case 2 :{
				switch(target){
			
					case 0:{
						
						if(global.coins >= 3){
							global.coins -= 3;
							global.skill_menu[myCursorCounter] = 1;
							global.playerHealthMax++;
							global.playerHealth = global.playerHealthMax;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
						
						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//Energy upgrade 1
			case 3 :{
				switch(target){
			
					case 0:{
						
						if(global.coins >= 2){
							global.coins -= 2;
							global.skill_menu[myCursorCounter] = 1;
							global.playerEnergyMax += 50;
							
							if(global.playerEnergyMax == 150){
								oEnergyBarBorder.image_yscale = 2.9;
							}
							
							else{
								oEnergyBarBorder.image_yscale = 3.8;
							}
							global.playerEnergy = global.playerEnergyMax;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
							
						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//energy upgrade 2
			case 4 :{
				switch(target){
			
					case 0:{
						if(global.coins >= 2){
							global.coins -= 2;
							global.skill_menu[myCursorCounter] = 1;
							global.playerEnergyMax += 50;
							
							if(global.playerEnergyMax == 150){
								oEnergyBarBorder.image_yscale = 2.9;
							}
							
							else{
								oEnergyBarBorder.image_yscale = 3.8;
							}
							global.playerEnergy = global.playerEnergyMax;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
						
						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//Ranged attack upgrade
			case 5:{
				switch(target){
			
					case 0:{
						if(global.coins >= 2){
							global.coins -= 2;
							global.skill_menu[myCursorCounter] = 1;
							global.hasPowerAttackRanged = true;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}

						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//Double damage
			case 6 :{
				switch(target){
			
					case 0:{
						
						
						if(global.coins >= 5){
							global.coins -= 5;
							global.skill_menu[myCursorCounter] = 1;
							global.attackStrength *= 2;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
							
						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//Quicker heal
			case 7 :{
				switch(target){
			
					case 0:{
						
						if(global.coins >= 2){
							global.coins -= 2;
							global.skill_menu[myCursorCounter] = 1;
							global.healingSpeed = 30;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
						
						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
			
			//Horn of tooting
			case 8 :{
				switch(target){
			
					case 0:{
						
						if(global.coins >= 2){
							global.coins -= 2;
							global.skill_menu[myCursorCounter] = 1;
							global.hasPowerAttackHorn = true;
							audio_play_sound(snHealSuccess, 10, false);
						}
						
						else{
							audio_play_sound(snHealFail,10,false);
						}
							
						break;
					}
			
					case 1:{
			
						audio_play_sound(snHealFail,10,false);
						break;
					}
		
				}
				
				break;
			}
		}
	}
}