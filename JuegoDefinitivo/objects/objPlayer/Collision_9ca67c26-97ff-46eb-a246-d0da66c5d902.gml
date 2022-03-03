/// @description Complete Level1

if (room == romLevel1) {
	if (keyboard_check(ord("E"))) {
		objLevelCompleteManager.completedLevel1 = true;
		room_goto(romMenu);
	}
}
if (room == romLevel2) {
	if (keyboard_check(ord("E"))) {
		objLevelCompleteManager.completedLevel2 = true;
		room_goto(romMenu);
	}
}
if (room == romLevel3) {
	if (keyboard_check(ord("E"))) {
		objLevelCompleteManager.completedLevel3 = true;
		room_goto(romMenu);
	}
}
if (room == romLevel4) {
	if (keyboard_check(ord("E"))) {
		objLevelCompleteManager.completedLevel4 = true;
		room_goto(romMenu);
	}
}
if (room == romCredits) {
	if (keyboard_check(ord("E"))) {
		objLevelCompleteManager.completedLevel5 = true;
		room_goto(romMenu);
	}
}
