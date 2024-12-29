/// @description Unpause the game and set spawn
global.gamePaused = false;

switch(global.currentLevel){
	case 0:{
		x = oStage0.x;
		y = oStage0.y;
		break;
	}
	
	case 1:{
		x = oStage1.x;
		y = oStage1.y;
		break;
	}
	
	case 2:{
		x = oStage2.x;
		y = oStage2.y;
		break;
	}
	
	case 3:{
		x = oStage3.x;
		y = oStage3.y;
		break;
	}
	
	case 4:{
		x = oStage4.x;
		y = oStage4.y;
		break;
	}
}
