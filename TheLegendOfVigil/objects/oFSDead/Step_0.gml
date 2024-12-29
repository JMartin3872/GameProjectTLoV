/// @description Insert description here
// You can write your code in this editor

if(!global.gamePaused){
	if(countdown <= 0 && !falling){
		x = starting_x + random_range(-5, 5)
		shakeTime--;
	
		if(shakeTime <= 0){
			falling = true;
			vSpeed = random_range(-4, -2);
			hSpeed = random_range(-3,3);
		}
	}

	else if(falling){
		x += hSpeed;
		y += vSpeed;
		vSpeed += grav;
	}

	else{
		countdown--;	
	}
}