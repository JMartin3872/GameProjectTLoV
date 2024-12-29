/// @description Insert description here
// You can write your code in this editor

with(oPlayer){
	path_start(PathTest,10,path_action_stop,true);
}

with(oeLavaMephitVertical){
	instance_destroy();
}

with(oLavaMephitSpawPoint){
	event_perform(ev_other,ev_user0);
}

with(oBounceBlockPhase2){
	instance_destroy(self);
}

with(oFireballSpawnerPhase2){
	started = true;
}

with(oFlyingDwarfSpawPoint){
	instance_create_layer(x,y,"Enemy",oFlyingDwarfHorisontal);
}

with(oLaserBlockLarge){
	fireTime /= 2;
	chargeTime /= 2;
	idlePreCharge /= 2;
	idlePostCharge /= 2;
	
}



instance_destroy(self);