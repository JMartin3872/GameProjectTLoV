// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DMPhase3(){
	if(hp <= 0){
		instance_create_layer(oPlayer.x, oPlayer.y, "Player", dialogue3_Boss_Dead);
		
		state = DMDead;
	}
}