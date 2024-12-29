/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < (roomWidth/lineWidth); i++){
	draw_line_width_colour(0 + (i*lineWidth), oCamera.y + oCamera.view_h_half, 0 + (i*lineWidth), (oCamera.y + oCamera.view_h_half - lavaHeight) + sin(get_timer()/lavaRiseSpeed + i/3)*lavaRiseHeight + sin(get_timer()/500000) * 10, lineWidth, bottomColor, topColor);

}