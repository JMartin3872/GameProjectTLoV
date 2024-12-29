/// @description ?
function KillPlayer()
{
	with(oPlayer){
		instance_change(oPlayerDead, true);

		direction = point_direction(other.x, other.y, x, y);
		hSpeed = lengthdir_x(6, direction);
		vSpeed = lengthdir_y(4, direction) - 2;

		if (sign(hSpeed) != 0) image_xscale = sign(hSpeed);
	}
}