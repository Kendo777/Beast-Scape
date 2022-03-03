/// @description Insert description here
// You can write your code in this editor
// Created by Marc Lozano
timer ++;	// Set the timer
alpha = max(0,0 + (timer / 150.0));	// Goes from transparten to dull

draw_sprite_ext(sprWhiteFade, 0, x, y, 1, 1, 0, c_white, alpha);

if(alpha==0) {
	instance_destroy();
}
