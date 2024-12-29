/// @description Show text
//Whenever jumpkey is pressed within a certain radius we make the text appear.

if(instance_exists(oPlayer)){

	if(point_in_circle(oPlayer.x, oPlayer.y, x, y, distanceDisplayText) && !instance_exists(oTextSign)){
		myTextBubble = instance_create_layer(x, y - 35, layer, oTextSign);
		
		if(oPlayer.controller == 1){ text = controllerText}
		
		else{text = keyboardText}
		
		with (myTextBubble)
		{
			text = other.text;	
			length = string_length(text);
		}
	}
	
	else if(!point_in_circle(oPlayer.x, oPlayer.y, x, y, distanceDisplayText *2) && instance_exists(myTextBubble)){
		instance_destroy(myTextBubble);
	}
}

