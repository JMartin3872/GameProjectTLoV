/// @description
image_speed = random_range(0.5, 1)
image_index = random_range(0, 6);
hSpeed = random_range(2, 5);
vSpeed = random_range(2, 5);
image_xscale = choose(1, -1);
image_yscale = choose(1, -1);

direction = -oPlayer.direction + (random_range(-30,30));