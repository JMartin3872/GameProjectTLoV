/// @description ?

//Create the timer for when the block is destroyed and spawn particles.
destroy_timer = time_source_create(time_source_game, crumbling_time, time_source_units_frames, function()
		{
			
			if(should_respawn && layer_exists("Walls")){
				switch(sprite_get_width(self.sprite_index)/32){
					case 1: instance_create_layer(x, y, "Walls", oBrittleGroundRespawn); break;
					
					case 2: instance_create_layer(x, y, "Walls", oBrittleGroundRespawnMedium); break;
					
					case 3:  instance_create_layer(x, y, "Walls", oBrittleGroundRespawnLarge); break;
				}
			}
			
			
			instance_destroy(self);
			
			
			if(layer_exists("Bullets")){
				repeat (10)
				{
					with (instance_create_layer(x + (sprite_get_width(self.sprite_index) / 2), y + (sprite_get_height(self.sprite_index) / 2), "Bullets", oDust))
					{
					}
				}
			}
		}	

);

