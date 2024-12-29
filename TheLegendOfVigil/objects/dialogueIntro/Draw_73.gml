/// @description Calling dialogue script, removing bars and set cutscene to have been seen in globals

if(start && !exiting){
	ExecuteIntroDialogue();
}

else if(exiting){
	oCamera.speed_factor_x = 1;
	oCamera.speed_factor_y = 1;
	RemoveCinematicBars(self);
	if(my_dialogue_list != noone){
		my_dialogue_list[my_dialogue_list_index] = 1;
	}
}