/// @description Insert description here
// You can write your code in this editor

if(!global.gamePaused){
	if(y > ystart){
		instance_destroy(self);
	}
	
	image_yscale = sign(jumpPower);
	y -= jumpPower;
	jumpPower -= grav;
}