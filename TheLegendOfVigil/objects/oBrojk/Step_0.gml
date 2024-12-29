/// @description Turn towards player
// You can write your code in this editor
if(instance_exists(oPlayer)){
	image_xscale = sign(oPlayer.x - x);
	if(image_xscale = 0){
		image_xscale = 1;
	}
}