/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false)];

my_dialogue_point = instance_create_layer(Get_camera_mid_x(), Get_camera_mid_y(),"Entities", oDialogue_point);

my_dialogues = [
	[my_dialogue_point, "You have found one of the \ncoveted copper coins!", "Info", ScriptPowerupPauseToggle, false, 1, 1],
	[my_dialogue_point, "Use these to acquire different \nabilites in the upgrade menu", "Info", noone, false, 1, 1]
];

length = string_length(my_dialogues[currentline][1]);

end_script = ScriptPowerupPauseToggle;