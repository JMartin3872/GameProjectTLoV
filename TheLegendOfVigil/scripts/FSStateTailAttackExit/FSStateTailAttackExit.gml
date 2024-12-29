/// @description ?
function FSStateTailAttackExit(){
	if(sprite_index != sFSTailAttackExit){
		sprite_index = sFSTailAttackExit;
		tailAttacksLeft = numTailAttacks;
	}
	
	if(mySpawnManager.spawn4.y < oFSHead.y){
			state = FSStateController;
		}
			
	else{
		y += exitHoleSpeed;
	}
}