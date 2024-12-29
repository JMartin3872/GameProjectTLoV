/// @description Autosave, hide cursor
#macro SAVEFILE "Save.sav" // Macro (which have special syntax) for creating our savefile
#macro CONFIGFILE "Config.conf" // Macro (which have special syntax) for creating our savefile

//Overwrite old save
if(room != rIntroCinematic && room != rMenu && room != rEnd){
	AutoSave();
}

//Prevents hitstun from being active when a room restarts
global.hitstun = false;

window_set_cursor(cr_none);