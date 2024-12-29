/// @description

//Movementspeed every step. 
//Image_index is used to make the particles move further ahead the longer the animation has elapsed.
//Also code to remove particles if oPlayer ceases to exist, if dying for example.
if(instance_exists(oPlayer))
{
	x = oPlayer.x + sign(oPlayer.image_xscale) * (30 + (image_index * 2))
}

else 
{
	instance_destroy();
}

hSpeed *= 0.9;
vSpeed *= 0.9;
