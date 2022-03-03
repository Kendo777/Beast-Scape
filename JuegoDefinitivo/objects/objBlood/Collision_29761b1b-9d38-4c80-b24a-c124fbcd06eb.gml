/// @description Leave stream after touching the floor

if(instance_place(x, y, objFallingPillarTimed) or instance_place(x, y, objElevator4x1))
{
	bloodyspd += bloodgrav;
	nextY = y + bloodyspd;

	y = nextY;
	hspeed = bloodxspd;
	if(angle!=146)
	{
	image_angle = angle;
	nextAngle = angle+4;
	angle = nextAngle;
	}
}
else
{
	bloodyspd = 0;
	bloodxspd = 0;
}
