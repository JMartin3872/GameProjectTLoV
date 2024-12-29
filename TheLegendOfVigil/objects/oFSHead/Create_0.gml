/// @description Create bodyparts
myBodyList = array_create(numBodyParts-1);
salamanderOwner = self;


for(var i = 1; i <= numBodyParts; i++){
	
	//Creating bodyparts and putting them in a list (if we want to destroy them later?)
	if(i < numBodyParts){
		with(instance_create_layer(x - i * 96,y,"Enemy",oFSBodyPart)){
			other.myBodyList[i -1] = self;
			salamanderOwner = other;
			image_index = (i-1)%image_number;
		}
		
	}
	
	//Creating and assigning a tail.
	else{
		with(instance_create_layer(x - i * 96,y,"Enemy",oFSTail)){
			other.myTail = self;
			salamanderOwner = other;
		}
		
	}
	
}
