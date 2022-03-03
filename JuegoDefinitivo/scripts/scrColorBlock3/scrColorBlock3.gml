// Script created by Marc Lozano for 2D Design group project
// Created by Marc Lozano
colInst1 = instance_place(x, y+sprite_height/2-0.5, objPlayer);
if (canChangeColor3 == true) {
	if (colInst1) {
		code3++;
		if (code3 == 1) {
			image_index = 1;
		}
		if (code3 == 2) {
			image_index = 2;
		}
		if (code3 == 3) {
			image_index = 0;
			code3 = 0;
		}
	}
}

if (colInst1 != noone) {
	canChangeColor3 = false;
}
else {
	canChangeColor3 = true;
}
