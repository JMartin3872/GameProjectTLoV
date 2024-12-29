/// @description Move after camera from right side
// You can write your code in this editor

if(point_distance(x,y, oCamera.x + oCamera.view_w_half - abs(sprite_width)/4, y) > 1){
	x -= 0.5;
}
