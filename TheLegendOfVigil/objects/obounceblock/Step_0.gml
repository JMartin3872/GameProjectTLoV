/// @description Create new sprite particle

//Create new sparkle
if(createNewShine <= 0 && !global.gamePaused)
{
	repeat(3)
	{
		instance_create_layer(x , y, "Player", oChardalynSparkle);
	}
	
	createNewShine = 25;
	
}

createNewShine--;

if(startShaking && shakeDuration > 0)
{
	if(shakeDuration % 2)
	{
		x = xstart + random_range(-5, 5);
		y = ystart + random_range(-5, 5);
	}
	
	shakeDuration--;
}

if(shakeDuration = 0)
{
	x = xstart;
	y = ystart;
	startShaking = false;
	shakeDuration = 30;
}