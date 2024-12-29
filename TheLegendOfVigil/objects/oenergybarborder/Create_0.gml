/// @description Skapas i oPlayer roomstart

image_xscale = 2;

switch(global.playerEnergyMax){
	case 100 :{
		image_yscale = 2;
		break;
	}
	
	case 150 :{
		image_yscale = 2.9;
		break;
	}
	
	case 200 :{
		image_yscale = 3.8;
		break;
	}
}
