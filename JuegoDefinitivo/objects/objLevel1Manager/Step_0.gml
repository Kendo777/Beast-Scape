/// @description Update
// Created by Marc Lozano
if(objColorBlock1.code1 == 2 and objColorBlock2.code2 == 0 and objColorBlock3.code3 == 1) {
	if(key == false) {
		instance_create_depth (32*21, 0, layer, objKey);
		key = true;
	}
}

