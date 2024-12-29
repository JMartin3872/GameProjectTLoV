/// @description Draw Health

var playerHealth = global.playerHealth;
var playerHealthMax = global.playerHealthMax;

if(instance_exists(oPlayer) && room != oMenu && room !=  rLevel0_Intro){
	
	for(var i = 0; i < playerHealthMax; i++)
	{
		var imageIndex = 0;
		
		if(i >= playerHealth)
		{
			imageIndex = 1;	
		}
		
		with(global.UI)
		{
			draw_sprite(sPlayerHealth, imageIndex, (i * 64) + (i * 5) , 15); 
		}
	}		
}



