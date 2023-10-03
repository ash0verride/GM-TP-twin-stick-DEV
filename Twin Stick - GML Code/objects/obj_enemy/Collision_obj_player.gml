if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED && !is_spawning)
{	
	x = xprevious;
	y = yprevious;
	
	find_path();
	
	if (x < other.x)
	{
		x--;	
	}
	else
	{
		x++;
	}
	
	if (y < other.y)
	{
		y--;	
	}
	else
	{
		y++
	}
	
	hspeed *= speed_dropoff;
	vspeed *= speed_dropoff;

}