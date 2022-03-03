/// @description Go to romLevel5

if (other.sprite_index == sprDoorOpen) {
	if (keyboard_check(ord("E")) and counter==0) 
{

	instance_create_depth(0,0,objLevelCompleteManager.depth,objWitheFade);
	alarm[5]=120;
	counter++;
}
}