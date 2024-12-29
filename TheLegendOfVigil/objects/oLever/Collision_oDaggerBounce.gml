/// @description Copy of collision oDagger
// You can write your code in this editor
if(triggerable && triggerCooldown <= 0){
	triggerCooldown = 60;
	image_xscale = -image_xscale;
	script_execute(myFunction);
	if(my_save_index != -1){
		global.levers[my_save_index] = 1;
	}
	
	if(!triggerableMultipleTimes){
		triggerable = false;	
	}
}
