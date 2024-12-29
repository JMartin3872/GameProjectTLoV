// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScriptCreateBridgeTiles3_12(){
	for(var i = 0; i < 50; i++){
		with(instance_create_layer(x + 16 + i*32, y + 16, "Walls",oBridgeBlockTimeable)){
			destroyTimer = i * 30;
		}
	}
	
	for(var i = 0; i < 51; i++){
		with(instance_create_layer(x + 1840 + i*32, y + 16, "Walls",oBridgeBlockTimeable)){
			destroyTimer = i * 15 + 50*30;
		}
	}
}