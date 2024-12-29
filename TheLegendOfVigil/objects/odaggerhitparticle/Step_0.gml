//Also code to remove particles if oPlayer ceases to exist, if dying for example.


//If not done (See animation end) "scatter" from enemy and slow down.
if(!done)
{
	x += lengthdir_x(2, direction) * hSpeed;
	y += lengthdir_y(2, direction) * vSpeed;

	hSpeed *= 0.9;
	vSpeed *= 0.9;
}


//If done, start to travel towards energybar.
else
{
	var energyBarDirection = point_direction(x, y, oEnergyBar.x, oEnergyBar.bbox_bottom - (oEnergyBar.bbox_bottom - oEnergyBar.bbox_top)/2);
	
	
	x += lengthdir_x(hSpeed, energyBarDirection);
	y += lengthdir_y(vSpeed, energyBarDirection);
	
	
	hSpeed = min(hSpeed * 1.1, 10);
	vSpeed = min(hSpeed * 1.1, 10)
}


