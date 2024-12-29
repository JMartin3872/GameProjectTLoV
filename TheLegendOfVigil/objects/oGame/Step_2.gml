/// @description Pause the game

//If escape is pressed and we aren't in the menu and hitstun isn't ongoing then the game is paused
if(global.key_pause && room != rMenu && global.hitstun == false && !instance_exists(oSkillMenu))
{
	
	global.gamePaused = !global.gamePaused;
	global.key_pause = false;
	
	
	
	
	
	//If the game is paused we store all the current instances image speeds and then sets them to 0
	if(global.gamePaused)
	{
		with(all)
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
		
		if(room == rLevel3_boss && instance_exists(oPlayer)){
			with(oPlayer){
				path_speed = 0;	
			}
		}
		
		if(instance_exists(oFlyingDwarfHorisontal)){
			with(oFlyingDwarfHorisontal){
				path_speed = 0;	
			}
		}
			
		if(instance_exists(oFlyingDwarfVertical)){
			with(oFlyingDwarfVertical){
				path_speed = 0;	
			}
		}
		
		instance_create_layer(x,y,"UI",oPauseMenu);
		
		//Pause music if game pauses but right now only works for the only song we have
		audio_pause_all();
		
		audio_play_sound(snPauseGame,100,false);
		
		
	}
	
	//Then restoring them when we unpause the game.
	else{
			instance_destroy(oPauseMenu);
			
			if(instance_exists(oOptionsMenu)){
				instance_destroy(oOptionsMenu);
			}
			
			if(instance_exists(oVolumeMenu)){
				instance_destroy(oVolumeMenu);
				SaveConfig();
			}
			
			if(instance_exists(oKeybindMenu)){
				instance_destroy(oKeybindMenu);
				SaveConfig();
			}
			
			if(instance_exists(oControllerMenu)){
				instance_destroy(oControllerMenu);
			}
			
			if(room == rLevel3_boss && instance_exists(oPlayer)){
				with(oPlayer){
					path_speed = 10;	
				}
			}
			
			if(instance_exists(oFlyingDwarfHorisontal)){
				with(oFlyingDwarfHorisontal){
					path_speed = 1;	
				}
			}
			
			if(instance_exists(oFlyingDwarfVertical)){
				with(oFlyingDwarfVertical){
					path_speed = 1;	
				}
			}
			
			
			try{
				with(all)
				{
					image_speed = gamePausedImageSpeed;
				}
							
				
				audio_resume_all();
			}
			
			catch(_exception){
				with(all)
				{
					image_speed = 1;
				}
			}
			
			finally{
				audio_play_sound(snPauseGame,100,false);
			}
			
			
			
		}
}

else if(global.dialoguePauseToggle){
	global.dialoguePauseToggle = false
	if(!global.gamePaused){
		global.gamePaused = true;
		
		
		with(all)
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else{
		try{
			with(all)
			{
				image_speed = gamePausedImageSpeed;
			}
		}
		
		catch(_exception){
			with(all)
			{
				image_speed = 1;
			}
		}
		
		finally{
			global.gamePaused = false;
		}
		
	}
	
}

