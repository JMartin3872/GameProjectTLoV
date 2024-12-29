/// @description Draw Lavaflow

for(var i = 0; i < (roomWidth/lineWidth); i++){
	draw_line_width_colour(i*lineWidth, roomHeight, i*lineWidth, (roomHeight - lavaHeight) + sin(get_timer()/lavaRiseSpeed + i/3)*lavaRiseHeight + sin(get_timer()/500000) * 10, lineWidth, bottomColor, topColor);

}
