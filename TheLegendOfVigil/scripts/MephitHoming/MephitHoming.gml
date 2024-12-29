// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MephitHoming(){
	
	if(instance_exists(oPlayer)){
		if(x < oPlayer.x){
			image_xscale = 1;
		}
			
		else{
			image_xscale = -1;	
		}
		
		direction = point_direction(x,y,oPlayer.x,oPlayer.y);
	
	}
	
	x += lengthdir_x(walkSpeed, direction);
	y += lengthdir_y(walkSpeed, direction);
	
	
	
}