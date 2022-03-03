/// @description Update
// Created by Marc Lozano
if (instance_place(x, y-2, objMovingBlock)) {
	activation = true;
	vspeed = 0.5;
	stuck = false;
}
else {	
	if (y > startY and !(instance_place(x,y-2,objMovingBlock))) {
		vspeed =- 0.5;
		activation = false;
		stuck = false;
	}
	else {
		vspeed = 0;
		stuck = true;
	}
}
