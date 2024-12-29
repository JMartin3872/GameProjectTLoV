/// @description Start lasers
var i = 1;

var new_laser = instance_create_layer(x + lengthdir_x(32*i,image_angle),y + lengthdir_y(32*i,image_angle), "Beams", oCyberLaser);

while(!place_meeting(new_laser.x,new_laser.y,oWall)){
	new_laser.image_angle = image_angle;
	i++;
	
	new_laser = instance_create_layer(x + lengthdir_x(32*i, image_angle), y + lengthdir_y(32*i,image_angle), "Beams", oCyberLaser);
}

instance_destroy(new_laser);

with(instance_create_layer(x + lengthdir_x(32*i, image_angle), y + lengthdir_y(32*i,image_angle), "Beams", oCyberLaserEnd)){
	image_angle = other.image_angle;
}