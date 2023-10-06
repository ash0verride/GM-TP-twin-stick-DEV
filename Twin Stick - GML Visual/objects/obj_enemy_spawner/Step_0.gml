if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (spawn_queue > 0)
	{
		if (cooldown <= 0)
		{
			if(instance_number(obj_enemy) < obj_game_manager.max_enemies)
			{
				spawn_enemy();
			}
		}
		else
		{
			cooldown -= delta_time * 0.000001;
		}
	}
}