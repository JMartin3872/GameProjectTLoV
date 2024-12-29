/// @description ?
function EnemyStateDeathFlying(){
	
	repeat (10)
	{
		with (instance_create_layer(x + (sign(image_xscale) * 10), y - 15, "Bullets", oDust))
		{
		}
	}
	
	Screenshake(6, 25);
	
	audio_play_sound(snPoof, 10, false);
	
	instance_destroy();	

}