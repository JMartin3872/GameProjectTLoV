/// @description Shaking the individual objects sprite.



if(crumbling && !global.gamePaused){
	if(time_source_get_time_remaining(destroy_timer) > 20){
		if(!(time_source_get_time_remaining(destroy_timer) % 3)){
			if(crumbling_magnitude > 0){
				with(self){
					
					draw_sprite(sprite_index, image_index, x + crumbling_magnitude, y);
					//sprite_set_offset(self.sprite_index, crumbling_magnitude, 0);
					crumbling_magnitude = -crumbling_magnitude;
				}
			}
			
			else{
				with(self){
					draw_sprite(sprite_index, image_index, x - crumbling_magnitude, y);
					
					//sprite_set_offset(self.sprite_index, crumbling_magnitude, 0);
					crumbling_magnitude = -crumbling_magnitude;
				}
			}
			
			crumbling_magnitude *= 0.9;
		}
		
		else{
			with(self){
				draw_sprite(sprite_index, image_index, x, y);
			}
		}
	}
	
	else{
		with(self){
			draw_sprite(sprite_index, image_index, x, y);
		}	
	}
}

else{
	with(self){
		draw_sprite(sprite_index, image_index, x, y);
	}
}