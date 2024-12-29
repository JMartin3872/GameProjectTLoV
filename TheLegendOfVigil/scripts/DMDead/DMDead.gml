// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DMDead(){
	if(!audio_is_playing(snDoomsdayMachineBroken)){
		audio_play_sound(snDoomsdayMachineBroken,30,true)
	}
	
	if(dustCooldown <= 0){
		repeat 10{
			instance_create_layer(x + random_range(0,64), y + random_range(0, 64),"Bullets",oDust);
		}
		dustCooldown = 30;
	}
	
	else{
		dustCooldown--;	
	}
}