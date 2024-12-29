/// @description ?
/// @description Hurtbuffer counter
if(hurtBuffer > 0)
{
	hurtBuffer--
}

else if(state != AYStateInvulnerable)
{
	canBeHurt = true;
}
