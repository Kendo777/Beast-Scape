/// @description Draw dull object if not disappearing
// Created by Marc Lozano
if (canDisappear) {
	timer++;
	alpha = min(1,1 - (timer / 150.0));
	draw_sprite_ext(sprBloodStream, 0, x, y, 1, 1, 0, c_white, alpha);
	if (alpha==0) {
		instance_destroy();
	}
}
else {
	draw_sprite_ext(sprBloodStream, 0, x, y, 1, 1, 0, c_white, 1);
}
