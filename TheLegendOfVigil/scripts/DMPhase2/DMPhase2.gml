// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DMPhase2(){
	if(hp < maxHp*0.33){
		
		instance_create_layer(oPlayer.x,oPlayer.y,"Player",dialogue3_Boss_Phase2_Finish);
		state = DMPhase3;
	}
}