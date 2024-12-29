/// @description Control Menu

//Controls for menu
if (menu_control)
{
	if( menuCooldown <= 0){
		if(keyboard_check_pressed(ds_map_find_value(global.keyboard_map, "Up")) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_axis_value(0, gp_axislv) < -0.2)
		{
			menu_cursor++;
			if (menu_cursor >= menu_items)
			{
				menu_cursor = 0;
			}
			audio_play_sound(snMenuMove, 10, false);
			menuCooldown = 15;
		}
	
		if(keyboard_check_pressed(ds_map_find_value(global.keyboard_map, "Down")) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0.2)
		{
			menu_cursor--;
			if (menu_cursor < 0)
			{
				menu_cursor = menu_items - 1;
			}
			audio_play_sound(snMenuMove, 10, false);
			menuCooldown = 15;
		}
		
		if(gamepad_button_check_pressed(0, gp_face2)){
			global.key_pause = true;			
		}
		
		
	}
	
	if(keyboard_check_pressed(ds_map_find_value(global.keyboard_map, "Jump")) ||keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))
	{
		menu_comitted = menu_cursor;
		menu_control = false;
		audio_play_sound(snPauseGame, 10, false);
	}
}

if(menuCooldown > 0)
{
	menuCooldown--;
}

//Code for what happens when you choose an option in the menu
if (menu_comitted != -1)
{
	switch (menu_comitted)
	{
		case 6:{
			global.key_pause = true; 
			break;
		}
		
		//Open skill shop and turn off pause menu control.
		case 5:{
			instance_create_layer(Get_camera_mid_x() - 3*36, Get_camera_mid_y() - (9/3)*36, "UI", oSkillMenu);
			menu_comitted = -1;
			hideMenu = true;
			break;
		}
		
		case 4:{
			instance_create_layer(Get_camera_mid_x() - 3*36, Get_camera_mid_y() - (9/3)*36, "UI", oOptionsMenu);
			menu_comitted = -1;
			hideMenu = true;
			break;	
		}
		
		case 3:{
			global.key_pause = true;
			SlideTransition(TRANS_MODE.GOTO, room);	
			break;
		}
		
		//Return to world map
		case 2: 
		{
			global.spawn = -1;
			SlideTransition(TRANS_MODE.GOTO, rWorldMap);
			break;
		}
		
		case 1:{
			global.key_pause = true;
			SlideTransition(TRANS_MODE.GOTO, rMenu);	
			break;
		}
		
		//End game
		case 0:{ 
			AutoSave();
			game_end(); 
			break;
		}
	}
}
