if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{	
	
	
	x = xprevious;
	y = yprevious;
	
	//x -= hspeed;
	//y -= vspeed;
	
	if (abs(hspeed) > abs(vspeed))
	{
		hspeed *= -speed_dropoff;
		vspeed *= -speed_dropoff * 0.5;
	}
	else
	{
		hspeed *= -speed_dropoff;
		vspeed *= -speed_dropoff * 0.5;
	}
}