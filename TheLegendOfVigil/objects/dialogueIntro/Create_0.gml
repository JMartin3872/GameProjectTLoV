/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oDialogue_point, "A long time ago in a certain dale in the far north...", "Vigil", noone, true, 1, 1],
	[oDialogue_point, "A group of four adventurers had quietly \nwithdrawn into a well earned retirement.", "Vigil", noone, false, 1, 1],
	[oDialogue_point, "One of the heroes, a resourceful bounty hunter, looked \nforward to spend his time appreciating his coin collection.", "Vigil", noone, true,1,1],
	[oDialogue_point, "Unbeknownst to him however, his adventuring \ndays wasn't quite over yet.", "Vigil", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sdIntro;
//my_dialogue_list = noone;
//my_dialogue_list_index = noone;

start = true;

////destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_destroy(self);
//	}
//}