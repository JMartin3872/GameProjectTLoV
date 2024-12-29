/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Ouch ouch ouch!", "Vigil", noone, true, 0.2, 0.2],
	[oEmelda, "See, I told you it was easy to do!", "Emelda", noone, true, 0.2, 0.2],
	[oEmelda, "How come you are upside \ndown by the way?", "Emelda", noone, true, 0.2, 0.2],
	[oEmelda, "Oh no, seems like my magic \nis acting up again...", "Emelda", noone, true, 0.2, 0.2],
	[oEmelda, "I feel a bit nauseous...", "Emelda", noone, true, 0.2, 0.2],
	[oEmelda, "Well take this and try it yourself \nusing your own powers!", "Emelda", sd3_9_4, true, 0.2, 0.2],
	[oEmelda, "I'm sure nothing will go wrong.", "Emelda", noone, true, 0.2, 0.2],
	[oEmelda, "In the meantime I'll just try \nto get back to normal.", "Emelda", noone, true, 0.2, 0.2],
	[oPlayer, "Thank you Emelda, seems like we both \nstill have a lot to learn.", "Vigil", noone, true, 0.2, 0.2],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd3_9_5;
//my_dialogue_list = noone;
//my_dialogue_list_index = noone;

////destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_destroy(self);
//	}
//}