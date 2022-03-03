/// @description Go to romLevel1

if (keyboard_check(ord("E")) and counter==0) 
{

	instance_create_depth(0,0,objLevelCompleteManager.depth,objBlackFade);
    objBlackFade.Mode=0;
	objBlackFade.timer=0;
	alarm[1]=75;
	counter++;
}


