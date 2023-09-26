if (x < 250 || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - 250)
{
	instance_destroy();
}

if (y < 250 || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - 250)
{
	instance_destroy();
}