// Script created by Marc Lozano for 2D Design group project

if (goBack) {
	if (y>=startY) {
		pillarspd =- 5;
		y += pillarspd;
	}
	else {
		goBack = false;
	}
}
else {
	goBack = false;
	if (pillarspd < 70) {
		pillarspd += 2.5*pillargrav;
	}
	if (place_meeting (x, y+pillarspd, objCollision)) {
		while (!place_meeting(x, y+sign(pillarspd), objCollision)) {
			y += sign(pillarspd);
		}
		pillarspd = 0;
		if (stayStill) {
			alarm[0] = 20;
			stayStill = false;
		}
	}
	y += pillarspd;
}
