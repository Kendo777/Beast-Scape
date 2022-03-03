// Script created by Marc Lozano for 2D Design group project

timer += 2;	// Set the timer
if(mode == 0) {
	alpha = max(0,0 + (timer / 150.0));	// Goes from transparten to dull
}
else {
	alpha= min(1,1 - (timer / 150.0));	// Goes from dull to transparent
}

draw_sprite_ext(sprBlackFade, 0, x, y, 1, 1, 0, c_white, alpha);

if(alpha==0 or alpha==1) {
	instance_destroy();
}
