/// @description Spawn crossbow

myCrossbow = instance_create_layer(x + 16*sign(image_xscale), y + 16, "Bullets", oeCrossbow);
myCrossbow.myOwner = self;
myCrossbow.image_xscale = image_xscale;