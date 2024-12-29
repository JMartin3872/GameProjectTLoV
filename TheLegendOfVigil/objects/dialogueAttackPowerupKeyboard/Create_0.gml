/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "You found the \"Borealis Dagger\"!", "Info", ScriptPowerupPauseToggle, false, 1, 1],
	[oPlayer, string_join("", "Press the ", KeyToString(ds_map_find_value(global.keyboard_map, "Attack")) ," key to attack.")
	, "Info", noone, false, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = ScriptPowerupPauseToggle;

