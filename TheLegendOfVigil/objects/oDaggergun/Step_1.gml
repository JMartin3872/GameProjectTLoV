// gun position
x = oPlayer.x;
y = oPlayer.y + 5;

//Gun angle following mouse or controller
if(oPlayer.controller == 0)
{
image_angle = point_direction(x, y, mouse_x, mouse_y);
}

else
{
	var controllerh = gamepad_axis_value(0, gp_axisrh);
	var controllerv = gamepad_axis_value(0, gp_axisrv);
	if(abs(controllerh) > 0.2 || (abs(controllerv) > 0.2))
	{
		controllerAngle = point_direction(0, 0, controllerh, controllerv);
	}
	image_angle = controllerAngle;
}


//Code for firing daggers while pressing lmb (or right trigger) + recoil
firingDelay -= 1;
recoil = max(0, recoil -1);

if((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)) && firingDelay < 0)
{
	recoil = 4;
	firingDelay = 5;
	
	//Screenshake
	Screenshake(2, 10);
	
	//Sound effect
	audio_sound_pitch(snShot, choose(0.8, 1.0, 1.2));
	audio_play_sound(snShot, 5, false);
	
	//Creating bullet
	with(instance_create_layer(x, y, "Bullets", oBullet))
	{
		spd = 15;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

//Code for gun recoil movement
x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

//Code that gunsprite will mirror when switching sides
if (image_angle > 90 && image_angle < 270)
{
	image_yscale = -1;
}

else
{
image_yscale = 1;
}
