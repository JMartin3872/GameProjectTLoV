/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "How do you like that!?", "Vigil", sd3_Boss_Dead, true, 1, 1],
	[oBrojk, "No my precious machine, my precious revenge!", "Brojk", noone, true, 1, 1],
	[oBrojk, "AAAARGHHH!!!", "Brojk", sd1_0_0, true, 1, 1],
	[oPlayer, "Uh oh, seems like the machine is going to blow.", "Vigil", noone, true, 1, 1],
	[inst_6FA2C2B9, "Maybe I can get out over there?", "Vigil", noone, false, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd3_Destroy_Walls_Exit;
//my_dialogue_list = global.dialogues_level2;
//my_dialogue_list_index = 5;

//destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_change(dialogue2_Boss_Replay, true);
//	}
//}