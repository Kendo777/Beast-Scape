// Script created by Daniel Gracia Machado for 2D Design group project

// Variables
	nextY = y + yspd;
	maxFallSpeed = 24;

// Inputs
	keyJump = keyboard_check_pressed(ord("W")); //We set a variable for the jump key input
	keyGlide = keyboard_check(vk_lshift);	// We set a variable for the glide ability key input
	
// Movement
	if (yspd < maxFallSpeed) yspd += grav;	// We make the vertical speed have a limit when we are falling down, so it doesnt exponentially grow to the infinity and set a maximum
	
	// Grounded
		if (place_meeting(x, y+1, objCollision)) {	// Here we make the player able to jump only if they are colliding with the floor
			doubleJump = true;	// Reset the double jump ability every time the player lands on the floor
			yspd = keyJump * -jumpspeed;	// Here we set a vertical speed when we are on the floor and hit the jump key
		}
		
	// Airborne
		else if (!place_meeting(x, y+1, objCollision)){    // Here we set the stuff the player will be able to do while airborne
			// Double jump
			if (keyJump and doubleJump == true) {	// Here we check if the ability to double jump is able for the player to use it
				yspd = keyJump * -jumpspeed;    // Same script as if we jump, but mid-air
				doubleJump = false;    // Here we make the player unable to make more jumps untill they are grounded, then they will gain the double jump ability again
			}
			// Gliding
			else if (keyGlide and (y<nextY)){	// Here we check if the player wants to glide and only make him glide when he is going downwards
				if (yspd > maxFallSpeed*0.2) {	// First we should check if the player's y speed is higher than the gliding y speed
					yspd = maxFallSpeed*0.2;	// Now we set the maximum y speed while gliding
					yspd += grav;	// Lastly we make him go downwards with the y speed he has to go with
				}
				else if (yspd < maxFallSpeed*0.2) {	// Here we check if the y speed is lower than how he is supposed to move and set the maximum
					yspd += grav;	// Lastly we make him go downwards with the y speed he has to go with
				}
			}
		}
		
// Sprites

	// Grounded
if (!instance_exists(objBlackFade)) {
	if (nextY == y) {
		if (move > 0) sprite_index = sprPlayerRight;
		else if (move < 0) sprite_index = sprPlayerLeft;
		else  sprite_index = sprPlayerIdle;
	}

	// Airborne
	if (nextY != y) {
		if (y > nextY) {
			sprite_index = sprPlayerJump;
		}
		else {
			if (keyGlide) sprite_index = sprPlayerGliding;
			else sprite_index = sprPlayerFalling;
		}
	}
}