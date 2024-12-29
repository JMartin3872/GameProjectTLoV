/// @description Control Menu

//Item ease in, menu_x_target is where we want the menu text to end up.
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls for menu
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
		menu_x_target = gui_width + 400;
		menu_comitted = menu_cursor;
		Screenshake(4, 30);
		menu_control = false;
		audio_play_sound(snMenuSelect, 10, false);
	}
}

if(menuCooldown > 0)
{
	menuCooldown--;
}

//Code for what happens when you choose an option in the menu
if (menu_x > gui_width + 150) && (menu_comitted != -1)
{
	switch (menu_comitted)
	{
			
		case 1: {
			instance_create_layer(x,y,"instances",oMenu);
			instance_destroy();
			
			break;
		}
		
		
		case 0: {
			file_delete(SAVEFILE);
			var file;
			file = file_text_open_write(SAVEFILE);
			file_text_close(file);
			SlideTransition(TRANS_MODE.GOTO, new_game_room_target);
					
			break;
		}
	}
}
