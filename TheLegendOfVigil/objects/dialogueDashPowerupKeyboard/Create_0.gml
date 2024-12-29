/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Emelda has taught you the value of speed and power!", "Info", ScriptPowerupPauseToggle, false, 1, 1],
	[oPlayer, string_join("", "Move in any direction and press the \n", KeyToString(ds_map_find_value(global.keyboard_map, "Dash")),
		" key to dash in the desired direction."), "Info", noone, false, 1, 1],
	[oPlayer, "While dashing you can pass through grates.", "Info", noone, false, 1, 1],
	[oPlayer, "In addition you are also immune to \ndamage while dashing.", "Info", noone, false, 1, 1],
	[oPlayer, "If your dash ends while you are travelling through solid \nmateria you will be pushed back outside.", "Info", noone, false, 1, 1],
];

length = string_length(my_dialogues[currentline][1]);

end_script = ScriptPowerupPauseToggle;

