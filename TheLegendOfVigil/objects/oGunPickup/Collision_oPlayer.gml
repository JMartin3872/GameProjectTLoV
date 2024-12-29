/// @description Equip gun

instance_create_layer(oPlayer.x, oPlayer.y, "Gun", oDaggergun);
audio_play_sound(snPowerup, 10, false);
instance_destroy();
