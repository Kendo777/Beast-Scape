/// @description Initialization

// Integers
xspd = 12;	// Set initial horizontal speed
yspd = 12;	// Set initial vertical speed
grav = 1;	// Set gravity
jumpspeed = 22;	// Set the jump speed
movespeed = 12;	// Set the movespeed
startX = x;
startY = y;

// Booleans 
doubleJump = false;	// Boolean to check if we can use the double jump ability
death = false;

// Conditions
if (room == romLevel3) {
	alarm[0] = (room_speed * 33.20);	// Set the alarm to allow the playewr to move vertically again in the falling level
	sprite_index = sprPlayerFalling;
}

// Fade
counter = 0;
if (instance_exists(objPlayerDeath)) {
	Revived=true;
}
else {
	Revived=false;
}
if (!Revived) {
	instance_create_depth(0,0,-1,objBlackFade);
	objBlackFade.mode=1;
}

