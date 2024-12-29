/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Had enough big guy?", "Vigil", sd1_boss_3, true, 1, 1],
	[oAbominableYetiDead, "ROOOAAAR!!!", "Abominable Yeti", sd1_boss_4, true, 1, 1],
	[oPlayer, "Uh oh, thats not good...", "Vigil", sd1_boss_41, true, 1, 1],
	[oPlayer, "No! wait!", "Vigil", sd1_boss_5, true, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = noone;