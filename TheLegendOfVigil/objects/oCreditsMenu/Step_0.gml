/// @description Control Menu

//Controls for menu
if (menu_control)
{
	
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
		//Go back
		case 0: {
			instance_create_layer(x,y,"instances",oMenu);
			instance_destroy();
			
			break;
		}
	}
}
