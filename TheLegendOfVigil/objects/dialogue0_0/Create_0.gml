/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Shucks! I forgot to take \ncare of this snowpile...", "Vigil", noone, true, 1, 1],
	[oPlayer, "It seems to have \nhardened to solid ice.", "Vigil", noone, true, 1, 1],
	[oPlayer, "I guess I have to go and get my dagger \nif I want to get through here.", "Vigil", noone, true, 1, 1],
	[oPlayer, "I believe I left it somewhere near the\ntraining grounds behind the cabin.", "Vigil", noone, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level0;
my_dialogue_list_index = 0;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}