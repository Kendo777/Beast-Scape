//Script created by Marc Lozano for 2D Design group project

// Inputs
	// X axis
	keyRight = keyboard_check(ord("D"));	// We set a variable for the right movement key input with a positive sign to make the movement easier to control with our variables
	keyLeft = -keyboard_check(ord("A"));	// We set a varibale for the left movement key input with a negative sign to make the movement easier to control with our variables

// Outputs
move = keyLeft + keyRight;	// We do movement this way so if the player presses both left and right key, they won't move; plus we assign a variable for the direction we will move towards
xspd = move * movespeed;	// Now we set the horizontal movement using the variables before for the player to move to the left (negative 'move') or right (positive 'move')

//if(keyRight)
//{
//	Bunny.sprite_index=


// Horizontal collision
if (place_meeting(x+xspd, y, objCollision)){	// Set the condition to make Pixel Perfect collision in the X axis
	while (!place_meeting(x+sign(xspd), y, objCollision)){	// Here we make a loop to make the player move pixel by pixel untill it is right next to the object it is colliding with
		x += sign(xspd);	// We use the 'sign' function to identify the direction it will have to check the collision, either left (negative) or right (positive)
	}
	xspd = 0;	// Set the horizontal speed to 0 to make the player stop moving towards the direction it is colliding
}
x += xspd;

if (yspd < 70) yspd += 2.5*grav;
			// Vertical collision
			if (place_meeting(x, y+yspd, objCollision)){	// Same as the Horizontal collision but checking the Y axis instead to make Pixel Perfect collsisions in the Y axis
					while (!place_meeting(x, y+sign(yspd), objCollision)){
						y += sign(yspd);	
					}
	
					yspd = 0;// Set the vertical speed to 0 to make the player stop moving towards the direction it is colliding
				}
				y += yspd;

