/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Oh no!", "Vigil", noone, true, 1, 1],
	[oPlayer, "The bridge leading to the village is broken...", "Vigil", noone, true, 1, 1],
	[oPlayer, "It must have been that earthquake from before.", "Vigil", noone, true, 1, 1],
	[inst_4A2D7B72, "How will i get over to the other side?", "Vigil", noone, false, 0.2, 0.2],
	[inst_766F6972, "Maybe I can find another way around?", "Vigil", noone, false, 0.1, 0.1],
	[oPlayer, "I have no option but to check it out.", "Vigil", noone, true, 0.2, 0.2]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level1;
my_dialogue_list_index = 1;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}