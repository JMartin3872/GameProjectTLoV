/// @description Hover and spin, creat new sparkles

//Hover and Spin
if(!global.gamePaused){
	y = ystart + sin(get_timer()/500000) * 5;
	image_xscale = sin(get_timer()/(500000 * spinSpeed));
}

//Countdown for destruction
if(destroyCooldownStart && !global.gamePaused)
{
	destroyCooldown--;	
}

if(destroyCooldown <= 0)
{
	if(instance_exists(oPlayer)){
		global.coins++;
		my_coin_list[my_coin_list_index] = 1;
	}
	instance_destroy();	
}


//Create new sparkle
if(createNewShine <= 0 && !global.gamePaused)
{
	repeat(3)
	{
		instance_create_layer(x , y, "Player", oGoldenShineParticle);
	}
	
	createNewShine = 25;
	
}

createNewShine--;