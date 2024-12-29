// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SalamanderPrepareDying(){
	
	if(sprite_index != sFSPrepareDying){
		sprite_index = sFSPrepareDying;
		image_angle = 0;
		image_xscale = 1;
		x = mySpawnManager.spawn0.x;
		y = mySpawnManager.spawn0.y;
		hSpeed = movementSpeed;
		moveTarget = mySpawnManager.spawn1;
		FSUpdateBodyPosition();
		
		for(var i = 0; i < numBodyParts -1; i++){
			myBodyList[i].image_angle = 0;
			myBodyList[i].image_xscale = 1;
		}
		myTail.image_angle = 0;
		myTail.image_xscale = 1;
		
		if(instance_exists(oEnemyHealthBorder)){
			instance_destroy(oEnemyHealthBorder);
			instance_destroy(oEnemyHealthBar);
		}
		
		
		if(audio_is_playing(snFSBeam)){
			audio_stop_sound(snFSBeam)
		}
		
		if(instance_exists(myFrostBeam)){
			instance_destroy(myFrostBeam);
		}
		
		if(instance_exists(myFrostBeamScout)){
			instance_destroy(myFrostBeamScout);
		}
		
		if(instance_exists(oFSShot)){
			with(oFSShot){
				instance_destroy();	
			}
		}
		
	}
	
	if(x < room_width - room_width/4){
		x += hSpeed;
		y -= 0.7;
		FSMoveBodyPart();
	}
	
	else{
		SalamanderDeath();	
	}
}