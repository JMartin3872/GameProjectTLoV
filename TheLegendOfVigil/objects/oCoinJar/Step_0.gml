/// @description Movement
// You can write your code in this editor
if(!global.gamePaused && started){
	y += vSpeed;
	x += hSpeed;
	
	vSpeed += grav;
}