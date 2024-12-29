/// @description Destroy and summon coins
// You can write your code in this editor
repeat 15{
	var offset_x = irandom_range(-16,32);
	var offset_y = irandom_range(0,16);
	instance_create_layer(x + offset_x, y + offset_y, "Player",oCoinDialogue);	
}

audio_play_sound(snPoof,100,false,1,0,2,1);

instance_destroy(self);