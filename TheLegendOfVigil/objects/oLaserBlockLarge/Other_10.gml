/// @description Start lasers
myBeams = [];
var i = 0;



myBeams[i] = instance_create_layer(x + lengthdir_x(160 + 160*i,image_angle),y + lengthdir_y(160 + 160*i,image_angle), "LargeBeam", oCyberLaserLarge);


while(!place_meeting(myBeams[i].x,myBeams[i].y,oCyberLaserLargeEndPlate)){
	myBeams[i].image_xscale = image_xscale;
	myBeams[i].image_yscale = image_yscale;
	myBeams[i].image_angle = image_angle;
	i++;
	
	myBeams[i] = instance_create_layer(x + lengthdir_x(160+ 160*i, image_angle), y + lengthdir_y(160 +160*i,image_angle), "LargeBeam", oCyberLaserLarge);
}

myBeams[i].image_xscale = image_xscale;
myBeams[i].image_yscale = image_yscale;
myBeams[i].image_angle = image_angle;
i++;

myBeams[i] = instance_create_layer(x + lengthdir_x(160 + 160*i, image_angle), y + lengthdir_y(160 + 160*i,image_angle),"LargeBeam", oCyberLaserEndLarge);
myBeams[i].image_xscale = image_xscale;
myBeams[i].image_yscale = image_yscale;
myBeams[i].image_angle = image_angle;
