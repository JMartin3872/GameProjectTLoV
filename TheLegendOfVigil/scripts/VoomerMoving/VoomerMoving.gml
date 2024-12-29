/// @description ?
function VoomerMoving(){
	
//If facing and moving clockwise movement is calculated based on the current image angle
//I won't comment every case because the principle i the same in all cases, just different calculations depending on image_angel(position on wall)
if(image_xscale > 0){	
	switch(image_angle){
		
		//If on ground and facing right
		case 0:{
			//Current platform equals instance below and one pixel ahead of sprite.
			var platform = instance_place(x + objectWidth/2, y + 1, oWall);
			
			/*If we will hit a wall in front of us on the next step, change image_angle, speed
			and object position. The y and x-changes are made so that the object will "connect"
			to the wall again when it has gone over a corner			*/
			if(willHitWall){
				image_angle = 90;
				hSpeed = 0;
				vSpeed = -crawlSpeed;
				y += sprite_width + (sprite_width-objectWidth)/2;
				x -= (sprite_width-objectWidth)/2;
			}
			
			//Else if it is just level ground in front of us, move ahead.
			else if (platform != noone){
				hSpeed = crawlSpeed;
				
			}
			
			/*Else (read there is no ground in front of us) go around the corner and start crawling down.
			Similar thing here as mentioned earlier with x and y*/
			else{
				image_angle = 270;
				x += sprite_width*1.5;
				y += objectWidth/2;
				hSpeed = 0;
			}
			
			break;		
		}
		
		case 90:{
			var platform = instance_place(x + 1, y - objectWidth/2, oWall);
			
			if(willHitWall){
				image_angle = 180;
				hSpeed = -crawlSpeed;
				vSpeed = 0;
				x += sprite_width + (sprite_width-objectWidth)/2;
				y += (sprite_width-objectWidth)/2;
				
				
			}
			
			
			else if (platform != noone){
				vSpeed = -crawlSpeed;
				
			}
			
			else{
				image_angle = 0;
				x += objectWidth/2;
				y -= sprite_width*1.5;
				vSpeed = 0;
			}
			
			break;		
		}
		
		case 180:{
			var platform = instance_place(x - objectWidth/2, y - 1, oWall);
			
			if(willHitWall){
				image_angle = 270;
				hSpeed = 0;
				vSpeed = crawlSpeed;
				y -= sprite_width + (sprite_width-objectWidth)/2;
				x += (sprite_width-objectWidth)/2;
			}
			
			else if (platform != noone){
				hSpeed = -crawlSpeed;
				
			}
			
			else{
				image_angle = 90;
				x -= sprite_width*1.5;
				y -= objectWidth/2;
				hSpeed = 0;
			}
			
			break;		
		}
		
		case 270:{
			var platform = instance_place(x - 1, y + objectWidth/2, oWall);
			
			if(willHitWall){
				image_angle = 0;
				hSpeed = crawlSpeed;
				vSpeed = 0;
				
				x -= sprite_width + (sprite_width-objectWidth)/2;
				y -= (sprite_width-objectWidth)/2;
			}
			
			
			else if (platform != noone){
				vSpeed = crawlSpeed;
				
			}	
			
			else{
				image_angle = 180;
				x -= objectWidth/2;
				y += sprite_width*1.5;
				vSpeed = 0;
			}
			
			break;
		}
	}
	
}


/*If facing and moving counter-clockwise
Principle here is the same as when moving clockwise EXCEPT that sprite width seems to become negativ 
when we inverse the image_x_scale. Hence the abs function on the value */
if(image_xscale < 0){	
	
	var abs_sprite_width = abs(sprite_width);
	
	switch(image_angle){
		case 0:{
			var platform = instance_place(x - objectWidth/2, y + 1, oWall);
			
			
			if(willHitWall){
				image_angle = 270;
				hSpeed = 0;
				vSpeed = -crawlSpeed;
	
				y += abs_sprite_width + (abs_sprite_width - objectWidth)/2;
				x += (abs_sprite_width - objectWidth)/2;
			}
			
			else if (platform != noone){
				hSpeed = -crawlSpeed;
				
			}
			
			else{
				image_angle = 90;
				x -= abs(sprite_width*1.5);
				y += abs(sprite_width/2);
				hSpeed = 0;
			}
			
			break;		
		}
		
		case 90:{
			var platform = instance_place(x + 1, y + objectWidth/2, oWall);
			
			if(willHitWall){
				image_angle = 0;
				hSpeed = -crawlSpeed;
				vSpeed = 0;
				x += abs_sprite_width + (abs_sprite_width - objectWidth)/2;
				y -= (abs_sprite_width - objectWidth)/2;
			}
			
			else if (platform != noone){
				vSpeed = crawlSpeed;
				
			}
			
			else{
				image_angle = 180;
				x += abs(sprite_width/2);
				y += abs(sprite_width*1.5);
				vSpeed = 0;
			}
			
			break;		
		}
		
		case 180:{
			var platform = instance_place(x + objectWidth/2, y - 1, oWall);
			
			if(willHitWall){
				image_angle = 90;
				hSpeed = 0;
				vSpeed = crawlSpeed;
				y -= abs_sprite_width + (abs_sprite_width - objectWidth)/2;
				x -= (abs_sprite_width - objectWidth)/2;
			}
			
			else if (platform != noone){
				hSpeed = crawlSpeed;
				
			}
			
			else{
				image_angle = 270;
				x += abs(sprite_width*1.5);
				y -= abs(sprite_width/2);
				hSpeed = 0;
			}
			
			break;		
		}
		
		case 270:{
			
			var platform = instance_place(x - 1, y - objectWidth/2, oWall);
			
			if(willHitWall){
				image_angle = 180;
				hSpeed = crawlSpeed;
				vSpeed = 0;
				
				x -= abs_sprite_width + (abs_sprite_width - objectWidth)/2;
				y += (abs_sprite_width - objectWidth)/2;
				
			}
			
			else if (platform != noone){
				vSpeed = -crawlSpeed;
				
			}	
			
			else{
				
				image_angle = 0;
				x -= abs(sprite_width/2);
				y -= abs(sprite_width*1.5);
				vSpeed = 0;
			}
			
			break;
		}
	}
	
}
	
	
	
	x += hSpeed;
	y += vSpeed;
	
	if(place_meeting(x + hSpeed, y + vSpeed, oWall)){
		willHitWall = true;
	}
	
	else{
		willHitWall = false;
	}
	
	
			
}