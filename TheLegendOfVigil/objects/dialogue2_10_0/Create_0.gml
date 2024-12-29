/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Still no sign of an exit...", "Vigil", noone, true, 1, 1],
	[oDialogue_point, "This cave system is huge!", "Vigil", noone, false, 1, 1],
	[oDialogue_point, "Roooar!!", "???", sd2_10, false, 1, 1],
	[oDialogue_point, "What is that?", "Vigil", noone, false, 1, 1],
	[oDialogue_point, "Maybe that thing is what has caused the earthquakes?", "Vigil", noone, false, 1, 1],
	[oDialogue_point, "Well, I better get out of here quickly!", "Vigil", noone, false, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level2;
my_dialogue_list_index = 4;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}