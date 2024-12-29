/// @description ?
respawn_timer = time_source_create(time_source_game, respawn_time, time_source_units_seconds, function()
		{
			if(layer_exists("Walls")){
				if(!(place_meeting(x, y, oPlayer))){
				
					instance_create_layer(x, y, "Walls", oBrittleGroundMedium);
				
					instance_destroy();
				}
			
				else{
					time_source_reset(respawn_timer);	
					time_source_start(respawn_timer);
				}
			}
		}	

);


time_source_start(respawn_timer);