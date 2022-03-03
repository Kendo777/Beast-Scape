// Script created by Marc Lozano for 2D Design group project

if(instance_place(x, y-1, objMovingBlock) or instance_place(x,y-1,objPlayer)) { 
	activation = true;
	vspeed = 0.5;
	stuck = false;
}
else {	
	if(y>startY and !(instance_place(x,y-2,objMovingBlock) or instance_place(x,y-2,objPlayer))) {
		vspeed=-0.5;
		activation=false;
		stuck=false;
	}
	else {
		vspeed=0;
		stuck=true;
	}
}
