// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DMphase1(){
	if(hp < maxHp*0.67){
		
		instance_create_layer(oPlayer.x,oPlayer.y,"Player",dialogue3_Boss_Phase1_Finish);		
		state = DMPhase2;
	}
}