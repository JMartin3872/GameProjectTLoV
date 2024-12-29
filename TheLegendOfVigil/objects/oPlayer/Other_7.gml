/// @description Ending attack state after animation finishes

if(state == PlayerStateAttack)
{
	lastState = PlayerStateAttack;
	state = PlayerStateFree;
}

if(state == PlayerStateAttackRanged)
{
	has_fired_projectile = false;
	lastState = PlayerStateAttackRanged;
	state = PlayerStateFree;
}

if(state == PlayerStateAttackDown)
{
	mask_index = sPlayer;
	lastState = PlayerStateAttackDown;
	state = PlayerStateFree;
	
	//Destroying oDaggerBounce when animation finishes.
	with(oDaggerBounce){
		if(instance_exists(oDaggerBounce))
		{
			instance_destroy();		
		}
	}
}


if(sprite_index == sPlayerTransform)
{
	sprite_index = sPlayerDash;
}

if(state == PlayerStateAttackHorn){
	lastState = state;
	state = PlayerStateFree;
}


