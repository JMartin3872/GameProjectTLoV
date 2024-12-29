/// @description ?

//hover on place until the item is touched
if(raiseCounter == 0)
{
	y = ystart + sin(get_timer()/500000) * 5;	
}

//if item has been touched, slowly float upwards while "spinning"
else if(!global.gamePaused)
{
	y -= 1.5;
	
	image_xscale = sin(get_timer()/200000)
	repeat(5)
			{
				with (instance_create_layer(pPowerUp.x + random_range(-5,5), pPowerUp.bbox_bottom, "Bullets", oPowerUpParticle))
				{
					
				}
			}
	
	if(raiseCounter == 1)
	{
		instance_destroy();	
	}
	
	raiseCounter--;
	
}
