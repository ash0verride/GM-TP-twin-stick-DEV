if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{	
	x -= hspeed;
	y -= vspeed;
	
	if (abs(hspeed) > abs(vspeed))
	{
		hspeed *= -speed_dropoff;
	}
	else
	{
		vspeed *= -speed_dropoff;
	}
}