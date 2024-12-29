// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd1_boss_5(){
	oAbominableYetiDead.sprite_index = sAbominableYetiReinforcement;
	with(oAbominableYetiDead){
		if(place_meeting(x,y,oWall)){
			while(place_meeting(x,y,oWall)){
				y--;	
			}	
		}
	}
	audio_play_sound(snEnemyBigDeath,100,false);
	Screenshake(10,120)
	
	var destroy_floor_timer = time_source_create(time_source_game, 120, time_source_units_frames,function(){
		if(room == rLevel1_Boss){
			layer_destroy("Tiles_Destructible");
			layer_destroy_instances("Walls_Destructible");
			oAbominableYetiDead.sprite_index = sAbominableYetiJumping;
		}
	});
	
	time_source_start(destroy_floor_timer);
	
	var end_level_timer = time_source_create(time_source_game, 240, time_source_units_frames,function(){
		global.cleared_stage_1 = true;
		SlideTransition(TRANS_MODE.GOTO, rWorldMap);
	});
	
	time_source_start(end_level_timer);
	
}