// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd2_Boss_Dead_2(){
	
	Screenshake(10,60);
	audio_play_sound(snPoof,100,false,1,0,0.5,1);
	
	
	with(instance_create_layer(oBossDoorSpawnLocation.x, oBossDoorSpawnLocation.y, "Entities", oLevelEndDoor)){
	
		my_target = rLevel2_14;
		set_spawn = 0;
		
		repeat(20){
			instance_create_layer(x + random_range(0, sprite_width),y + random_range(0, sprite_width), "Bullets", oDust);
		}
	}
}