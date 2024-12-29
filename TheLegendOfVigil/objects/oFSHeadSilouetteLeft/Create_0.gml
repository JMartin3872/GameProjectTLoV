/// @description Create bodyparts
myBodyList = array_create(numBodyParts-1);
salamanderOwner = self;
image_xscale = -1 * shrinkFactor;
image_yscale = shrinkFactor;

canBeHurt = false;
hurtBuffer = 500*60;

direction = point_direction(x,y,myEndpoint.x,myEndpoint.y);


for(var i = 1; i <= numBodyParts; i++){
	
	//Creating bodyparts and putting them in a list (if we want to destroy them later?)
	if(i < numBodyParts){
		with(instance_create_layer(x - sign(image_xscale) * i * (96 * shrinkFactor),y, layer,oFSBodyPartSilouette)){
			other.myBodyList[i -1] = self;
			salamanderOwner = other;
			image_index = (i-1)%image_number;
			image_xscale = salamanderOwner.image_xscale;
			image_yscale = salamanderOwner.image_yscale;
		}
		
	}
	
	//Creating and assigning a tail.
	else{
		with(instance_create_layer(x - sign(image_xscale) * i * (96 * shrinkFactor),y, layer,oFSTailSilouette)){
			other.myTail = self;
			salamanderOwner = other;
			image_xscale = salamanderOwner.image_xscale;
			image_yscale = salamanderOwner.image_yscale;
		}
		
	}
	
}
