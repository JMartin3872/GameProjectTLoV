/// @description Update camera

//Update destination
//A lot of code for preventing camera to follow on the y-axis after a regular jump to give better
//understanding of how high player actually jumped.
if(instance_exists(follow))
{
	xTo = follow.x;
	
	if(instance_exists(oPlayer))
	{
		//Following code is to adjust camera on y-axis depending on if player jumped or not.
		if(oPlayer.key_jump && oPlayer.canJump)
		{
			followJumpDelay = 57;
		}
	
		else if (followJumpDelay <= 0)
		{
			yTo = follow.y;
		}
	
		followJumpDelay--;
	
		if(oPlayer.state != PlayerStateFree && oPlayer.state != PlayerStateWallJump && oPlayer.state != PlayerStateAttack)
		{
			followJumpDelay = 0;
		}
	
		if(oPlayer.playerLanded)
		{
			followJumpDelay = 1;	
			oPlayer.playerLanded = false;
		}
	}
	
	//fixing camera centered on player if they die.
	if ((follow).object_index == oPlayerDead)
	{
		x = xTo;
		y = yTo;
		
	}
}

//If normal player following camera
if(!automatic){
	//Update camera to equal object position, the dividing by 25 (or now 10) makes the camera move more slowly.
	x += (xTo - x) / (10 * (1/speed_factor_x));
	y += (yTo - y) / (25 * (1/speed_factor_y));
}

//Else if auto-moving camera:
else{
	if(!global.gamePaused && point_distance(x,y,auto_move_camera_end.x, auto_move_camera_end.y) > 10){
		direction = point_direction(x,y,follow.x,follow.y);
		x += lengthdir_x(auto_speed_x, direction)	
		y += lengthdir_y(auto_speed_y, direction)
	}
}

//Keep camera inside the room.
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

//Code for screenshake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

//Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

//Code for scrolling backgrounds
if (layer_exists(layerMountainSky))
{
	layer_x(layerMountainSky, (x - view_w_half)/2);
	layer_y(layerMountainSky, (y - view_h_half)/10);
}

if (layer_exists(layerTreesSlopes))
{
	layer_x(layerTreesSlopes, (x - view_w_half)/4);
	layer_y(layerTreesSlopes, (y - view_h_half)/5);
}

if (layer_exists(layerCave0))
{
	layer_x(layerCave0, (x - view_w_half)/4);
	layer_y(layerCave0, (y - view_h_half)/10);
}

if (layer_exists(layerCave1))
{
	layer_x(layerCave1, (x - view_w_half)/6);
	layer_y(layerCave1, (y - view_h_half)/10);
}

if (layer_exists(layerCave2))
{
	layer_x(layerCave2, (x - view_w_half)/8);
	layer_y(layerCave2, (y - view_h_half)/20);
}

if (layer_exists(layerFortressBridge))
{
	layer_x(layerFortressBridge, (x - view_w_half)/20);
	layer_y(layerFortressBridge, (y - view_h_half)/20);
}


