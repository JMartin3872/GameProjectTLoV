/// @description ?

var block = instance_place(x, y, oDestructibleBlock);
if(block.canBeHurt){
	block.hp -= global.attackStrength * 2;
	time_source_start(block.hurtTimer);
	block.canBeHurt = false;
	
	audio_play_sound(snPoof, 10, false, 0.75);
}