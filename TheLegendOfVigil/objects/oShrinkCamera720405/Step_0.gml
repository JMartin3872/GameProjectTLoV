/// @description Insert description here
// You can write your code in this editor
var current_width = camera_get_view_width(view_camera[0]);
var current_height = camera_get_view_height(view_camera[0]);
oCamera.view_w_half = current_width/2;
oCamera.view_h_half = current_height/2;

if(current_width == target_width && current_height == target_height){
	instance_destroy(self);
}

if(current_width > target_width){
	camera_set_view_size(view_camera[0],current_width - w_shrink_rate,current_height - h_shrink_rate);
	
}

else{
	camera_set_view_size(view_camera[0],target_width,target_height);
}