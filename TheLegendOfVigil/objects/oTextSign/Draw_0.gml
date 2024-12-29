/// @description Draw box and text

h = string_height(text);
w = string_width(text);

//Half the width of the box
var halfw = w * 0.5;

//Drawing the box
draw_set_font(fDialogues);
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - halfw - border, y -h - (border*2), x + halfw + border, y, 15, 15, false);
draw_sprite(sMarker, 0, x, y);
draw_set_alpha(1);

//Draw text
DrawSetText(c_white, fDialogues, fa_center, fa_top);
draw_text(x, y - h - border, text);
