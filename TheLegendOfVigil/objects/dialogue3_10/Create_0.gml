/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "So many captive Yetis.", "Vigil", noone, true, 1, 1],
	[oPlayer, "No wonder they were all so \naggressive back near the village.", "Vigil", noone, true, 1, 1],
	[oPlayer, "I forgot to ask Emelda about it but \nwhoever is doing this will pay!", "Vigil", noone, true, 1, 1],
	[oPlayer, "Whoah!!!", "Vigil", sd3_10_0, true, 1, 1],
	[oPlayer, "The cause of these tremors are \njust around the corner!", "Vigil", noone, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level3;
my_dialogue_list_index = 4;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
}