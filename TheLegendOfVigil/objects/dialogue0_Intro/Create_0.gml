/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oDialogue_point_stop_Vigil, "Ahh... home, sweet home.", "Vigil", noone, false, 1, 1],
	[oDialogue_point_stop_Vigil, "Time for some well deserved rest.", "Vigil", noone, false, 1, 1],
	[oDialogue_point_stop_Vigil, "My coin collection is finally complete \nand ready to be displayed.", "Vigil", sd0_Intro_1, false,1,1],
	[oDialogue_point_stop_Vigil, "Nothing like seeing a bunch of \ncurrency gather dust!", "Vigil", noone, false, 1, 1],
	[oDialogue_point_stop_Vigil, "I hope Adair, Vidur and Emelda \nalso gets some rest.", "Vigil", noone, false, 1, 1],
	[oDialogue_point_stop_Vigil, "Defeating a god and saving the world \nis tough work after all...", "Vigil", noone, false, 1, 1],
	[oDialogue_point_stop_Vigil, "!?!?", "Vigil", sd0_Intro_0, false,1,1],
	[oDialogue_point_stop_Vigil, "Nooooo! My coin jar!!", "Vigil", noone, false,1,1],
	[oDialogue_point_stop_Vigil, "What was that tremor?", "Vigil", noone, false,1,1],
	[oDialogue_point_stop_Vigil, "Now I need to get a new jar \nfrom the village.", "Vigil", noone, false,1,1],
	[oDialogue_point_stop_Vigil, "I guess my vacation will have to wait...", "Vigil", noone, false,1,1]
];


length = string_length(my_dialogues[currentline][1]);

end_script = sd0_Intro_2;
//my_dialogue_list = noone;
//my_dialogue_list_index = noone;

//destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_destroy(self);
//	}
//}