/// @description Insert description here
// You can write your code in this editor
if(started && !global.gamePaused){
	if(destroyTimer <= 0){
		audio_play_sound(snPoof,100,false);
		repeat 10{
			instance_create_layer(x + choose(0, sprite_width),y + choose(0, sprite_height),"Bullets",oDust);
		}
		
		instance_destroy(self);
	}
	
	else{
		destroyTimer--;
	}
}