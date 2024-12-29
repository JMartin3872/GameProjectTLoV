/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "!?!?", "Vigil", sd2_12_2, true, 1, 1],
	[oPlayer, "What was that?", "Vigil", noone, true, 1, 1],
	[oPlayer, "Uh oh, something large is coming...", "Vigil", sd2_12_4, true, 1, 1],
	[oPlayer, "Yikes!", "Vigil", sd2_12_0, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd2_12_1;
//my_dialogue_list = global.dialogues_level1;
//my_dialogue_list_index = 2;

//destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_destroy(self);
//	}
//}