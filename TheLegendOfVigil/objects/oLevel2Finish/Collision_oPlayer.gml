/// @description Move to target room and set spawnpoint for next room.

with(oPlayer)
{
	if(hascontrol)
	{
		global.cleared_stage_2 = true;
		hascontrol = false;
		invulnerable = 60;
		global.spawn = other.set_spawn;
		SlideTransition(TRANS_MODE.GOTO, other.my_target);
	}
	
	
}
