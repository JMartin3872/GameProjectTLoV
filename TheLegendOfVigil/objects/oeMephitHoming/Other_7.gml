/// @description Change to homing state and flying sprite at animation end if sprite_index = sMephitIcicle
// You can write your code in this editor
if(sprite_index == sMephitIcicle){
	sprite_index = sMephitFlying;
	state = MephitHoming;
}