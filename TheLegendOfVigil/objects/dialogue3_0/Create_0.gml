/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "The old dwarven fortress...", "Vigil", noone, true, 1, 1],
	[oPlayer, "So it all leads back here?", "Vigil", noone, true, 1, 1],
	[oPlayer, "Feels like a life time ago since we managed to defeat the \ndwarven warlord who ruled over this place.", "Vigil", noone, true, 1, 1],
	[oPlayer, "Again!?", "Vigil", sd3_0_0, true, 1, 1],
	[oPlayer, "This is definitely the place the tremors are coming from!", "Vigil", noone, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level3;
my_dialogue_list_index = 0;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}