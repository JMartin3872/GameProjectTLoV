/// @description ?

if(place_meeting(x,y,oPlayer)){
	HurtPlayer(point_direction(x, y, oPlayer.x, oPlayer.y), sign(point_distance(x, y, oPlayer.x, oPlayer.y)) * 10, myOwner.enemyForceTouch, myOwner.enemyDamageTouch);
}