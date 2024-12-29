/// @description Draw coin counter.


if(room != rMenu && room != rWorldMap && instance_exists(oPlayer)){
	DrawSetText(c_black, fMenu, fa_left, fa_top);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + 896, camera_get_view_y(view_camera[0]) + 12, "X " + string(global.coins), 0.5, 0.5, 0);
	draw_set_color(c_white);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + 895, camera_get_view_y(view_camera[0]) + 10, "X " + string(global.coins), 0.5, 0.5, 0);
	
	draw_sprite_stretched(sCoin, 0, camera_get_view_x(view_camera[0]) + 850, camera_get_view_y(view_camera[0]) + 12, 32, 32);
}

