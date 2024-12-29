/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Sigh... On the road again.", "Vigil", noone, true, 1, 1],
	[oPlayer, "???", "Vigil", sd1_0_0, true, 1, 1],
	[oPlayer, "Woah! What was that!?", "Vigil", noone, true, 1, 1],
	[oeYetiAngry, "I hope this has nothing to do with that\nreally angry looking yeti over there.", "Vigil", noone, false, 0.2, 0.2],
	[oPlayer, "I better be careful going forwards...", "Vigil", noone, true, 0.2, 0.2]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level1;
my_dialogue_list_index = 0;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}