/// @description Hurt/kill player
if(hurtOnTouch){
	HurtPlayer(point_direction(x, y, oPlayer.x, oPlayer.y), sign(point_distance(x, y, oPlayer.x, oPlayer.y)) * 10, enemyForceTouch, enemyDamageTouch);
}