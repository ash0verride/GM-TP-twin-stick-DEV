if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	if (layer_sequence_is_paused(body_seq))
	{
		layer_sequence_play(body_seq);
	}
	
	if (image_alpha <= 0)
	{
		if (layer_sequence_is_finished(body_seq))
		{
			layer_sequence_destroy(body_seq);
			instance_destroy();
		}
	}
	else
	{
		image_alpha -= delta_time * 0.000001 * fade_rate;	
	}
}
else
{
	layer_sequence_pause(body_seq);
}