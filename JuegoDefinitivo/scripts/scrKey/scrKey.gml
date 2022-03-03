// Script created by Marc Lozano for 2D Design group project
// Created by Marc Lozano
if (take) {
	x = objPlayer.x;
	y = objPlayer.y - objPlayer.sprite_height*1.6;
}
else {
	if (keyspd < 70) {
		keyspd += 2.5 * keygrav;
	}
	if (place_meeting(x, y + keyspd, objCollision)) {
		while (!place_meeting(x, y+sign(keyspd), objCollision)) {
			y += sign(keyspd);
		}
		keyspd = 0;
	}
	y += keyspd;
}
