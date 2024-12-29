/// @description Hurt player


if(instance_exists(oPlayer) && oPlayer.invulnerable <= 0){
	repeat (10)
	{
		with (instance_create_layer(x + sprite_width/2, y - 15, "Bullets", oDust))
		{
		}
	}
}

HurtPlayer(point_direction(x, y, oPlayer.x, oPlayer.y), point_distance(x, y, oPlayer.x, oPlayer.y), hurtForce, hurtDamage);
