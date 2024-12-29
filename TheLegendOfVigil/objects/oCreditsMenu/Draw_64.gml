

if(!hideMenu){
	/// @description Draw Menu
	draw_set_font(menu_font);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	//Draw blackbox
	draw_set_colour(c_black);
	draw_set_alpha(1);
	draw_rectangle(0,0,gui_width,gui_height,false);
	

	draw_set_alpha(1);
	//for loop to draw the entire menu
	for(var i = 0; i < menu_items; i++)
	{
		var offset = 2;
		var txt = menu[i];
		if (menu_cursor == i)
		{
			txt = string_insert("> ", txt, 0);
			var col = c_gray;
		}
	
		else
		{
			if(i == 14){
				var col = c_yellow;
			}
			
			else{
				var col = c_white;
			}
		}
		var xx = menu_x;
		var yy = menu_y - (menu_itemheight * (i*1.5));
	
		//Create a black outline, not perfect solution.
		draw_set_color(c_black);
		draw_text(xx - offset, yy, txt);
		draw_text(xx + offset, yy, txt);
		draw_text(xx, yy - offset, txt);
		draw_text(xx, yy + offset, txt);
	
		draw_set_color(col);
		draw_text(xx, yy, txt);
	}
}

