// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd2_10(){
	Screenshake(5, 60);
	audio_play_sound(snFSRoar,100,false,1,0,1.3,1);
	instance_create_layer(oFSSilouetteSpawn.x, oFSSilouetteSpawn.y, "SalamanderSilouette",oFSHeadSilouetteLeft);
}