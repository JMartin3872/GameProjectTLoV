/// @description Draw level text

if(!coins_counted){
	coins_collected_in_level = 0;	
}

if(room == rWorldMap && oPlayerWorldMap.reached_target == true){
	
	if(!coins_counted){
		for(i = 0; i < target.max_number_of_coins; i++){
		
			if(target.coins_in_level[i] == 1){
				coins_collected_in_level++;
			}
		}
		
		coins_counted = true;
		
	}
	
	coin_text = string(coins_collected_in_level) + "/" + string(target.max_number_of_coins);
	
	DrawSetText(c_black, fMenu, fa_center, fa_top);
	
	//Draw black outline which hover
	draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 22 + sin(get_timer()/700000) * 5, target.level_text, 0.75, 0.75, 0);
	
	//Draw coin text outline
	draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 72 + sin(get_timer()/700000) * 5 , coin_text, 0.5, 0.5, 0);
	
	//Draw white text which hover
	draw_set_color(c_white);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 20 + sin(get_timer()/700000) * 5, target.level_text, 0.75, 0.75, 0);
	
	//Draw white coin text
	draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 70 + sin(get_timer()/700000) * 5 , coin_text, 0.5, 0.5, 0);
	
	
	//Draw coin sprite.
	draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 40, camera_get_view_y(view_camera[0]) + 75 + sin(get_timer()/700000) * 5, 32, 32);
}

else{
	coins_counted = false;	
}

