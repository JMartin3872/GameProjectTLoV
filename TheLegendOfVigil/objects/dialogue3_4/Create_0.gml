/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Hmm... This is going to be a problem.", "Vigil", noone, true, 1, 1],
	[inst_7273543, "Seems like some of the dwarves have\nreturned to the fortress.", "Vigil", noone, false, 0.3, 0.3],
	[inst_1A516898, "The gate to the forge is closed and \ncan only be opened from inside.", "Vigil", noone, false, 0.3, 0.3],
	[oPlayer, "The roof also seems heavily guarded.", "Vigil", noone, false, 0.3, 0.3],
	[inst_1C73D6B7, "Did you hear about the last squad they sent\nup looking for that \"golden menace\"?", "Dwarf 1", noone, true, 0.2, 0.2],
	[inst_61B81F5E, "Yea, said the whole bunch were found charred to the bone...", "Dwarf 2", noone, true, 0.2, 0.2],
	[inst_61B81F5E, "I really hope his majesty won't have \nme join the next search party!", "Dwarf 2", noone, true, 1, 1],
	[oPlayer, "Very interesting. Up they said?", "Vigil", noone, true, 0.2, 0.2]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level3;
my_dialogue_list_index = 1;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}