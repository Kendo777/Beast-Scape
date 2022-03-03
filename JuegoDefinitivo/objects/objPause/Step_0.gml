/// @description Update
// Ñapacion realizada por Daniel Gracia con ayuda de Marc Lozano
if(room==romLevel2 or room==romLevel4)
{
	if(keyboard_check_pressed(ord("P")) and canPause)
	{
		if(error==false)
		{
		x=objPlayer.x;
		y=objPlayer.y-32*8;
		canPause=false;
		error=true;
		}else
		{
			canPause=false;
			error=false;
		}
			
	}else
	{
		
		canPause=true;
	}
	
}

scrPause();