/// @description Insert description here
// You can write your code in this editor
instance_create_layer(447, 863,"Entities",dialogue1_Boss_dead);
audio_stop_sound(global.currentMusic);

if(instance_exists(oSnowPile)){
	instance_destroy(oSnowPile);	
}

if(instance_exists(oSnowBall)){
	instance_destroy(oSnowBall);	
}

if(instance_exists(oIceTapChardalyn)){
	instance_destroy(oIceTapChardalyn);	
}

if(instance_exists(oeYetiAngry)){
	instance_destroy(oeYetiAngry);	
}

if(instance_exists(oAYRoar)){
	instance_destroy(oAYRoar);	
}