/// @description When crate dies, wall dies
with (mywall) instance_destroy();

if(layer_exists("Bullets")){
	repeat (10)
	{
			with (instance_create_layer(x + (sprite_get_width(self.sprite_index) / 2), y + (sprite_get_height(self.sprite_index) / 2), "Bullets", oDust))
			{
			}
	}
}
