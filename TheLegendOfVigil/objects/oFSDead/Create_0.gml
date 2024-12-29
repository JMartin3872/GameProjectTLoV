/// @description Insert description here
// You can write your code in this editor
myBodyList = oFSHead.myBodyList;
numBodyParts = oFSHead.numBodyParts;
myTail = oFSHead.myTail;
x = oFSHead.x;
y = oFSHead.y;
starting_x = x;
starting_y = y;

if(audio_is_playing(snFSBeam)){
	audio_stop_sound(snFSBeam);
}

for(var i = 0; i < numBodyParts - 1; i++){
	
	
	 
	with(myBodyList[i]){
		instance_change(oFSBodyPartDead,true);
		starting_x = x;
		starting_y = y;
	}
	
	
	
	myBodyList[i].countdown = 30 * (numBodyParts - 1 - i);
	
}

with(myTail){
	instance_change(oFSTailDead,true);
	starting_x = x;
	starting_y = y;
}

myTail.countdown = 0;

countdown = numBodyParts * 30;