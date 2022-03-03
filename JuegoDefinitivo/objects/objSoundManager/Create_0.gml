/// @description Insert description here
// You can write your code in this editor
// Created by Marc Lozano
if(room==romMenu)
{

		audio_stop_sound(sound0);
		if(!audio_is_playing(sound1))
		{
			audio_play_sound(sound1,1,true);
		}

}
if (room==romTitle or room==romCredits)
{

	audio_play_sound(sound0,1,true);
	if(audio_is_playing(sound1))
	{
		audio_stop_sound(sound1);
	}
}
