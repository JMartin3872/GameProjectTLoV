/// @description Insert description here
// You can write your code in this editor

with(oPlayer){
	hascontrol = true;
	path_start(PathTest,10,path_action_stop,true);
}

with(oBridgeBlockPhase1){
	instance_destroy(self);
}

with(oeLavaMephitVertical){
	instance_destroy();
}

with(oLavaMephitSpawPoint){
	event_perform(ev_other,ev_user0);
}

with(oGateBlockPhase1){
	instance_destroy();
}

with(oLaserBlock){
	event_perform(ev_other,ev_user0);	
}

instance_destroy(self);