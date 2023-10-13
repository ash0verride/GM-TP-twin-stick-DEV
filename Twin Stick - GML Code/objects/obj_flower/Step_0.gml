// Checks the game is not paused
if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	// Slows down the flowers speed
	speed *= speed_dropoff;
	
	// Checks if the flower goes either too far to the left or right of the level boundries
	if (x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)
	{
		// Clamps the flowers position to the levels playable width
		x = clamp(x, wall_buffer, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer);
		// Makes the flower bouce against the wall slowing its speed in the process
		hspeed *= -speed_dropoff;
	}

	// Checks if the flower goes either too far to the top or bottom of the level boundries
	if (y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)
	{
		// Clamps the flowers position to the levels playable height
		y = clamp(y, wall_buffer, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer);
		// Makes the flower bouce against the wall slowing its speed in the process
		vspeed *= -speed_dropoff;
	}
}