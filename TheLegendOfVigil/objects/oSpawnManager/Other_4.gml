/// @description Set spawnpoint player based on global.spawn
// Value of global.spawn is set when player collides when endLevel object or enters a door.
// -1 equals the use of no spawnpoint and player will instead spawn where object is placed in room editor.

if(instance_exists(oPlayer) && global.spawn != -1){
	switch(global.spawn){
		case 0:{
			oPlayer.x = oSpawn0.x;
			oPlayer.y = oSpawn0.y + 8;
			if(oSpawn0.facingRight){
				oPlayer.image_xscale = 1;
			}
			
			else{
				oPlayer.image_xscale = -1;
			}
			
			//Start camera at player if camera is following player
			if(oCamera.follow == oPlayer){
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
			
			break;
		}
		
		case 1:{
			oPlayer.x = oSpawn1.x;
			oPlayer.y = oSpawn1.y + 8;
			if(oSpawn1.facingRight){
				oPlayer.image_xscale = 1;
			}
			
			else{
				oPlayer.image_xscale = -1;
			}
			
			//Start camera at player if camera is following player
			if(oCamera.follow == oPlayer){
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
			break;
		}
		
		case 2:{
			oPlayer.x = oSpawn2.x;
			oPlayer.y = oSpawn2.y + 8;
			if(oSpawn2.facingRight){
				oPlayer.image_xscale = 1;
			}
			
			else{
				oPlayer.image_xscale = -1;
			}
			
			//Start camera at player if camera is following player
			if(oCamera.follow == oPlayer){
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
			break;
		}
		
		case 3:{
			oPlayer.x = oSpawn3.x;
			oPlayer.y = oSpawn3.y + 8;
			if(oSpawn3.facingRight){
				oPlayer.image_xscale = 1;
			}
			
			else{
				oPlayer.image_xscale = -1;
			}
			
			//Start camera at player if camera is following player
			if(oCamera.follow == oPlayer){
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
			break;
		}
		
		case 4:{
			oPlayer.x = oSpawn4.x;
			oPlayer.y = oSpawn4.y + 8;
			if(oSpawn4.facingRight){
				oPlayer.image_xscale = 1;
			}
			
			else{
				oPlayer.image_xscale = -1;
			}
			
			//Start camera at player if camera is following player
			if(oCamera.follow == oPlayer){
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}		
			
			break;
		}
	}
	
	
	
	
}

//Start camera at player if camera is following player
if(instance_exists(oPlayer) && oCamera.follow == oPlayer){
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
}
