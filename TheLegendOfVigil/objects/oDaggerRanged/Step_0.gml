/// @description Moving and pausing projectile, create trailing particles

if(!global.gamePaused){
	x += spd;


	if(place_meeting(x + spd,y,oWall) && (image_index != 0))
	{
		spd = 1 * sign(spd);
	}

	with(instance_create_layer(other.x, other.y, "Bullets" ,oPowerUpParticle)){
	
	}
}

if(global.gamePaused){
	time_source_pause(destroy_timer);
}

else if(time_source_get_state(destroy_timer) == time_source_state_paused){
	time_source_resume(destroy_timer);	
}


