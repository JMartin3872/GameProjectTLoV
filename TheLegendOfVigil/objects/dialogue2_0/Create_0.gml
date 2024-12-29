/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Aaaaaaaaahhh!", "Vigil", noone, true, 1, 1],
	[oPlayer, "Now this is just great...", "Vigil", noone, true, 1, 1],
	[oPlayer, "Where am I?", "Vigil", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level2;
my_dialogue_list_index = 0;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}