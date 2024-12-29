#region //Get player input
	key_left = keyboard_check_pressed(ds_map_find_value(global.keyboard_map, "Left")) ||  keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check_pressed(ds_map_find_value(global.keyboard_map, "Right")) ||  keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(ds_map_find_value(global.keyboard_map, "Jump")) ||  keyboard_check_pressed(vk_space);
	
	
	//Checking if we used keyboard or controller
	if (key_left || key_right || key_jump)
	{
		controller = 0;
	}
	
#endregion

#region //Controller input
	// "deadspace" on left controller stick (abs turns a negative value positive)
	// then overwriting the key_left and key_right from keyboard to controller instead.
	if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		if(key_left > 0.2) //Setting the lowest speed to lowestMoveSpeed while keeping the same "deadspace"
		{
			key_left = 1;
		}
		
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		if(key_right > 0.2) //Setting the lowest speed to lowestMoveSpeed while keeping the same "deadspace"
		{
			key_right = 1;
		}
		controller = 1;
	}
	

	if (gamepad_button_check_pressed(0, gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
#endregion
	
//If game isn't paused, execute state in which we move around the worldmap etc.
if(!global.gamePaused)
{
	script_execute(state);
}