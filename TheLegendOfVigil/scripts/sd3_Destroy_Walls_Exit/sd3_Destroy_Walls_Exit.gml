// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sd3_Destroy_Walls_Exit(){
	with(oGateBlockPhaseDead){
		instance_destroy(self);
	}
}