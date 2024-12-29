/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Shoot! Another dead end.", "Vigil", noone, true, 0.2, 0.2],
	[oPlayer, "There is no way I can get up this way...", "Vigil", noone, true, 0.2, 0.2],
	[oPlayer, "And speaking of, it seems I can't \nget back out of this pit either.", "Vigil", sd2_7_0, true, 0.2, 0.2],
	[inst_31EE8E48, "Aha! I got you now, foul beast!!!", "???", noone, false, 0.2, 0.2],
	[oPlayer, "???", "Vigil", sd2_7_1, true, 0.2, 0.2],
	[oPlayer, "Vidur!?", "Vigil", sd2_7_2, true, 0.2, 0.2],
	[oVidur, "Oh, it's you Vigil, I didn't expect \nto meet you down here.", "Vidur", noone, true, 0.2, 0.2],
	[oVidur, "What brings you here?", "Vidur", noone, true, 0.2, 0.2],
	[oPlayer, "Long story short, I was on my way to the \nvillage and fell down a hole...", "Vigil", noone, true, 0.2, 0.2],
	[oVidur, "I see, it can happen to the best of us.", "Vidur", noone, true, 0.2, 0.2],
	[oVidur, "You haven't happened to meet a large \nterrifying monster down here?", "Vidur", noone, true, 0.2, 0.2],
	[oVidur, "I think it is the same kind of beast we met \nin the giant's igloo a long time ago.", "Vidur", noone, true, 0.2, 0.2],
	[oPlayer, "Sadly I haven't. How come you are looking for it?", "Vigil", noone, true, 0.2, 0.2],
	[oVidur, "Recently we started having frequent \nearthquakes near my village.", "Vidur", noone, true, 0.2, 0.2],
	[oVidur, "They must have disturbed the beast because soon after the beast\nstarted to become more active and terrorize the village.", "Vidur", noone, true, 0.2, 0.2],
	[oPlayer, "Sound rough.", "Vigil", noone, true, 0.2, 0.2],
	[oPlayer, "I am trying to find my way out of this cave and would keep \nmy eyes open for it but now I am stuck in this pit.", "Vigil", noone, true, 0.2, 0.2],
	[oVidur, "Stuck you say? Well then, take my old \nclimbing gear and get out of this place!", "Vidur", noone, true, 0.2, 0.2],
	[oPlayer, "Thanks Vidur, you are a life saver!", "Vigil", sd2_7_3, true, 0.2, 0.2],
	[oVidur, "Always happy to help a friend in need.", "Vidur", noone, true, 0.2, 0.2],
	[oVidur, "Well I better continue my search.", "Vidur", sd2_7_4, true, 0.2, 0.2],
	[inst_2C2B0E6D, "Take care Vigil!", "Vidur", sd2_7_5, false, 0.2, 0.2],
	
	
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd2_7_6;
my_dialogue_list = global.dialogues_level2;
my_dialogue_list_index = 3;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
	
	else{
		instance_destroy(oPowerUpClimb);	
	}
}