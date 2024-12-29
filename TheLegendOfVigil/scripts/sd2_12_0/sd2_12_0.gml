// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd2_12_0(){
	instance_create_layer(oCamera.x + oCamera.view_w_half, oPlayer.y,"Enemy",oFSChaseLeftIntro);
}