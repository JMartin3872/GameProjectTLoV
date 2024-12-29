/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[oPlayer, "Adair?! I didn't expect to see you here!", "Vigil", sd1_5_0, true, 1, 1],
	[oAdair, "Nice to see you again Vigil.", "Adair", noone, true, 0.1, 0.1],
	[oPlayer, "I thought you travelled back south?", "Vigil", noone, true, 0.1, 0.1],
	[oAdair, "I did but I came back to finish my \nresearch on arctic agriculture.", "Adair", noone, true, 0.1, 0.1],
	[oPlayer, "I see, and how is that going for you?", "Player", noone, true, 0.1, 0.1],
	[oAdair, "Not well Vigil, not well...", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "Just when I managed to get a lemon plant \ngrowing there was a huge tremor.", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "All leaves except one fell off it and now \nI am afraid it won't survive.", "Adair", noone, true, 0.1, 0.1],
	[oPlayer, "That's horrible...", "Vigil", noone, true, 0.1, 0.1],
	[oPlayer, "The tremors are also the reason why I am here, \nI need to get to the village.", "Vigil", noone, true, 0.1, 0.1],
	[oAdair, "Then there will be more hardship \nfor you I am afraid.", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "After the earthquake an avalanche \nblocked the mountain pass.", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "You will have to go through the mines of Mo...", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "I mean, go through the Yetis' habitat\nto get through the pass.", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "The critters around here have told me an \nenourmous Yeti has made its lair there.", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "It supposedly has a coat of fur thick enough \nthat no sword can cut through it.", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "Although I hear he has had issues with \nhair loss on his back recently.", "Adair", noone, true, 0.1, 0.1],
	[oAdair, "Vigil take this power, it will help you on your journey.", "Adair", sd1_5_Powerup, true, 0.1, 0.1],
	[oPlayer, "Thanks Adair!", "Vigil", noone, true, 0.1, 0.1],
	[oAdair, "Don't worry about it and please... \nsave my plants!", "Adair", noone, true, 0.1, 0.1],
];



length = string_length(my_dialogues[currentline][1]);

end_script = noone;
my_dialogue_list = global.dialogues_level1;
my_dialogue_list_index = 3;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_destroy(self);
	}
	
	else{
		instance_destroy(oPowerUpBounce);
	}
}