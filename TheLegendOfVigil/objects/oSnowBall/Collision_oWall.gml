/// @description ?
repeat (10)
{
	with (instance_create_layer(x, y, "Bullets", oDust))
	{
	}
}

audio_play_sound(snPoof, 5, false);

instance_destroy();