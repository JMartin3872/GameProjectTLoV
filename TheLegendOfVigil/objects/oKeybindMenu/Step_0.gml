/// @description Control Menu

//Controls for menu
if (menu_control)
{
	if( menuCooldown <= 0){
		if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_axis_value(0, gp_axislv) < -0.2)
		{
			menu_cursor++;
			if (menu_cursor >= menu_items)
			{
				menu_cursor = 0;
			}
			audio_play_sound(snMenuMove, 10, false);
			menuCooldown = 15;
		}
	
		if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0.2)
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
	
	if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))
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
		case 1: {
			RestoreDefaultKeybinds();
			menu_comitted = -1;
			menu_control = true;
			break;
		}
		
		//Close menu
		case 0: {
			SaveConfig();
			go_back = true;
			break;
		}
		
		//Change keybind
		default: 
		{
			with(instance_create_layer(x,y,"UI",oKeyBinder)){
				var temp = string_split(other.menu[other.menu_cursor],":");
				target_keybind = temp[0];	
			}
			menu[menu_cursor] = "_"
			menu_comitted = -1;
			break;
		}
	}
}

if(menu_cursor == 1 && menuCooldown <= 0){
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_axis_value(0, gp_axislh) < -0.2){
		global.volume = max((global.volume - 0.1), 0);
		audio_master_gain(global.volume);
		menu[1] = string_format((global.volume * 100), 3, 0) + " %";
		audio_play_sound(snMenuMove, 10, false);
		menuCooldown = 15;
	}
	
	else if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0.2){
		global.volume = min((global.volume + 0.1), 1);	
		audio_master_gain(global.volume);
		menu[1] = string_format((global.volume * 100), 3, 0) + " %";
		audio_play_sound(snMenuMove, 10, false);
		menuCooldown = 15;
	}
}
