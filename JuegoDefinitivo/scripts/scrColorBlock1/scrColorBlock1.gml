// Script created by marc Lozano for 2D Design project
// Created by Marc Lozano
colInst1 = instance_place(x, y + sprite_height/2-0.5, objPlayer);
if (canChangeColor1 == true and colInst1) {
	//if (colInst1) {
		code1++;
		if (code1 == 1) {
			image_index = 1;
		}
		if (code1 == 2) {
			image_index = 2;
		}
		if (code1 == 3) {
			image_index = 0;
			code1 = 0;
		}
	//}
}

if (colInst1 != noone) {
	canChangeColor1 = false;
}
else {
	canChangeColor1 = true;
}

