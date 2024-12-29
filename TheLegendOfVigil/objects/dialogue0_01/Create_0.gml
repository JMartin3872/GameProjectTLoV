/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Finally back at the cabin!", "Vigil", noone, true, 1, 1],
	[oPlayer, "I wonder what caused those yetis to \nwander all the way here?", "Vigil", noone, true, 1, 1],
	[oPlayer, "I suppose I might find out on my way.", "Vigil", noone, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level0;
my_dialogue_list_index = 2;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}