// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ExecuteIntroDialogue(){
	
	//Draw rectangles
	if(!barsDone){
		percent = min(1, percent + max(((1-percent)/10), 0.005)); // Similar code but for growing the borders instead.
	}
	
	//if(!exiting){
	//	CreateCinematicBars();
	//}
	
	//Execute Dialogue and the corresponding script
	//Set target and camera speed
	if(letters == 0){
		target = my_dialogues[currentline][0];
		text = my_dialogues[currentline][1];
		speakerName = my_dialogues[currentline][2];
		oCamera.speed_factor_x = my_dialogues[currentline][5]
		oCamera.speed_factor_x = my_dialogues[currentline][6]
		
		oCamera.follow = target;
		
		if((my_dialogues[currentline][3] != noone) && point_distance(oCamera.x,oCamera.y, oCamera.follow.x, oCamera.follow.y) < oCamera.view_w_half){
			script_execute(my_dialogues[currentline][3]);
		}
		
		
	}
	
	//Progress text if dialogue is within sight of camera
	if(point_distance(oCamera.x,oCamera.y, oCamera.follow.x, oCamera.follow.y) < oCamera.view_w_half){
		letters += spd;
	}
	current_text = string_copy(text,1,floor(letters));
	
	//Flag used to check if a new text line has been loaded and in that case not write out the full line immediately in case we skipped forward to full text.
	var preparing_new_text_line = false;
	
	//Next line
	if(letters >= length && ((gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_space)) || exiting)){
		
		//If we have reached last line of dialogue start to exit
		if(currentline + 1 == array_length(my_dialogues)){
			//Set flag for exiting so we don't have to press A-button more than once.
			if(exiting != true){
				if(script_exists(end_script)){
					script_execute(end_script);
				}
			}
			exiting = true;
		}
		
		//Continue with next line of text.
		else{
			preparing_new_text_line = true;
			currentline++;
			letters = 0;
			length = string_length(my_dialogues[currentline][1]);
		}
	
	}	
	
	//Write out current line immediately if pressing jump button
	if(letters < length && !preparing_new_text_line && (gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_space))){
		letters = length;
		preparing_new_text_line = false;
	}
		
	//Set draw font.
	draw_set_font(fMenu);
	h = string_height(text);
	w = string_width(current_text);
	
	////Draw box
	////Half the width of the box
	//var halfw = w * 0.5;
	
	////Drawing the box for dialogue
	//draw_set_colour(c_black);
	//draw_set_alpha(0.5);
	//draw_roundrect_ext(target.x - halfw - border, target.y - h - (border*2) - sprite_get_height(target.sprite_index), target.x + halfw + border, target.y - sprite_get_height(target.sprite_index), 15, 15, false);
	
	//if(my_dialogues[currentline][4]){
	//	draw_sprite(sMarker, 0, target.x, target.y - sprite_get_height(target.sprite_index));
	//}
	
	
	////Draw the box for speaker name
	//draw_roundrect_ext(target.x - halfw - border, target.y - h - (border*2) - sprite_get_height(target.sprite_index) - font_get_size(fSign), target.x - halfw + border + string_width(speakerName), target.y - sprite_get_height(target.sprite_index) - h - border, 15, 15, false);
	//draw_set_alpha(1);
	
	var offset = 2;

	//Draw box text outline and text
	
	DrawSetText(c_black, fMenu, fa_center, fa_top);
	draw_text(target.x + offset, target.y - h - border - sprite_get_height(target.sprite_index), current_text);
	draw_text(target.x - offset, target.y - h - border - sprite_get_height(target.sprite_index), current_text);
	draw_text(target.x, target.y + offset - h - border - sprite_get_height(target.sprite_index), current_text);
	draw_text(target.x, target.y - offset - h - border - sprite_get_height(target.sprite_index), current_text);
	
	
	
	DrawSetText(c_white, fMenu, fa_center, fa_top);
	draw_text(target.x, target.y - h - border - sprite_get_height(target.sprite_index), current_text);
	
	////Draw name text outline and text
	//DrawSetText(c_black, fDialogues, fa_left, fa_top);
	//draw_text(target.x + offset - halfw, target.y - h - (border*2) - sprite_get_height(target.sprite_index) - font_get_size(fSign), speakerName);
	//draw_text(target.x - offset - halfw, target.y - h - (border*2) - sprite_get_height(target.sprite_index) - font_get_size(fSign), speakerName);
	//draw_text(target.x - halfw, target.y + offset - h - (border*2) - sprite_get_height(target.sprite_index) - font_get_size(fSign), speakerName);
	//draw_text(target.x - halfw, target.y - offset - h - (border*2) - sprite_get_height(target.sprite_index) - font_get_size(fSign), speakerName);
	
	//DrawSetText(c_yellow, fDialogues, fa_left, fa_top);
	//draw_text(target.x - halfw, target.y - h - (border*2) - sprite_get_height(target.sprite_index) - font_get_size(fSign), speakerName);
	
}