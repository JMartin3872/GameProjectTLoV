/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Time for a rematch?", "Vigil", noone, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = ScriptBoss1Replay;