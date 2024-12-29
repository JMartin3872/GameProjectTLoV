// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd_End_2(){
	instance_create_layer(oDialogue_point_End.x, oDialogue_point_End.y,"Entities",oTheEnd);
	
	end_timer = time_source_create(time_source_game,20,time_source_units_seconds, function(){
		SlideTransition(TRANS_MODE.GOTO, rMenu);
	}
	);

	time_source_start(end_timer);
}