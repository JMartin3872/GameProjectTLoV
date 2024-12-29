/// @description Insert description here
// You can write your code in this editor
if(falling){
	if(place_meeting(x,y + vSpeed, oWall)){
		while(!place_meeting(x,y+1,oWall)){
			y++;
		}
		vSpeed = 0;
		audio_play_sound(snAYcrash,100,false);
		Screenshake(10,60);
		
		falling = false;
	}
	
	else{
		vSpeed += grav;
		y += vSpeed
	}
}