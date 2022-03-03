/// @description Update

// In Falling Level room
if (room = romLevel3) {
	scrMovementHor();	// Give the horizontal movement
	scrPPCollisionHor();	// Give horizontal Pixel Perfect Collision
}

// In other rooms
else {
	scrMovementHor();	// Give the horizontal movement
	scrMovementVer();	// Give the vertical movement
	scrPPCollisionHor();	// Give the horizontal Pixel Perfect Collision
	scrPPCollisionVer();	// Give the vertical Pixel Perfect Collision
}
