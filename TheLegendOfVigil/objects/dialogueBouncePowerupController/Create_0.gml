/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Adair gave you the power to bounce!", "Info", ScriptPowerupPauseToggle, false, 1, 1],
	[oPlayer, "Press the \"B\" button while in \nthe air to strike downwards.", "Info", noone, false, 1, 1],
	[oPlayer, "If you hit an enemy or other \"bouncable\" \nobject you will gain some air!", "Info", noone, false, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = ScriptPowerupPauseToggle;