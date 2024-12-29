/// @description Damage/die on touch

if(global.playerHealth <= 1 && invulnerable <= 0)
{
	KillPlayer();
}

else if(invulnerable <= 0) 
{
	global.playerHealth -= 1;
	invulnerable = 60;
	//state = PlayerStateHurt;
}








