/// @description ?
function FSUpdateBodyTailAttack(){
	for(var i = 1; i < numBodyParts; i++){
			myBodyList[i-1].image_xscale = myTail.image_xscale;
			
			switch(mySpawnpoint){
				case 0:{
					myBodyList[i-1].x = myTail.x + ((96 + (abs(myTail.x - mySpawnManager.spawn0.x)/25)) * i * sign(myTail.image_xscale));
				}
				
				case 1:{
					myBodyList[i-1].x = myTail.x + ((96 + (abs(myTail.x - mySpawnManager.spawn1.x)/25)) * i * sign(myTail.image_xscale));
				}
				
				case 2:{
					myBodyList[i-1].x = myTail.x + ((96 + (abs(myTail.x - mySpawnManager.spawn2.x)/25)) * i * sign(myTail.image_xscale));
				}
				
				case 3:{
					myBodyList[i-1].x = myTail.x + ((96 + (abs(myTail.x - mySpawnManager.spawn3.x)/25)) * i * sign(myTail.image_xscale));
				}
			}
			
			myBodyList[i-1].y = myTail.y;
	}
}