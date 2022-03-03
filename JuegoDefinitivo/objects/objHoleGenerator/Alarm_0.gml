/// @description Create platforms

platformsCreated++;	// Add a platform to the total of platforms created
randomHole = random(3);	// Randomize the hole which is going to be created

if (platformsCreated <= 10){	// Keep creating holes untill there has been 10 platforms created
	// Hole in left position
	if (randomHole < 1) {
		instance_create_depth(0, room_height+32, 2, objHole4x1);
		instance_create_depth(32*12, room_height+32, 2, objHole36x1);
	}
	// Hole in middle position
	else if (randomHole > 1 and randomHole < 2) {
		instance_create_depth(0, room_height+32, 2, objHole20x1);
		instance_create_depth(32*28, room_height+32, 2, objHole20x1);
	}
	// Hole in Right position
	else if (randomHole > 2) {
		instance_create_depth(0, room_height+32, 2, objHole36x1);
		instance_create_depth(32*44, room_height+32, 2, objHole4x1);
	}
	// Reset the alarm untill there were 10 platforms created
	alarm[0] = room_speed * 3;
}
else {
	instance_create_depth(room_width/2, room_height+192, 2, objLevelCompleted);
	instance_create_depth(0, room_height+192,2, objPlatform48x1);
	alarm[0] = 0;
}
