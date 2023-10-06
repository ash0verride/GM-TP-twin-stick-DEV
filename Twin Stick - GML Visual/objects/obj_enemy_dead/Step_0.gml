if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	image_alpha -= delta_time * 0.000001 * fade_rate;
	
	if (image_alpha <= 0)
	{
		instance_destroy();	
	}
}