/// @description ?
function FSMoveBodyPart(){
	for(var i = 1; i <= numBodyParts; i++){
	
		//Creating bodyparts and putting them in a list (if we want to destroy them later?)
		if(i < numBodyParts){
			myBodyList[i-1].x = x - (96 * i * sign(hSpeed));
			myBodyList[i-1].y = y + dsin(myBodyList[i-1].x/bodyPartWaveSpeed)*bodyPartWaveHeight;
		
		}
	
		//Creating and assigning a tail.
		else{
			myTail.x = x - (96 * i * sign(hSpeed));
			myTail.y = y + dsin(myTail.x/bodyPartWaveSpeed)*bodyPartWaveHeight;
		}
	}

}