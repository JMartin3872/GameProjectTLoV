/// @description Calling dialogue script

if(start && !exiting){
	ExecuteDialogue();
}

else if(exiting){
	oPlayer.hascontrol = true;
	oCamera.speed_factor_x = 1;
	oCamera.speed_factor_y = 1;
	RemoveCinematicBars(self);
	if(my_dialogue_list != noone){
		my_dialogue_list[my_dialogue_list_index] = 1;
	}
}

else if(approaching){
	CreateCinematicBars();	
}



