/// @description Insert description here
// You can write your code in this editor
text = 
	["This game was inspired by a Dungeons & Dragons campaign",
	"that me and four friends played over several years.",
	"",
	"The story is intended to be an epilouge to that campaign",
	"and is about the player characters."
	];
	
my_font = fCredits;

margin = 1.5;
text_height = font_get_size(my_font) * margin;

timer = time_source_create(time_source_game,15,time_source_units_seconds, function(){
		room = next_room;
});

time_source_start(timer);