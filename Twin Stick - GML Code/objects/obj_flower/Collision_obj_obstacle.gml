// Checks the game is not paused
if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{	
	// Bounces the flowers speed
	x -= hspeed;
	y -= vspeed;
	
	// Checks if the horizontal speed is greater than the vertical
	if (abs(hspeed) > abs(vspeed))
	{
		// Drops off the horizontal speed
		hspeed *= -speed_dropoff;
	}
	else
	{
		// Drops off the vertical speed
		vspeed *= -speed_dropoff;
	}
}