/// @description Death

instance_create_depth(x,y,depth,objPlayerDeath);
objPlayerDeath.startX = startX;
objPlayerDeath.startY = startY;
Revived = true;
instance_destroy();

