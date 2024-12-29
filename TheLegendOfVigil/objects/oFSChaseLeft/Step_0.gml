/// @description Move after camera from right side
// You can write your code in this editor

if(!global.gamePaused){
	x = oCamera.x + oCamera.view_w_half - abs(sprite_width)/4;

	if(instance_exists(oPlayer)){
		if((oPlayer.y - y) < -24){
			y -= 0.7;
		}
	
		else if((oPlayer.y - y) > 24){
			y += 0.7;
		
		}
	
	
	}

	y += sin(get_timer()/200000);
}

