/// @description ?

if(!global.gamePaused)
{
 x += lengthdir_x(1, direction);
 
 y += lengthdir_y(1, direction);
 
 destroy_counter--;
 
}


if(destroy_counter < 0){
	instance_destroy();	
}