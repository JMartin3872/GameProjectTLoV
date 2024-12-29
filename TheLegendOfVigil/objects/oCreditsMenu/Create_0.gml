/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2;
menu_y = gui_height*0.9;
menu_font = fCredits;
menu_itemheight = font_get_size(fCredits);
menu_comitted = -1;
menu_control = true;

menu[14] = "Credits:"
menu[13] = ""
menu[12] = "Design: Martin Berntsson";
menu[11] = "Programming: Martin Berntsson";
menu[10] = "Art: Martin Berntsson";
menu[9] = "Music: Juhani Junkala, Zane Little";
menu[8] = "Sound: Juhani Junkala, Martin Berntsson";
menu[7] = "";
menu[6] = "Special thanks to Sara Spalding for their platformer tutorial";
menu[5] = "on Youtube which kickstarted this whole thing.";
menu[4] = "";
menu[3] = "Lastly, a very special thanks to my dear friends and adventurers:";
menu[2] = "Anton, Johan, Philip and Sara";
menu[1] = "";
menu[0] = "Back";

menu_items = array_length_1d(menu)

menu_top = menu_y - ((menu_itemheight * 2 ) * menu_items);
menu_width = string_width(menu[4]);  

menu_cursor = 0;

menuCooldown = 0;

hideMenu = false;
