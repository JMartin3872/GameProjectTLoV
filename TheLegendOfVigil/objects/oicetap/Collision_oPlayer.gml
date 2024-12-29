/// @description ?
HurtPlayer(point_direction(x, y, oPlayer.x, oPlayer.y), point_distance(x, y, oPlayer.x, oPlayer.y), hurtForce, hurtDamage);

repeat (10)
{
	with (instance_create_layer(x + sprite_width/2, y - 15, "Bullets", oDust))
	{
	}
}

audio_play_sound(snIcecicleCrash, 5, false);

instance_destroy();