/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Finally back outside!", "Vigil", noone, true, 1, 1],
	[oPlayer, "Seems I am close to the old dwarf fortress.", "Vigil", noone, true, 1, 1],
	[oDialogue_point, "Maybe that is where the tremors are coming from...?", "Vigil", noone, false, 0.2, 0.2],
	[oDialogue_point, "I better investigate.", "Vigil", noone, false, 0.2, 0.2]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level2;
my_dialogue_list_index = 6;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}