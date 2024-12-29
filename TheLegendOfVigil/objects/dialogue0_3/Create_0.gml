/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "There it is, my trusty \"Borealis Dagger\"!", "Vigil", noone, true, 1, 1],
	[oPlayer, "Uh oh, that looks like trouble", "Vigil", sd0_3_1, true, 1, 1],
	[oPlayer, "I wonder why there are yetis here?", "Vigil", noone, true, 1, 1],
	[oPlayer, "Guess I have to take care of them.", "Vigil", noone, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level0;
my_dialogue_list_index = 1;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		with(oeYetiWalking){
			startedMoving = true;
		}
		instance_destroy(self);
	}
}