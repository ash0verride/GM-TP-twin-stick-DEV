if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (banner_life > 0)
	{
		banner_life -= delta_time * 0.000001;
		banner_alpha = image_alpha;
	}
	else
	{
		banner_alpha -= delta_time * 0.000001 * 2;
		image_alpha = banner_alpha;
	
		if(image_alpha <= 0)
		{
			obj_game_manager.wave_new_spawners();
			
			obj_game_manager.music = audio_play_sound(choose(snd_music_game_1, snd_music_game_2, snd_music_game_3), 100, true);
			instance_destroy();	
		}
	}
}