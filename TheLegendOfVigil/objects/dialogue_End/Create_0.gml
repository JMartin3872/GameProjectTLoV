/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Phew! Made it out in time!", "Vigil", sd_End_0, true, 1, 1],
	[oAdair, "You did it Vigil!", "Adair", noone, true, 1, 1],
	[oEmelda, "Wow, you are not even slightly singed!", "Emelda", noone, true, 1, 1],
	[oVidur, "A truly heroic display of valor!", "Vidur", noone, true, 1, 1],
	[oPlayer, "I think that is the last we will ever see of Brojk!", "Vigil", noone, true, 1, 1],
	[oDialogue_point_End, "So what now?", "Vidur", sd_End_1, false, 0.05, 0.05],
	[oDialogue_point_End, "Well we are all together again for \nthe first time in a long time.", "Adair", noone, false, 0.1, 0.1],
	[oDialogue_point_End, "I still need to get a shiny new jar for \nmy coins if you want to go shopping?", "Vigil", noone, false, 0.1, 0.1],
	[oDialogue_point_End, " Boring! I wanna make something explode!", "Emelda", noone, false, 0.1, 0.1],
	[oDialogue_point_End, "No, let's go on a hunt!", "Vidur", noone, false, 0.1, 0.1],
	[oDialogue_point_End, "Yes, let's hunt for fireweed, I've heard \nthere might be some around here!", "Adair", noone, false, 0.1, 0.1],
	[oDialogue_point_End, "But... I just want to display my collection...", "Vigil", noone, false, 0.1, 0.1],
	[oDialogue_point_End, "And they all finally got to enjoy a well \ndeserved retirement from adventuring.", "Narrator", noone, false, 0.1, 0.1],

];

length = string_length(my_dialogues[currentline][1]);

oPlayer.hascontrol = false;
oPlayer.vSpeed = -10;
oPlayer.externalVSpeed = -5;
audio_play_sound(snJump,30,false);

end_script = sd_End_2;
//my_dialogue_list = noone;
//my_dialogue_list_index = noone;

////destroy self if already seen
//if(my_dialogue_list != noone){
//	if(my_dialogue_list[my_dialogue_list_index] == 1){
//		instance_destroy(self);
//	}
//}