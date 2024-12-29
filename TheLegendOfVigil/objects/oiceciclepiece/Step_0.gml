/// @description ?

switch(image_index){
	case 0:
		x += lengthdir_x(0.5, direction);
		y += lengthdir_y(-0.5, direction);
		break;
	
	case 1:
		x += lengthdir_x(0.5, direction);
		y += lengthdir_y(0.5, direction);
		break;
	
	case 2:
		x += lengthdir_x(0, direction);
		y += lengthdir_y(-1, direction);
		break;
	
	case 3:
		x += lengthdir_x(-0.5, direction);
		y += lengthdir_y(-0.5, direction);
		break;
	
	case 4:
		x += lengthdir_x(-0.5, direction);
		y += lengthdir_y(0.5, direction);
		break;
}

if(destroyCountdown == 0){
	instance_destroy();
}

destroyCountdown--;