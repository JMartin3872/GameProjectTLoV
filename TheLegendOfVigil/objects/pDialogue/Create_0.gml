/// @description Array of targets, texts and scripts which should execute for the given line. Destroy self if already seen.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Hello, this is a test dialogue.", "Vigil", noone, true, 1, 1],
	[oPlayer, "Pleased to see that it is working.", "Vigil", noone, true, 1, 1],
	[oSign, "Goodbye!", "Mr. Sign", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = noone;
my_dialogue_list_index = noone;

if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}


