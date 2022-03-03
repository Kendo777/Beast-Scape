/// @description Update
// Created by Marc Lozano
if(objButton.activation)
{
	
	if(objButton.stuck)
	{
		vspeed=0;
	}
	else
	{
		vspeed=-3;
	}
	
}
else if(!instance_place(x,y-1,objPlatform48x1 )) {
	vspeed=vspeed+2;
}
else
{
	vspeed=0;
}


