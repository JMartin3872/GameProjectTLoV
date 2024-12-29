/// @description Start Telegraph
myTelegraph = [];
var i = 0;



myTelegraph[i] = instance_create_layer(x + lengthdir_x(160 + 160*i,image_angle),y + lengthdir_y(160 + 160*i,image_angle), "LargeBeam", oCyberLaserLargeTelegraph);

while(!place_meeting(myTelegraph[i].x,myTelegraph[i].y,oCyberLaserLargeEndPlate)){
	myTelegraph[i].image_xscale = image_xscale;
	myTelegraph[i].image_yscale = image_yscale;
	myTelegraph[i].image_angle = image_angle;
	i++;
	
	myTelegraph[i] = instance_create_layer(x + lengthdir_x(160+ 160*i, image_angle), y + lengthdir_y(160 +160*i,image_angle), "LargeBeam", oCyberLaserLargeTelegraph);
}
myTelegraph[i].image_xscale = image_xscale;
myTelegraph[i].image_yscale = image_yscale;
myTelegraph[i].image_angle = image_angle;