/// @description ?

falling = false;

repeat (10)
{
	with (instance_create_layer(x + sprite_width/2, y + 10, "Bullets", oDust))
	{
	}
}

audio_play_sound(snIcecicleCrash, 5, false);

instance_destroy();