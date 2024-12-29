/// @description Variable definitions

my_levels = array_create(5);
counter_my_levels = 0;

//Target is set through creation code from objects in room editor, see rWorldMap instance of level 0.
//Make a global variable which is set to the current level and set target to that.

switch(global.currentLevel){
	case 0:{
		target = oStage0;
		counter_my_levels = 0;
		break;
	}
	
	case 1:{
		target = oStage1;
		counter_my_levels = 1;
		break;
	}
	
	case 2:{
		target = oStage2;
		counter_my_levels = 2;
		break;
	}
	
	case 3:{
		target = oStage3;
		counter_my_levels = 3;
		break;
	}
	
	case 4:{
		target = oStage4;
		counter_my_levels = 4;
		break;
	}
}


coins_counted = false;

