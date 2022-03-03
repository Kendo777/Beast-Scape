// Script created by Daniel Gracia Machado for 2D Design group project

// Inputs
	keyRight = keyboard_check(ord("D"));	// We set a variable for the right movement key input with a positive sign to make the movement easier to control with our variables
	keyLeft = -keyboard_check(ord("A"));	// We set a varibale for the left movement key input with a negative sign to make the movement easier to control with our variables

// Movement
	move = keyLeft + keyRight;	// We do movement this way so if the player presses both left and right key, they won't move; plus we assign a variable for the direction we will move towards
	xspd = move * movespeed;	// Now we set the horizontal movement using the variables before for the player to move to the left (negative 'move') or right (positive 'move')

// Set sprites
	