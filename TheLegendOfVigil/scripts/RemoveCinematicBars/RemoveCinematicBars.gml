// Destroy cinematic bars and return control to player
function RemoveCinematicBars(argument0){
	
	with(oCamera){
		//If bars still haven't been reduced to 0 continue to reduce bars.
		if(global.barsDone && global.percent > 0){
			global.percent = max(0, global.percent - max((global.percent/10), 0.005)); // Shrinking the percentage of blackbars with percent/10 until it is equal or smaller than 0.005 and the shrinking it by 0.005 until it hits 0.	
		}
		
		else{
			global.barsDone = false;
			global.barsRemoved = true;
			if(!oCamera.automatic){
				oCamera.follow = oPlayer;
			}
			instance_destroy(argument0);
			
		}
		
		//Setting up easier to read variables for camera position.
		var camera_x = camera_get_view_x(view_camera[0]);
		var camera_width = camera_get_view_width(view_camera[0]);
		var camera_y = camera_get_view_y(view_camera[0]);
		var camera_height = camera_get_view_height(view_camera[0]);
	
		//Draw black bars
		draw_set_color(c_black);
		draw_rectangle(camera_x, camera_y, camera_x + camera_width, camera_y + global.percent*argument0.bar_height, false);
		draw_rectangle(camera_x, camera_y + camera_height, camera_x + camera_width, camera_y + camera_height - global.percent*argument0.bar_height, false);
	}
}