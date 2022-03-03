// Script created by Marc Lozano for 2D Design group roject
// Created by Marc Lozano
colInst1 = instance_place(x, y+sprite_height/2-0.5, objPlayer);
if (canChangeColor2 == true) {
	if (colInst1) {
		code2++;
		if (code2 == 1) {
			image_index = 1;
		}
		if (code2 == 2) {
			image_index = 2;
		}
		if (code2 == 3) {
			image_index = 0;
			code2 = 0;
		}
	}
}
if (colInst1 != noone) {
	canChangeColor2 = false;
}
else {
	canChangeColor2 = true;
}
