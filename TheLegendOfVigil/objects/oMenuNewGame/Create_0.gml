/// @description GUI/Vars/Menu setup


gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; // lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_comitted = -1;
menu_control = true;

menu[1] = "No";
menu[0] = "Yes";

menu_items = array_length_1d(menu)
menu_top = menu_y - ((menu_itemheight * 1.5 ) * menu_items);

menu_cursor = 1;


menuCooldown = 0;

new_game_room_target = oMenu.new_game_room_target;
