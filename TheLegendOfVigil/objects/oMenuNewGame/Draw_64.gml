/// @description Draw Menu
draw_set_font(menu_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

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

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);

//Draw black outline which hover
draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + 2, camera_get_view_y(view_camera[0]) + 605 + sin(get_timer()/700000) * 5, "This will erase the old save file, continue anyway?", 1, 1, 0);
	
//Draw white text which hover
draw_set_color(c_white);
draw_text_transformed(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2, camera_get_view_y(view_camera[0]) + 600 + sin(get_timer()/700000) * 5, "This will erase the old save file, continue anyway?", 1, 1, 0);
	

