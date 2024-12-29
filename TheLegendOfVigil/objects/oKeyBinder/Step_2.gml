/// @description Insert description here
// You can write your code in this editor

if(delay >= 0){
	delay--;	
}

else if(keyboard_check_pressed(vk_anykey) != vk_nokey){
	ds_map_set(global.keyboard_map, target_keybind, keyboard_key);
	audio_play_sound(snMenuMove, 10, false);
	var menu_text = string_join(": ", target_keybind, KeyToString(ds_map_find_value(global.keyboard_map, target_keybind)));
	oKeybindMenu.menu[oKeybindMenu.menu_cursor] = menu_text;
	oKeybindMenu.menu_control = true;
	instance_destroy(self);
}