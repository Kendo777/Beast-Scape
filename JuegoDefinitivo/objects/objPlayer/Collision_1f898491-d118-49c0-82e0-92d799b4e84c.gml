/// @description Go to romLevel4

if (other.sprite_index == sprDoorOpen) {
		if (keyboard_check(ord("E")) and counter==0) 
{

	instance_create_depth(0,0,objLevelCompleteManager.depth,objBlackFade);
    objBlackFade.Mode=0;
	objBlackFade.timer=0;
	alarm[4]=75;
	counter++;
}
}