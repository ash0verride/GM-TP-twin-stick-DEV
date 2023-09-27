if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)
	{
		x = clamp(x, wall_buffer, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer);
		hspeed *= -speed_dropoff;
	}

	if (y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)
	{
		y = clamp(y, wall_buffer, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer);
		vspeed *= -speed_dropoff;
	}

	mouse_prev_x = mouse_x;
	mouse_prev_y = mouse_y;
}