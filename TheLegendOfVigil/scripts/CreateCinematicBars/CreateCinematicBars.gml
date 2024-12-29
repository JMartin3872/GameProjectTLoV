//Used variables are in oCamera
function CreateCinematicBars(){	
	global.barsRemoved = false;
		
	//Draw rectangles
	if(!global.barsDone){
		global.percent = min(1, global.percent + max(((1-global.percent)/10), 0.005)); // Similar code but for growing the borders instead.
	}
	
	//Setting up easier to read variables for camera position.
	var camera_x = camera_get_view_x(view_camera[0]);
	var camera_width = camera_get_view_width(view_camera[0]);
	var camera_y = camera_get_view_y(view_camera[0]);
	var camera_height = camera_get_view_height(view_camera[0]);
	
	//Draw black bars
	draw_set_color(c_black);
	draw_rectangle(camera_x, camera_y, camera_x + camera_width, camera_y + global.percent*bar_height, false);
	draw_rectangle(camera_x, camera_y + camera_height, camera_x + camera_width, camera_y + camera_height - global.percent*bar_height, false);

	//If bars have reached bar_height (percentage = 100%)
	if(global.percent >= 1){
		global.barsDone = true;	
	}
}