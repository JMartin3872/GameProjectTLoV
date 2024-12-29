// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd3_Boss_Start(){
	audio_play_sound(mBoss3, 1000, true);
	global.currentMusic = mBoss3;
	oDoomsdayMachine.started = true;
	
	with(oGateSpawner){
		var gate = instance_create_layer(x,y,"Walls",oGateBlock);
		repeat 10{
			instance_create_layer(x + choose(0, sprite_width),y + choose(0, sprite_height),"Bullets",oDust);
		}
		
	}
	
	audio_play_sound(snPoof,100,false);
	
}