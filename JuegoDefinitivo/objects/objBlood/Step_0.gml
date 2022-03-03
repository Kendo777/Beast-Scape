/// @description Update
// Created by Marc Lozano
instance_create_depth(x, y, objCollision.depth-1, objBloosStream);
bloodyspd += bloodgrav;
nextY = y + bloodyspd;

y = nextY;
hspeed = bloodxspd;
if (angle!=146) {
image_angle = angle;
nextAngle = angle + 4;
angle = nextAngle;
}
if (y > room_height + sprite_height) {
	instance_destroy();
}
