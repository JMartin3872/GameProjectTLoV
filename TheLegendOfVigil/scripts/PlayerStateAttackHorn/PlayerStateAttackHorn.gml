/// @description ?
function PlayerStateAttackHorn(){
	if(sprite_index != sPlayerAttackHorn){
		hSpeed = 0;
		vSpeed = 0;
		image_speed = 1;
		sprite_index = sPlayerAttackHorn;
		audio_play_sound(snHornBlast,15,false);
		Screenshake(5,60);
		
		instance_create_layer(x,y,"Dagger",oHornBlast){
		}
	}
	
	PlayerCollision();

}