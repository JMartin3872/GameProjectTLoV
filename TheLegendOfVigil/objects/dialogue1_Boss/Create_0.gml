/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Uh oh, big angry yeti!", "Vigil", sd1_boss_0, true, 1, 1],
	[oAbominableYeti, "ROOOAAAR!!!", "Abominable Yeti", sd1_boss_01, true, 1, 1],
	[oPlayer, "Here he comes!", "Vigil", sd1_boss_1, false, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd1_boss_2;
my_dialogue_list = global.dialogues_level1;
my_dialogue_list_index = 5;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_change(dialogue1_Boss_Replay, true);
	}
}