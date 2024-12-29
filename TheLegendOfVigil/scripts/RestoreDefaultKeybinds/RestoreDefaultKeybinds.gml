// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RestoreDefaultKeybinds(){
	
	
	ds_map_set(global.keyboard_map, "Up", ord("W"))
	ds_map_set(global.keyboard_map, "Down", ord("S"))
	ds_map_set(global.keyboard_map, "Left", ord("A"))
	ds_map_set(global.keyboard_map, "Right", ord("D"))
	ds_map_set(global.keyboard_map, "Jump", vk_space)
	ds_map_set(global.keyboard_map, "Climb", vk_lcontrol)
	ds_map_set(global.keyboard_map, "Attack", ord("J"))
	ds_map_set(global.keyboard_map, "Ranged attack", ord("H"))
	ds_map_set(global.keyboard_map, "Horn attack", ord("O"))
	ds_map_set(global.keyboard_map, "Bounce attack", ord("K"))
	ds_map_set(global.keyboard_map, "Dash", ord("L"))
	ds_map_set(global.keyboard_map, "Heal", ord("I"))
	
	
	with(oKeybindMenu){
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
	}
}