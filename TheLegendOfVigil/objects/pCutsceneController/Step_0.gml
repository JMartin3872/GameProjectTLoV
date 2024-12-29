/// @description Progress text
/*Progress text if our camera has reached its target, 
	if-statement can be removed to just progress text with buttonpress 
	Without waiting for destination. And remove buttonpress condition below to just
	let text progress freely.
	*/
if(oCameraCutscene.reached_target){
	letters += spd;
	text = string_copy(cutscene_text[currenttext][currentline], 1, floor(letters));
}

//Next line, or next text and camera target or go to next room if text is finished.
if((letters >= length) && (keyboard_check(vk_anykey) || (gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_face3) || gamepad_button_check(0, gp_face4)))){
	
		//if we have progressed past last line of last text, take us to new room.
		if(currentline + 1 >= array_length(cutscene_text[array_length(cutscene_text)-1]) && currenttext + 1 == array_length(cutscene_text) && !instance_exists(next_camera_targets[camera_target_counter])){
			SlideTransition(TRANS_MODE.GOTO, target_room);
		
		}
		
		//Else if we have progressed past last line but not last text
		//Go to next text and camera-position.
		else if(currentline + 1 == array_length(cutscene_text[0]) && !(currenttext + 1 == array_length(cutscene_text)) && instance_exists(next_camera_targets[camera_target_counter])){
		
			oCameraCutscene.follow = next_camera_targets[camera_target_counter];
			oCameraCutscene.reached_target = false;
			camera_target_counter++;
		
			letters = 0;
		
			currentline = 0;
			currenttext++;
			
			text = string_copy(cutscene_text[currenttext][currentline], 1, floor(letters));
		
		}
		
		//Else, go to next Line.
		else{
			currentline++;
			letters = 0;
			length = string_length(cutscene_text[currenttext][currentline]);
		}
}



