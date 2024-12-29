/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Thanks to Vidur you got the power to climb!", "Info", ScriptPowerupPauseToggle, false, 1, 1],
	[oPlayer, string_join("", "Hold ", KeyToString(ds_map_find_value(global.keyboard_map, "Climb")),
		" while you are next to \na wall to hang from it."), "Info", noone, false, 1, 1],
	[oPlayer, "While climbing you can move up, down \nand even jump from the wall!", "Info", noone, false, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = ScriptPowerupPauseToggle;

