/// @description ?

falling = false;

repeat (10)
{
	with (instance_create_layer(x + 3, y + 10, "Bullets", oDust))
	{
	}
}

audio_play_sound(snIcecicleCrash, 5, false);

if(!place_meeting(x,y-32,oBounceBlock)){
	instance_create_layer(x, y-32, "Enemy", oBounceBlock);
}

instance_destroy();