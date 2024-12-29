/// @description Insert description here
// You can write your code in this editor

if(!global.gamePaused){
	if(x < xstart){
		instance_change(oEmelda,true);
		instance_create_layer(oPlayer.x,oPlayer.y,"Entities",dialogue3_9_2);
	}
	
	image_yscale = sign(jumpPower);
	x += jumpPower;
	jumpPower -= grav;
	
	
}