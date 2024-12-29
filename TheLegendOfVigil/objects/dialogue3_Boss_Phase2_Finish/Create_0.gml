/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oBrojk, "Again!?", "Brojk", sd3_Boss_SpeedBrojk2, true, 1, 1],
	[oBrojk, "This can't be.", "Brojk", noone, true, 1, 1],
	[oBrojk, "Maximum power to all lasers!!","Brojk", noone, true, 1, 1],
	[oBrojk, "Archers, get to your posts!!!","Brojk", noone, true, 1, 1],
	[oPlayer, "Just one more push!","Vigil", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd3_Boss_Start_Phase3;
//my_dialogue_list = global.dialogues_level2;
//my_dialogue_list_index = 5;

//destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_change(dialogue2_Boss_Replay, true);
//	}
//}