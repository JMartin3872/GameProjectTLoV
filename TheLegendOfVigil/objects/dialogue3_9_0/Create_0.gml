/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Yikes, someone really doesn't like these dwarves!", "Vigil", noone, true, 1, 1],
	[oPlayer, "Guess I'm getting closer to this \"golden menace\".", "Vigil", noone, true, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level3;
my_dialogue_list_index = 2;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		if(global.hasPowerDash){
			instance_destroy(oPowerDash);
		}
		instance_destroy(self);
	}
}