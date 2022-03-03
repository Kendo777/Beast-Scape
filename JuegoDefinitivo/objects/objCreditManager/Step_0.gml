/// @description Insert description here
// You can write your code in this editor
// Created by Marc Lozano
if(room==romMainMenue)
{
	if(keyboard_check(ord("N")))
	{
		room_goto(romMenu);
	}else if(keyboard_check(vk_escape))
	{
		game_end();
	}
}