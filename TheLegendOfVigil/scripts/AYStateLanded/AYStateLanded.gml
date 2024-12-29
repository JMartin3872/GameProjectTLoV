/// @description State for landing
function AYStateLanded(){
	
	EnemyCollision();
	
	//Set sprite, start countdown, screenshake, play sound and spawn icetaps
	if(sprite_index != sAbominableYetiLanded){
	
		sprite_index = sAbominableYetiLanded;
		countdown = landedDelay;
		Screenshake(5,30);
		with(oIceTapChardalynSpawner){
			instance_create_layer(x + random_range(-50,50), y, "Enemy", oIceTapChardalyn);
		}
		
		audio_play_sound(snShaking, 10, false);
	}
		
	//Change state	
	if(countdown <=0 && sprite_index = sAbominableYetiLanded){
		state = AYStateController;	
	}
	
	if(!global.gamePaused){
		countdown--;	
	}
	

}