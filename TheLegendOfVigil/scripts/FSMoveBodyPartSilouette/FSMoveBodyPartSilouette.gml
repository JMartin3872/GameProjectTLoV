// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FSMoveBodyPartSilouette(){
	for(var i = 1; i <= numBodyParts; i++){
	
		
		if(i < numBodyParts){
			myBodyList[i-1].x = x - ((96 * shrinkFactor) * i * sign(image_xscale));
			myBodyList[i-1].y = y + dsin(myBodyList[i-1].x/bodyPartWaveSpeed)*(bodyPartWaveHeight*shrinkFactor);
		
		}
	
		
		else{
			myTail.x = x - ((96 * shrinkFactor) * i * sign(image_xscale));
			myTail.y = y + dsin(myTail.x/bodyPartWaveSpeed)*(bodyPartWaveHeight*shrinkFactor);
		}
	}
}