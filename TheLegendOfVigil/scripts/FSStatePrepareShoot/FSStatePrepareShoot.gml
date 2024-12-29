/// @description ?
function FSStatePrepareShoot(){
	if(sprite_index != sFSPrepareShoot){
		sprite_index = sFSPrepareShoot;
		
		if(shotsLeft == numberOfShots){
			countdown = shootChargeTime;
		}
		
		else{
			countdown = shootChargeTime/2;
		}
		
		mySpawnpoint = irandom_range(0, 6);
		
		switch(mySpawnpoint){
			case 0:{
				x = mySpawnManager.spawn0.x;
				y = mySpawnManager.spawn0.y;
				image_xscale = 1;
				image_yscale = 1;
				image_angle = 0;
				for(var i = 0; i < numBodyParts-1; i++){
					myBodyList[i].image_angle = 0;	
				}
				break;
			}
			
			case 1:{
				x = mySpawnManager.spawn1.x;
				y = mySpawnManager.spawn1.y;
				image_xscale = -1;
				image_yscale = 1;
				image_angle = 0;
				
				for(var i = 0; i < numBodyParts-1; i++){
					myBodyList[i].image_angle = 0;	
				}
				
				break;
			}
			
			case 2:{
				x = mySpawnManager.spawn2.x;
				y = mySpawnManager.spawn2.y;
				image_xscale = 1;
				image_yscale = 1;
				image_angle = 0;
				
				for(var i = 0; i < numBodyParts-1; i++){
					myBodyList[i].image_angle = 0;	
				}
				
				break;
			}
			
			case 3:{
				x = mySpawnManager.spawn3.x;
				y = mySpawnManager.spawn3.y;
				image_xscale = -1;
				image_yscale = 1;
				image_angle = 0;
				
				for(var i = 0; i < numBodyParts-1; i++){
					myBodyList[i].image_angle = 0;	
				}
				
				break;
			}
			
			case 4:{
				x = mySpawnManager.spawn4.x;
				y = mySpawnManager.spawn4.y;
				image_xscale = 1;
				image_yscale = 1;
				image_angle = 0;
				for(var i = 0; i < numBodyParts-1; i++){
					myBodyList[i].image_angle = 90;	
				}
				break;
			}
			
			case 5:{
				x = mySpawnManager.spawn5.x;
				y = mySpawnManager.spawn5.y;
				image_xscale = 1;
				image_yscale = -1;
				image_angle = 364;
				for(var i = 0; i < numBodyParts-1; i++){
					myBodyList[i].image_angle = 90;	
				}
				break;
			}
			
			case 6:{
				x = mySpawnManager.spawn6.x;
				y = mySpawnManager.spawn6.y;
				image_xscale = 1;
				image_yscale = -1;
				image_angle = 180;
				for(var i = 0; i < numBodyParts-1; i++){
					myBodyList[i].image_angle = 90;	
				}
				break;
			}
		}
		
		if(shotsLeft == 0){
			shotsLeft = numberOfShots;	
		}
		
		FSUpdateBodyPosition();
	}	

	switch(mySpawnpoint){
		case 0:{
			if(mySpawnManager.spawn0.x + 128 < oFSHead.x){
				if(countdown == 0){
					lastState = FSStatePrepareShoot;
					state = FSStateShoot;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				x += enterHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			if(instance_exists(oPlayer)){
				image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
			}
			
			break;
		}
		
		case 1:{
			if(mySpawnManager.spawn1.x - 128 > oFSHead.x){
				if(countdown == 0){
					lastState = FSStatePrepareShoot;
					state = FSStateShoot;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				x -= enterHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			if(instance_exists(oPlayer)){
				image_angle = point_direction(oPlayer.x, oPlayer.y, x, y);
			}
			
			break;
		}
		
		case 2:{
			if(mySpawnManager.spawn2.x + 128 < oFSHead.x){
				if(countdown == 0){
					lastState = FSStatePrepareShoot;
					state = FSStateShoot;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				x += enterHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			if(instance_exists(oPlayer)){
				image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
			}
			
			break;
		}
		
		case 3:{
			if(mySpawnManager.spawn3.x - 128 > oFSHead.x){
				if(countdown == 0){
					lastState = FSStatePrepareShoot;
					state = FSStateShoot;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				x -= enterHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			if(instance_exists(oPlayer)){
				image_angle = point_direction(oPlayer.x, oPlayer.y, x, y);
			}
			
			break;
		}
		
		case 4:{
			if(mySpawnManager.spawn4.y - 128 > oFSHead.y){
				if(countdown == 0){
					lastState = FSStatePrepareShoot;
					state = FSStateShoot;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				y -= enterHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			if(instance_exists(oPlayer)){
				image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
				
				if(image_angle > 90 && image_angle < 275){
					image_yscale = -1;	
				}
				
				else{
					image_yscale = 1;	
				}
			}
			
			break;
		}
			
		case 5:{
			if(mySpawnManager.spawn5.y + 128 < oFSHead.y){
				if(countdown == 0){
					lastState = FSStatePrepareShoot;
					state = FSStateShoot;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				y += enterHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			if(instance_exists(oPlayer)){
				image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
			}
			
			break;
		}
			
		case 6:{
			if(mySpawnManager.spawn6.y + 128 < oFSHead.y){
				if(countdown == 0){
					lastState = FSStatePrepareShoot;
					state = FSStateShoot;
				}
				
				else{
					countdown--;	
				}
			}
			
			else{
				y += enterHoleSpeed * 2;
				FSUpdateBodyPosition();
			}
			
			if(instance_exists(oPlayer)){
				image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
			}
			
			break;
		}
	}
}