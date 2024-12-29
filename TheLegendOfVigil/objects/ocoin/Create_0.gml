/// @description create initial sparkles

if(my_coin_list[my_coin_list_index] == 1){
	instance_destroy(self);
}

repeat(10)
{
	instance_create_layer(x , y, "Player", oGoldenShineParticle);
}

