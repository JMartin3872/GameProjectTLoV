

if(!hideMenu){
	/// @description Draw Menu
	draw_set_font(menu_font);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	//for loop to draw the entire menu
	for(var i = 0; i < menu_items; i++)
	{
		var offset = 2;
		var txt = menu[i];
		if (menu_cursor == i)
		{
			txt = string_insert("> ", txt, 0);
			var col = c_white;
		}
	
		else
		{
			var col = c_gray;
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

