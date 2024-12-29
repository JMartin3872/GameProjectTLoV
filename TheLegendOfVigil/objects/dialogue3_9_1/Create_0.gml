/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Aha! Just as I thought!", "Vigil", sd3_9_0, true, 1, 1],
	[oPlayer, "What are you doing here Emelda?", "Vigil", noone, true, 0.2, 0.2],
	[oEmelda, "Oh wow is it really you Vigil!?", "Emelda", noone, true, 0.2, 0.2],
	[oEmelda, "Did you finally accept my invitation \nto go and burn stuff?", "Emelda", noone, true, 0.2, 0.2],
	[oPlayer, "No that's not... Oh well, sure, \nI came here to burn stuff.", "Vigil", noone, true, 0.2, 0.2],
	[oPlayer, "What stuff are you burning?", "Vigil", noone, true, 0.2, 0.2],
	[oEmelda, "All kinds of things but recently it has mostly \nbeen the evil dwarves in the forge!", "Emelda", noone, true, 0.2, 0.2],
	[oPlayer, "You know how to get into the forge!?", "Vigil", noone, true, 0.2, 0.2],
	[oEmelda, "Of course, it is really simple!", "Emelda", noone, true, 0.2, 0.2],
	[oEmelda, "You just have to be very quick and \nturn up the temperature!", "Emelda", sd3_9_1, true, 0.2, 0.2],
	[oEmelda, "If you do that you can easily pass \nthrough grates and stuff!", "Emelda", noone, true, 0.2, 0.2],
	[oPlayer, "Cool! Can you show me?", "Vigil", noone, true, 0.2, 0.2],
	[oEmelda, "Of course, you might want to \nstand back a bit though.", "Emelda", noone, true, 0.2, 0.2],
	[oPlayer, "Don't worry about me!", "Vigil", noone, true, 0.2, 0.2],
	[oEmelda, "Whatever you say, then watch this!", "Emelda", sd3_9_2, true, 0.2, 0.2],
	
	
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd3_9_3;
my_dialogue_list = global.dialogues_level3;
my_dialogue_list_index = 3;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
	
	else{
		instance_destroy(oPowerDash);	
	}
}