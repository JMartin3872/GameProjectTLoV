/// @description Insert description here
// You can write your code in this editor
DrawSetText(c_white, my_font, fa_center, fa_top);

for(var i = 0; i < array_length(text); i++){
	draw_text(display_get_gui_width()/2, display_get_gui_height()/3 + i * text_height, text[i])
}