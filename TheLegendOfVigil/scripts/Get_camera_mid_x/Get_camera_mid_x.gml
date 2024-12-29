/// @description ?
function Get_camera_mid_x(){
	var middle_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
	
	return middle_x;
}