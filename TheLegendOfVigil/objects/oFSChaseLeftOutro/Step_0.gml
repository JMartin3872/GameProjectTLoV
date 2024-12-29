/// @description Move after camera from right side
// You can write your code in this editor

if(y < oCamera.y + oCamera.view_w_half){
	y += 1;
}

else{
	instance_destroy(self);	
}
