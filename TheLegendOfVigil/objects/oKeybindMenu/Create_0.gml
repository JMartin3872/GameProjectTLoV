/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2;
menu_y = gui_height - gui_margin * 2;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_comitted = -1;
menu_control = true;

menu[13] = "Up: "	+ KeyToString(ds_map_find_value(global.keyboard_map,"Up"));
menu[12] = "Down: " + KeyToString(ds_map_find_value(global.keyboard_map,"Down"));
menu[11] = "Left: " + KeyToString(ds_map_find_value(global.keyboard_map,"Left"));
menu[10]  = "Right: " + KeyToString(ds_map_find_value(global.keyboard_map,"Right"));
menu[9]  = "Jump: " + KeyToString(ds_map_find_value(global.keyboard_map,"Jump"));
menu[8]  = "Attack: " + KeyToString(ds_map_find_value(global.keyboard_map,"Attack"));
menu[7]  = "Ranged attack: " + KeyToString(ds_map_find_value(global.keyboard_map,"Ranged attack"));
menu[6]  = "Horn attack: " + KeyToString(ds_map_find_value(global.keyboard_map,"Horn attack"));
menu[5]  = "Bounce attack: " + KeyToString(ds_map_find_value(global.keyboard_map,"Bounce attack"));
menu[4]  = "Climb: " + KeyToString(ds_map_find_value(global.keyboard_map,"Climb"));
menu[3]  = "Dash: " + KeyToString(ds_map_find_value(global.keyboard_map,"Dash"));
menu[2]  = "Heal: " + KeyToString(ds_map_find_value(global.keyboard_map,"Heal"));
menu[1]  = "Restore defaults";
menu[0]  = "Back";

menu_items = array_length_1d(menu)

menu_top = menu_y - ((menu_itemheight * 2 ) * menu_items);

menu_cursor = 0;

menuCooldown = 0;

hideMenu = false;

go_back = false;
