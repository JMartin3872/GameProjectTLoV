/// @description Set up camera

cam = view_camera[0];
follow = oCameraCutsceneTarget1
reached_target = false;
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

