/// @Movement and replace to wall when stopped
// You can write your code in this editor
var new_x = oCamera.x - oCamera.view_w_half - 32;
var new_y = oCamera.y - oCamera.view_h_half;

if(new_x == x && new_y == y){
	instance_change(oWallCameraLeft, true);
}

else{
	x = new_x;
	y = new_y;
}