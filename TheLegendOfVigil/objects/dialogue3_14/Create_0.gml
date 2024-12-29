/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Uh oh!", "Vigil", sd1_0_0, true, 1, 1],
	[oPlayer, "This is bad.", "Vigil", noone, true, 1, 1],
	[oPlayer, "The lava is rising.", "Vigil", noone, true, 1, 1],
	[oPlayer, "Seems like that geothermal energy Brojk was \ntalking about needs to be released.", "Vigil", noone, true, 1, 1],
	[oPlayer, "Well I'm not going to be here when that happens!", "Vigil", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd3_14_Auto_Camera;
//my_dialogue_list = global.dialogues_level3;
//my_dialogue_list_index = 2;

////destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_destroy(self);
//	}
//}