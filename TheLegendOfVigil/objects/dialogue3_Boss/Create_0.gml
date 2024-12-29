/// @description Array of targets and texts.

//Create your dialogues information as [target, "text", "NameOfSpeaker", script, sMarker(true/false), speed_factor_camera_x, speed_factor_camera_y];
my_dialogues = [
	[inst_D673CB3, "Well well well, look who decided to join us.", "???", noone, false, 0.2,0.2],
	[inst_D673CB3, "If it isn't Vigil.", "???", noone, false, 0.2, 0.2],
	[oPlayer, "No, that's impossible! You!?", "Vigil", noone, true, 0.2, 0.2],
	[oBrojk, "That's right it's me, Brojk.", "Brojk", noone, true, 0.5,0.1],
	[oBrojk, "Your burnt and tortured prisoner whom you left \nto rot at the top of this very building!", "Brojk", noone, true, 0.1, 0.1],
	[oBrojk, "Since then I've become emperor and had a long \ntime to plan my revenge on you Vigil.", "Brojk", noone, true, 0.1, 0.1],
	[oDoomsdayMachine, "I built this machine to harness the geothermal \nenergies stored beneath the mountain.", "Brojk", noone, false, 0.2, 0.2],
	[oDoomsdayMachine, "I will soon unleash this power on the valley to \ndestroy everything you hold dear!", "Brojk", noone, false, 0.2, 0.2],
	[oBrojk, "Behold!", "Brojk", sd3_Boss_0, false, 0.2, 0.2],
	[oBrojk, "BWHAHAHAHAHAHA","Brojk", noone, true, 0.2, 0.2],
	[oPlayer, "This machine is clearly the cause \nof all the recent ruckus.", "Vigil", noone, true, 0.2, 0.2],
	[oPlayer, "I have to stop it somehow...", "Vigil", noone, true, 0.2, 0.2],
	[oPlayer, "Maybe it will shut down if I \nbreak the control panel?", "Vigil", noone, true, 0.2, 0.2],
	[oPlayer, "Well here goes nothing!", "Vigil", noone, true, 0.2, 0.2],
];

length = string_length(my_dialogues[currentline][1]);

end_script = sd3_Boss_Start;
my_dialogue_list = global.dialogues_level3;
my_dialogue_list_index = 5;

//destroy self if already seen
if(my_dialogue_list != noone){
	if(my_dialogue_list[my_dialogue_list_index] == 1){
		instance_change(dialogue3_Boss_Replay, true);
	}
}