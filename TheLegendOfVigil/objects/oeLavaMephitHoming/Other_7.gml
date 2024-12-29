/// @description Change to homing state and flying sprite at animation end if sprite_index = sLavaMephitDrip
// You can write your code in this editor
if(sprite_index == sLavaMephitDrip){
	sprite_index = sLavaMephitFlying;
	state = MephitHoming;
}