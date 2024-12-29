/// @description ?
if(instance_exists(oPlayer)){
	if(!layer_get_visible("Tiles_Top") && !place_meeting(oPlayer.x, oPlayer.y, oFakeWall)){
		layer_set_visible("Tiles_Top", true);
	}
}