// Script created by Daniel Gracia Machado for 2D Design group project

if (!instance_exists(objBlackFade)) {
	if (place_meeting(x+xspd, y, objCollision)){	// Set the condition to make Pixel Perfect collision in the X axis
		while (!place_meeting(x+sign(xspd), y, objCollision)){	// Here we make a loop to make the player move pixel by pixel untill it is right next to the object it is colliding with
			x += sign(xspd);	// We use the 'sign' function to identify the direction it will have to check the collision, either left (negative) or right (positive)
		}
		xspd = 0;	// Set the horizontal speed to 0 to make the player stop moving towards the direction it is colliding
	}
	x += xspd;
}