if (x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)
{
	spark_projectile();
}

if (y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)
{
	spark_projectile();
}