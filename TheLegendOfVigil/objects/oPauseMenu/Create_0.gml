/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2;
menu_y = gui_height/1.5;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_comitted = -1;
menu_control = true;

menu[6] = "Resume";
menu[5] = "Upgrades";
menu[4] = "Options";
menu[3] = "Restart room";
menu[2] = "World map";
menu[1] = "Main menu";
menu[0] = "Quit game";

menu_items = array_length_1d(menu)

menu_top = menu_y - ((menu_itemheight * 2 ) * menu_items);

menu_cursor = 6;

menuCooldown = 0;

hideMenu = false;
