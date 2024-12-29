/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2;
menu_y = gui_height/2;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_comitted = -1;
menu_control = true;

menu[3] = "Controller";
menu[2] = "Keyboard keybindings";
menu[1] = "Volume";
menu[0] = "Back";

menu_items = array_length_1d(menu)

menu_top = menu_y - ((menu_itemheight * 2 ) * menu_items);

menu_cursor = 2;

menuCooldown = 0;

hideMenu = false;

go_back = false;
