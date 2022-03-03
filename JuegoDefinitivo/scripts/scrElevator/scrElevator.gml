// Script created by Marc Lozano for 2D Design group project

vspeed = elevatorspd;

if (place_meeting(x, y-1, objPlayer) and !place_meeting(x, y, objPlayer)) {
	objPlayer.y = y;
}
if (place_meeting(x, y+1, objPlayer) and !place_meeting(x, y, objPlayer)) {
	if(objPlayer.y < y) y++;
	objPlayer.y = y;		
}
if (place_meeting(x, y-2, objPlayer) and !place_meeting(x, y, objPlayer)) {
	if(objPlayer.y < y) y += 2;
	objPlayer.y = y;
}
if (place_meeting(x, y+2, objPlayer) and !place_meeting(x, y, objPlayer)) {
	if(objPlayer.y < y) y += 2;
	objPlayer.y = y;
}
if (place_meeting(x, y-3, objPlayer) and !place_meeting(x, y, objPlayer)) {
	if(objPlayer.y < y) y += 2;
	objPlayer.y = y;
}
if (place_meeting(x, y+3, objPlayer) and !place_meeting(x, y, objPlayer)) {
	if(objPlayer.y < y) y += 2;
	objPlayer.y = y;
}
if (place_meeting(x, y-4, objPlayer) and !place_meeting(x, y, objPlayer)) {
	if(objPlayer.y < y) y += 2;
	objPlayer.y = y;
}
if (place_meeting(x, y+4, objPlayer) and !place_meeting(x, y, objPlayer)) {
	if(objPlayer.y < y) y += 2;
	objPlayer.y = y;
}
if (place_meeting(x, y-1, objMovingBlock) && !place_meeting(x, y, objMovingBlock)) {
	with(objMovingBlock) {
		yspd = other.elevatorspd;
	}
}
if (place_meeting(x, y-2, objMovingBlock) && !place_meeting(x, y, objMovingBlock)) {
	with (objMovingBlock) {
		if (y < other.y) y++;
		yspd = other.elevatorspd;
	}
}
if (place_meeting(x, y-3, objMovingBlock) && !place_meeting(x, y, objMovingBlock)) {
	with (objMovingBlock) {
		if(y < other.y) y += 2;
		yspd = other.elevatorspd;
	}
}
