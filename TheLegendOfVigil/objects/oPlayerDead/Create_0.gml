hSpeed = 0;
vSpeed = 0;
grav = 0.2;
done = 0;

counter = 150;

image_speed = 0;
image_index = 0;

//Screenshake, sound and slowdown(really simple slowdown and maybe not the best).
Screenshake(6, 60);
audio_play_sound(snPlayerDeath, 10, false);

//Code below is for giving a slow motion effect on death
//game_set_speed(30, gamespeed_fps);

//Code for the camera to follow the PlayerDead object.
with (oCamera)
{
	if(!automatic){
		follow = other.id;
	}
}

