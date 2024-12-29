/// @description ?

//Restore energy
if(global.playerEnergy < 100)
{
	global.playerEnergy += 0.5;	
}

//And destroy
instance_destroy();