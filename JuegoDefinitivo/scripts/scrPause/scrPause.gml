// Script created by Paula Sebastián for 2D Design group project

if (keyboard_check_pressed(vk_escape)) game_end();	// Exit game
if (keyboard_check_pressed(ord("M"))) {
	room_goto(romMenu);	// Go back to the menu
	pause = 0;
	instance_activate_all();
	object_get_visible(objPause);
	visible= false;
}
if (keyboard_check_pressed(ord("R"))) {	// Restart the current room
	room_restart();
	visible= false;
}
if (keyboard_check_pressed(ord("P"))) {	// Pause the game
	if (!pause) {
		pause = 1;
		instance_deactivate_all(true);
		object_get_visible(objPause);
		visible= true;
	}
	else {
		pause = 0;
		instance_activate_all();
		object_get_visible(objPause);
		visible= false;
	}
}