// Script created by Daniel Gracia Machado

if (place_meeting(x, y+yspd, objCollision)){	// Same as the Horizontal collision but checking the Y axis instead to make Pixel Perfect collsisions in the Y axis
	while (!place_meeting(x, y+sign(yspd), objCollision)){
		y += sign(yspd);	
	}
	yspd = 0;	// Set the vertical speed to 0 to make the player stop moving towards the direction it is colliding
}
y += yspd;
