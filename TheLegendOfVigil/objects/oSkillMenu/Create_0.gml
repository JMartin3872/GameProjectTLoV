/// @description ?

#macro MENU_SLOTS 9
rowLength = 3;
rows = 3
columns = 3

randomize();


skillMenuControl = true;


myCursor = instance_create_layer(x,y + 36,"UI_Top",oSkillMenuCursor);
myCursorCounter = 0;
cursorMove = false;
moveCooldown = 0;

target = global.skill_menu[myCursorCounter];
