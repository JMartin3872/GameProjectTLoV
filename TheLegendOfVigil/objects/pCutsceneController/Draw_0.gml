/// @description Print text and draw bars

draw_set_color(c_black);
draw_rectangle(0, camera_get_view_y(view_camera[0]), display_get_gui_width(), camera_get_view_y(view_camera[0]) + 64, false);
draw_rectangle(0, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 64, display_get_gui_width(), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]), false);

DrawSetText(c_black, fSign, fa_center, fa_top);
draw_text((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2) + 2, (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/4) + 2, text);

draw_set_color(c_white);
draw_text((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/4), text);



