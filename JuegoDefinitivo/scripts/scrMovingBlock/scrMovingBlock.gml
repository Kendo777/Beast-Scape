// Script created by Marc Lozano for 2D Design goup project

if (canMove ==  true) {
	sprite_index=sprMovingBlockOn;
	if(colBlockRight or colBlockLeft) {
		scrBlockMovement();
	}
	else {
		if (yspd < 70) yspd += 2.5*grav;
		// Vertical collision
		if (place_meeting(x, y + yspd, objCollision)){	// Same as the Horizontal collision but checking the Y axis instead to make Pixel Perfect collsisions in the Y axis
			while (!place_meeting(x, y + sign(yspd), objCollision)){
				y += sign(yspd);	
			}
			yspd = 0;// Set the vertical speed to 0 to make the player stop moving towards the direction it is colliding
		}
		y += yspd;
	}
}
else {
	if (instance_exists(objKey)) {
		if (objKey.take == true) {
			if (colBlockRight or colBlockLeft) {
				canMove = true;
				instance_destroy(objKey);
			}
		}
	}
}
/*
if (colElevator) {
	if (place_meeting(x, y+sign(yspd)+1, objElevator) && !place_meeting(x, y, objMovingBlock)) {	
		yspd = instance_place(x,y+ sign(yspd)+1,objElevator).elevatorspd;
	}
	if(place_meeting(x,y-sign(yspd)-1,objElevator) && !place_meeting(x,y,objMovingBlock)) {	
		y += sign(yspd);
		y = objElevator.bbox_top;
	}
	y += yspd;
}
