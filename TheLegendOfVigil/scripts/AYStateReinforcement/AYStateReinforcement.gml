/// @description Set sprite, Summon of Angry yetis occur in animation end event for oAbominable Yeti
function AYStateReinforcement(){
	if(sprite_index != sAbominableYetiReinforcement){
		sprite_index = sAbominableYetiReinforcement;
		image_speed = 1;
		lastState = AYStateReinforcement;
		
		if(place_meeting(x,y,oWall)){
			while(place_meeting(x,y,oWall)){
				y--;	
			}	
		}
		
		
		reinforcement_empty = true;
		instance_create_layer(x,y,"Enemy", oAYRoar);
		Screenshake(10,30);
		audio_play_sound(snEnemyBigDeath,15,false);
		
		
	}
}