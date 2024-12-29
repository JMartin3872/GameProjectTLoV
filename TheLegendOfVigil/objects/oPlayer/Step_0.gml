#region //Get player input

if (hascontrol) //variable describing if we let the player have control of movement or not.
{	
	key_left = keyboard_check(ds_map_find_value(global.keyboard_map,"Left")); //|| keyboard_check(ord("A"));
	key_right = keyboard_check(ds_map_find_value(global.keyboard_map,"Right")); //|| keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(ds_map_find_value(global.keyboard_map,"Jump"));
	
	//Jump held
	if(keyboard_check(ds_map_find_value(global.keyboard_map,"Jump")))
	{
		key_jump_held = keyboard_check(ds_map_find_value(global.keyboard_map,"Jump"));
	}
	
	else
	{
		key_jump_held = gamepad_button_check(0, gp_face1);
	}
	
	key_up = keyboard_check(ds_map_find_value(global.keyboard_map,"Up"));
	key_down = keyboard_check(ds_map_find_value(global.keyboard_map,"Down"));
	key_climb = keyboard_check(ds_map_find_value(global.keyboard_map,"Climb"));
	key_climb_release = keyboard_check_released(ds_map_find_value(global.keyboard_map,"Climb"));
	key_attack = keyboard_check_pressed(ds_map_find_value(global.keyboard_map,"Attack"));
	key_attack_ranged  = keyboard_check_pressed(ds_map_find_value(global.keyboard_map,"Ranged attack"));
	key_attack_horn = keyboard_check_pressed(ds_map_find_value(global.keyboard_map,"Horn attack"));
	key_attack_bounce = keyboard_check_pressed(ds_map_find_value(global.keyboard_map,"Bounce attack"));
	key_dash = keyboard_check_pressed(ds_map_find_value(global.keyboard_map,"Dash"));
	key_heal = keyboard_check_pressed(ds_map_find_value(global.keyboard_map,"Heal"));
	key_heal_release = keyboard_check_released(ds_map_find_value(global.keyboard_map,"Heal"));	
	
	global.key_pause = keyboard_check_pressed(vk_escape) or global.key_pause;
	

	//Checking if we used keyboard or controller
	if (key_left || key_right || key_jump)
	{
		controller = 0;
	}

#region //Controller input
	// "deadspace" on left controller stick (abs turns a negative value positive)
	// then overwriting the key_left and key_right from keyboard to controller instead.
	if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		if(key_left > 0.2 && key_left < lowestMoveSpeed) //Setting the lowest speed to lowestMoveSpeed while keeping the same "deadspace"
		{
			key_left = lowestMoveSpeed;
		}
		
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		if(key_right > 0.2 && key_right < lowestMoveSpeed) //Setting the lowest speed to lowestMoveSpeed while keeping the same "deadspace"
		{
			key_right = lowestMoveSpeed;
		}
		controller = 1;
	}
	
	if(abs(gamepad_axis_value(0, gp_axislv)) > 0.2)
	{
		key_up = abs(min(gamepad_axis_value(0, gp_axislv), 0));
		if(key_up > 0.2 && key_up < lowestClimbSpeed) //Setting the lowest speed to lowestClimbSpeed while keeping the same "deadspace"
		{
			key_up = lowestClimbSpeed;
		}
		
		key_down = max(gamepad_axis_value(0, gp_axislv), 0);
		if(key_down > 0.2 && key_down < lowestClimbSpeed) //Setting the lowest speed to lowestClimbSpeed while keeping the same "deadspace"
		{
			key_down = lowestClimbSpeed;
		}
		
		controller = 1;
	}

	if (gamepad_button_check_pressed(0, gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
	
	if(gamepad_button_check(0, gp_shoulderrb))
	{
		key_climb = 1;
	}
	
	if(gamepad_button_check_released(0, gp_shoulderrb))
	{
		key_climb_release = 1;
	}
	
	if (gamepad_button_check_pressed(0, gp_face3))
	{
		key_attack = 1;
	}
	
	if (gamepad_button_check_pressed(0, gp_face2))
	{
		key_attack_bounce = 1;
	}
	
	if (gamepad_button_check_pressed(0, gp_shoulderl))
	{
		key_attack_ranged = 1;
	}
	
	if (gamepad_button_check_pressed(0, gp_shoulderlb))
	{
		key_attack_horn= 1;
	}
	
	if (gamepad_button_check_pressed(0, gp_shoulderr))
	{
		key_dash = 1;
	}
	
	if (gamepad_button_check_pressed(0, gp_face4))
	{
		key_heal = 1;
	}
	
	if (gamepad_button_check_released(0, gp_face4))
	{
		key_heal_release = 1;
	}
	
	if (gamepad_button_check_pressed(0, gp_start))
	{
		global.key_pause = 1;
	}
}

#endregion

else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

#endregion

//If game isn't paused
if(!global.gamePaused){
	//Reduce invulnerability and flash
	invulnerable = max(invulnerable-1,0);
	flash = max(flash-0.05,0);

	//Flicker effect while invulnerable
	if(invulnerable != 0 && (invulnerable % 8 < 2) == 0 && flash == 0)
	{
		image_alpha = 0;	
	}

	else
	{	
		image_alpha = 1;
	}
}

//Enabling pausing while dashing
if(state == PlayerStateDash && gamepad_button_check_pressed(0, gp_start))
{
	global.key_pause = true;
}

//If game isn't paused, execute state
if(!global.gamePaused)
{
	script_execute(state);
}