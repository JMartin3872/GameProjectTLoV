/// @description ?
function Get_camera_mid_y(){
	var middle_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
	
	return middle_y;
}