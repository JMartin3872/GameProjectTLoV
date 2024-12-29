/// @description ?

draw_sprite_stretched(
	sSkillMenu,
	0,
	x-6,
	y-6,
	9 + rowLength*72,
	9 + (MENU_SLOTS / rowLength)*72
);

for (var i = 0; i < rows; i++){
	
	var yy = y + i * 72 + 2;
	
	for(var j = 0; j < columns; j++){
	
		var xx = x + j * 72 + 2;
		
		draw_sprite_stretched(sSkillMenuSlot, 0, xx, yy, 64, 64);
		
		
		//Drawing the objects in each box
		//-1 here stands for if the box is empty or not but we really don't need it here
		if(global.skill_menu[(i * columns) + j] != -1){
			
			//Check the value in our array of upgrades, if the value shows (= 0) that we haven't bought the upgrade then paint it on the screen.
			switch(global.skill_menu[(i * columns) + j]){
				case 0:{
					
					// i = row, so check which box we are in and draw the correct item ( i= 0, j = 0 gives the top left box, i = 1, j = 1 gives the midle box etc.
					switch(i){
						case 0:{
							//j = column
							switch(j){
								case 0:{
									draw_sprite_stretched(sHealthUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
								case 1:{
									draw_sprite_stretched(sHealthUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
								case 2:{
									draw_sprite_stretched(sHealthUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
							}
							break;
						}
						
						case 1:{
							switch(j){
								case 0:{
									draw_sprite_stretched(sEnergyBarUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
								case 1:{
									draw_sprite_stretched(sEnergyBarUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
								case 2:{
									draw_sprite_stretched(sRangedAttackUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
							}
							break;
						}
						
						case 2:{
							switch(j){
								case 0:{
									draw_sprite_stretched(sPowerUpAttack, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
								case 1:{
									draw_sprite_stretched(sHealingSpeedUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
								case 2:{
									draw_sprite_stretched(sHornUpgrade, global.skill_menu[i], xx, yy, 64, 64);
									break;
								}
								
							}
							break;
						}	
					}
					break;
				}
					
				case 1:{
					break;
				}
			}
		}
	}
}

//Draw text for the skillshop alternative
if(global.skill_menu[myCursorCounter] == 0){
	
	DrawSetText(c_black, fMenu, fa_center, fa_top);
	
	switch(myCursorCounter){
		case 0:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Health upgrade 1", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 1x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Health upgrade 1", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 1x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 1:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Health upgrade 2", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Health upgrade 2", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 2:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Health upgrade 3", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 3x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Health upgrade 3", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 3x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 3:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Energy upgrade 1", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Energy upgrade 1", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 4:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Energy upgrade 2", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Energy upgrade 2", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 5:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Ranged attack (costs energy)", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Ranged attack (costs energy)", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 6:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Double attack damage", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 5x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Double attack damage", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 5x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 7:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Faster healing", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Faster healing", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
		
		case 8:{
					
			//Draw black outline which hover
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 402 + sin(get_timer()/700000) * 5, "Horn of Tooting (AoE, costs energy)", 0.75, 0.75, 0);
	
			//Draw coin text outline
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 472 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
			//Draw white text which hover
			draw_set_color(c_white);
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 400 + sin(get_timer()/700000) * 5, "Horn of Tooting (AoE, costs energy)", 0.75, 0.75, 0);
	
			//Draw white coin text
			draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 470 + sin(get_timer()/700000) * 5 , "Cost: 2x ", 0.5, 0.5, 0);
	
	
			//Draw coin sprite.
			draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 60, camera_get_view_y(view_camera[0]) + 475 + sin(get_timer()/700000) * 5, 32, 32);
			
			break;
		}
	}
	
	
}