/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Now what is this?", "Vigil", noone, true, 1, 1],
	[oPlayer, "Well seems I ended up in the creatures' lair...", "Vigil", sd2_Boss_0, true, 1, 1],
	[oPlayer, "Time to deal with you!", "Vigil", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd2_Boss_1;
my_dialogue_list = global.dialogues_level2;
my_dialogue_list_index = 5;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_change(dialogue2_Boss_Replay, true);
	}
}