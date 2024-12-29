/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2;
menu_y = gui_height*0.75;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_comitted = -1;
menu_control = true;

menu[9] = "Xbox-Controller:"
menu[8] = "Jump = A-button";
menu[7] = "Attack = X-button";
menu[6] = "Ranged Attack = LB";
menu[5] = "Horn Attack = LT";
menu[4] = "Bounce Attack = B-button";
menu[3] = "Climb = RT";
menu[2] = "Dash = RB";
menu[1] = "Heal = Y-button";
menu[0] = "Back";

menu_items = array_length_1d(menu)

menu_top = menu_y - ((menu_itemheight * 2 ) * menu_items);
menu_width = string_width(menu[4]);  

menu_cursor = 0;

menuCooldown = 0;

hideMenu = false;

go_back = false;
