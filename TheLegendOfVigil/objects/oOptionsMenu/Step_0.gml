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
	}
	
	if(keyboard_check_pressed(ds_map_find_value(global.keyboard_map, "Jump")) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))
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
		//Open controller menu
		case 3:{
			instance_create_layer(Get_camera_mid_x() - 3*36, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - (9/3)*36, "UI", oControllerMenu);
			menu_comitted = -1;
			menu_control = false;
			hideMenu = true;
			break;	
		}
		
		// Open keybinds menu
		case 2:{
			instance_create_layer(Get_camera_mid_x() - 3*36, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - (9/3)*36, "UI", oKeybindMenu);
			menu_comitted = -1;
			menu_control = false;
			hideMenu = true;
			break;	
		}
		
		// Open volume menu
		case 1: 
		{
			instance_create_layer(Get_camera_mid_x() - 3*36, Get_camera_mid_y() - (9/3)*36, "UI", oVolumeMenu);
			menu_comitted = -1;
			menu_control = false;
			hideMenu = true;
			break;
		}
		
		//End game
		case 0: {
			go_back = true;
			break;
		}
	}
}
