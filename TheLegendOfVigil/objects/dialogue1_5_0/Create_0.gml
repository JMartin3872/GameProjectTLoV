/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Another dead end it looks like.", "Vigil", noone, true, 1, 1],
	[inst_1B024A5, "This really isn't my day...", "Vigil", noone, false, 0.2, 0.2],
	[oPlayer, "Hmm... what is that?", "Vigil", noone, false, 0.2, 0.2],
	[oBonfire, "Either the yetis figured out how to start a fire \nor maybe someone else is there?", "Vigil", noone, false, 0.2, 0.2]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level1;
my_dialogue_list_index = 2;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}