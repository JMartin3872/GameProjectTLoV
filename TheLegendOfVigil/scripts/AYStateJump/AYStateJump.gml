/// @description state while jumping
function AYStateJump(){
	EnemyCollision();
	
	//Change sprite and start jump
	if(sprite_index != sAbominableYetiJumping){
		vSpeed = -5;
		sprite_index = sAbominableYetiJumping
	}
	
	//Else reduce vSpeed
	else{
		vSpeed += grav;	
	}
	
	//If landing, change state.
	if(sprite_index = sAbominableYetiJumping && place_meeting(x, y + vSpeed, oWall)){
		
		while(!place_meeting(x,y+1,oWall)){
			y++;	
		}
		
		audio_play_sound(snAYcrash,20,false);
		state = AYStateLanded;		
	}	
}