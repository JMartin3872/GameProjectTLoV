/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Avalanche... Just like Adair said.", "Vigil", noone, true, 1, 1],
	[oDialogue_point, "The mountain pass is blocked so I will have \nto go through the yeti's lair after all.", "Vigil", noone, false, 0.2, 0.2],
	[oSpawn1, "The entrance looks to be over there.", "Vigil", noone, false, 0.2, 0.2],
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level1;
my_dialogue_list_index = 4;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}