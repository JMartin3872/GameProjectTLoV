/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Hello, this is a test dialogue.", "Vigil", noone, true, 1, 1],
	[oPlayer, "It seems to work", "Vigil", ScriptDialogueTest1, false, 1, 1],
	[oPlayer, "Goodbye!", "Vigil", noone, true],
];

length = string_length(my_dialogues[currentline][1]);

end_script = ScriptDialogueTestEnd;
my_dialogue_list = noone;
my_dialogue_list_index = noone;



//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}