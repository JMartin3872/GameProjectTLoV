/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "How do you like that!?", "Vigil", noone, true, 1, 1],
	[oPlayer, "One less frosty lizard to worry about.", "Vigil", noone, false, 1, 1],
	[oPlayer, "!?!?", "Vigil", sd2_Boss_Dead_2, true, 1, 1],
	[oPlayer, "Another tremor?", "Vigil", noone, true, 1, 1],
	[oPlayer, "This one felt more powerful than before.", "Vigil", noone, true, 1, 1],
	[oPlayer, "Maybe the lizard wasn't the \ncause of this after all...", "Vigil", noone, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
//my_dialogue_list = global.dialogues_level2;
//my_dialogue_list_index = 5;

//destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_change(dialogue2_Boss_Replay, true);
//	}
//}