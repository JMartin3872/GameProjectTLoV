// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadConfig(){
	if(file_exists(CONFIGFILE)){
		//Create a new savefile
		var file;
		file = file_text_open_read(CONFIGFILE);
	
		global.volume = file_text_read_real(file);
		audio_master_gain(global.volume);
		
		
		//Keybindings
		ds_map_set(global.keyboard_map,"Up",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Down",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Left",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Right",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Jump",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Climb",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Attack",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Ranged attack",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Horn attack",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Bounce attack",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Dash",file_text_read_real(file));
		ds_map_set(global.keyboard_map,"Heal",file_text_read_real(file));
		
		
		
		file_text_close(file);
	}
}