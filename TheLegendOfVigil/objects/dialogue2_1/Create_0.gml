/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oDialogue_point, "This place looks huge...", "Vigil", noone, false, 0.2, 0.2],
	[oPlayer, "!?!?", "Vigil", sd2_1_0, true, 1, 1],
	[oPlayer, "More earthquakes?\nI better look into this!", "Vigil", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd2_1_1;
my_dialogue_list = global.dialogues_level2;
my_dialogue_list_index = 1;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}