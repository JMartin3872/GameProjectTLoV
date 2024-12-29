/// @description Hurt Player

//Here argument hurtdistance is a bit wierd, we instead choose an arbitrary number sof sign *10, seems to work fine
//Direction is based on image angle + 90° which sends the character flying in the correct direction based on how the spikes are setup.
HurtPlayer(self.image_angle + 90, sign(point_distance(x, y, oPlayer.x, oPlayer.y)) * 10, 10, 2);	

