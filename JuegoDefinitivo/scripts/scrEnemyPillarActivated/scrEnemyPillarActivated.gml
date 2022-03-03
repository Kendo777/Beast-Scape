// Script created by Marc Lozano for 2D Design group project

if (myFloor.activation) {
	goBack=false;
	if (pillarspd < 70) {
		pillarspd += 2.5 * pillargrav;
	}

	if (place_meeting(x, y + pillarspd, objCollision)) {
		while (!place_meeting(x, y+sign(pillarspd), objCollision)) {
			y += sign(pillarspd);
		}
		pillarspd = 0;
		myFloor.activation = false;
		alarm[0] = 20;
	}
	y += pillarspd;
}
else if (goBack) {
	if (y >= startY) {
		pillarspd =- 5;
		y += pillarspd;
	}
}

