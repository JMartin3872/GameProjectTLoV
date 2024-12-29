/// @description EnergyBar
if(instance_exists(oPlayer) && room != rMenu && room != rWorldMap)
{
	instance_create_layer(x, y, "UI", oEnergyBarBorder);
	instance_create_layer(x, y, "UI", oEnergyBar);	
}