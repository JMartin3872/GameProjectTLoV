/// @description Update camera

//Update destination
//A lot of code for preventing camera to follow on the y-axis after a regular jump to give better
//understanding of how high player actually jumped.
if(instance_exists(follow) && !reached_target)
{
	xTo = follow.x;
	yTo = follow.y;
	
	if(abs(point_distance(x,y, follow.x, follow.y)) < 30 ){
		reached_target = true;
	}
	
}

//Update camera to equal object position, the dividing by 25 (or now 10) makes the camera move more slowly.
x += (xTo - x) / 10;
y += (yTo - y) / 25;


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


