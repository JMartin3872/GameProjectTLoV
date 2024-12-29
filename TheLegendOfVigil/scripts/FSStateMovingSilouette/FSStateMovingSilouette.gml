/// @description ?
function FSStateMovingSilouette(){
	
	x += lengthdir_x(movementSpeed,direction);
	y += lengthdir_y(movementSpeed,direction);
	
	FSMoveBodyPartSilouette();
	
	if(place_meeting(x,y,myEndpoint)){
		
		array_foreach(myBodyList,instance_destroy);
		instance_destroy(myTail);
		instance_destroy(self);	
	}
	
	
	
}