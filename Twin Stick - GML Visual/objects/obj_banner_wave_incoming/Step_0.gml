if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (banner_life > 0)
	{
		banner_life -= delta_time * 0.000001;
		banner_alpha = image_alpha;
	}
	else
	{
		banner_alpha -= delta_time * 0.000001 * 0.5;
		image_alpha = banner_alpha;
	
		if(image_alpha <= 0)
		{
			instance_destroy();	
		}
	}
}