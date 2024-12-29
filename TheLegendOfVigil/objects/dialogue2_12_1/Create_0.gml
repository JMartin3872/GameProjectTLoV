/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Phew... safe for now it seems!", "Vigil", sd2_12_3, true, 1, 1],
	[oPlayer, "Does not sound like it \nwent far away though...", "Vigil", noone, false, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;

////destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_destroy(self);
//	}
//}