/// @description ?
function EnemyStateDeath(){
	with(instance_create_layer(x, y, layer, objectDeath))
	{
		if(instance_exists(oPlayer))
		{
			
			direction = other.hitFrom;
			
			hSpeed = lengthdir_x(3 * sign(oPlayer.image_xscale), direction);
			vSpeed = lengthdir_y(3, direction) - 3;
		}
		
		
		
		if (sign(hSpeed != 0))
		{
			image_xscale = sign(hSpeed) * other.size;
			image_yscale = other.size;
		}
	}
	
	

	if(myCrossbow != noone){
		with(myCrossbow){
			instance_change(oeCrossBowDead, true);
		}
	}
	
	audio_play_sound(soundDeath, 10, false);
	
	instance_destroy();	

}