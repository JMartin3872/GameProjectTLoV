/// @description Draw black bars
//The "Draw GUI" event draws things to the screen without having to worry about where the camera is. Draws to "THe screen" and not the room.

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0, 0, w, percent*h_half, false);
	draw_rectangle(0, h, w, h - (percent*h_half), false);
}
