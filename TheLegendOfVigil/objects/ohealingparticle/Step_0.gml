//Also code to remove particles if oPlayer ceases to exist, if dying for example.


//If not done (See animation end) "scatter" from enemy and slow down.
x += lengthdir_x(1, direction) * hSpeed;
y += lengthdir_y(1, direction) * vSpeed;

hSpeed *= 0.9;
vSpeed *= 0.9;
