/// @description state Reinforcement to invulnerable and state gather snow to prepare throw.

if(sprite_index = sAbominableYetiReinforcement){
	with(oAngryYetiSpawner){
		
		if(onLeftSide && oAbominableYeti.image_xscale = 1){
			
			with(instance_create_layer(x,y,"Enemy", oeYetiAngry)){
				image_xscale = oAbominableYeti.image_xscale;
				state = AngryYetiFallingBoss;
			}
		}
		
		else if(!onLeftSide && oAbominableYeti.image_xscale = -1){
			with(instance_create_layer(x,y,"Enemy", oeYetiAngry)){
				image_xscale = oAbominableYeti.image_xscale;
				state = AngryYetiFallingBoss;
			}
		}
		
		
	}
	
	with(oAYRoar){
		instance_destroy();	
	}
	
	state = AYStateInvulnerable;
}

if(sprite_index == sAbominableYetiThrowing){
	
	if(snowAmmunition != 0){
		state = AYStatePrepareThrow;
	}
	
	else{
		state = AYStateController;	
	}
}