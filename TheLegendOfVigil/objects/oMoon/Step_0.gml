/// @description Moving moon over the sky and resetting.
x += 0.2;
y = (0.001*power(x,2)) - (0.933*x) + 288

if(x >= 1000){
	x = xstart;
}