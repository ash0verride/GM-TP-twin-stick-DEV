if (x < 250 || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - 250)
{
	x = clamp(x, 250, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - 250);
	hspeed *= -0.5;
}

if (y < 250 || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - 250)
{
	y = clamp(y, 250, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - 250);
	vspeed *= -0.5;
}

mouse_prev_x = mouse_x;
mouse_prev_y = mouse_y;