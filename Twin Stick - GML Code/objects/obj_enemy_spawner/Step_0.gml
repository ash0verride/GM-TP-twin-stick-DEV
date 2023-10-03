if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (spawn_queue > 0)
	{
		if (cooldown <= 0)
		{
			spawn_enemy();
		}
		else
		{
			cooldown -= delta_time * 0.000001;
		}
	}
}