/// @description DrawSetText(colour, font, halign, valign)

// Allows one line setup of major text drawing vars.
// Requiring all four arguments prevents silly coders from forgetting one.


function DrawSetText(argument0, argument1, argument2, argument3)
{
	draw_set_colour(argument0);
	draw_set_font(argument1);
	draw_set_halign(argument2);
	draw_set_valign(argument3);
}