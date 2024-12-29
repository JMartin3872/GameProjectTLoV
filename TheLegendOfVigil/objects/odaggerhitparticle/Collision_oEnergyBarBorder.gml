/// @description ?

//Restore energy
if(global.playerEnergy < global.playerEnergyMax)
{
	global.playerEnergy = min(global.playerEnergy + 0.5, global.playerEnergyMax);	
}


//And destroy
instance_destroy();