/// @description Sets canBeHurt to false and waits until all Angry Yeti are dead.
function AYStateInvulnerable(){
	
	if(sprite_index != sAbominableYetiInvulnerable){
		sprite_index = sAbominableYetiInvulnerable;
		canBeHurt = false;
		returnXPosAfterReinforcement = 0;
		
		while(!place_meeting(x + sign(image_xscale), y, oWall)){
				x -= sign(image_xscale); 	
				returnXPosAfterReinforcement += 1;
		}
	}
	
	
	if(!instance_exists(oeYetiAngry)){
		x += sign(image_xscale)*returnXPosAfterReinforcement
		state = AYStateController;	
	}
}