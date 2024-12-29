/// @description Set up camera, see more info below
//If camera follows player it will be set to immediately start at players x and y on room start in object oSpawnManager.

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

//Variable for delaying camera on y-axis if player jumped.
followJumpDelay = 0;

//variable for camerashake
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

//Variables for background movements
layerMountainSky = (layer_get_id("MountainsSky"));
layerTreesSlopes = (layer_get_id("TreesSlopes"));
layerCave0 = (layer_get_id("Cave0"));
layerCave1 = (layer_get_id("Cave1"));
layerCave2 = (layer_get_id("Cave2"));
layerCave3 = (layer_get_id("Cave3"));
layerFortressBridge = (layer_get_id("Background_Bridge"));

