/// @description Insert description here
// You can write your code in this editor
text = ["This game automatically saves whenever you enter a new room.", "", "Press \"F5\" to toggle fullscreen."];
my_font = fMenu;

text_height = font_get_size(my_font);

timer = time_source_create(time_source_game,15,time_source_units_seconds, function(){
		SlideTransition(TRANS_MODE.GOTO, next_room);
});

time_source_start(timer);