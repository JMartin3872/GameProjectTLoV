/// @description Timesource, spawning smoke

//Create a flag which represent the room the object spawns in.
currentRoom = room;

respawn = time_source_create(time_source_game, respawn_time, time_source_units_seconds, function()
		{
			//If layer exists, create smoke particle
			if(layer_exists("Instances")){
				repeat(amount_of_smoke){
					with(instance_create_layer(x + random_range(-spread_of_smoke_x, spread_of_smoke_x), y+ random_range(-spread_of_smoke_y, spread_of_smoke_y), "Instances", oSmoke)){
						vSpeed = other.smoke_rise_speed;
						image_xscale = choose(other.size_of_smoke, -other.size_of_smoke);
						image_yscale = choose(other.size_of_smoke, -other.size_of_smoke);
					}
				}
			}
			
			//Repeat timesource if we are in the same room.
			if(room == currentRoom){
				time_source_reset(respawn);
				time_source_start(respawn);
			}
		}		
);

//Start timesource.
time_source_start(respawn);

