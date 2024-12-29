var block = instance_place(x, y, oDestructibleBlock);
if(block.canBeHurt){
	block.hp -= global.attackStrength;
	time_source_start(block.hurtTimer);
	block.canBeHurt = false;
	
	audio_play_sound(snPoof, 10, false, 0.75);
}

with(oPlayer){
		
	instance_destroy(oDaggerBounce);
	vSpeed = jumpHeight;
	canJump = 0;
	canDash = 5;
	if(!audio_is_playing(snJump))
	{
		audio_play_sound(snJump, 5, false);
	}
}