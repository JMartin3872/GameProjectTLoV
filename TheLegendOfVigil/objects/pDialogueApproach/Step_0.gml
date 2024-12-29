/// @description Move player horisontally to cutscene.
if(instance_exists(oPlayer)){
	if(abs(x-oPlayer.x) <= triggerDistance){
		approaching = true;	
	}
	
	if(!start && approaching){
		oPlayer.hascontrol = false;
		oPlayer.state = PlayerStateFree;
		oPlayer.hSpeed = sign(x - oPlayer.x) * oPlayer.walkSpeed;
	}	
}
