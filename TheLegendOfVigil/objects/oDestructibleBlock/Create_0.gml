/// @description Create wall
image_speed = 0;

mywall = instance_create_layer(x,y,layer,oWall);

hurtTimer = time_source_create(time_source_game, 0.75, time_source_units_seconds, function(){
	canBeHurt = true;	
});