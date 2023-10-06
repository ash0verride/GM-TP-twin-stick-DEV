if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	if (instance_exists(target))
	{
		clamped_x = target.x - x;
		clamped_y = target.y - y;
		
		clamped_x = clamp(clamped_x, wall_buffer, room_width - wall_buffer);
		clamped_y = clamp(clamped_y, wall_buffer, room_height - wall_buffer);
		
		target_direction = point_direction(room_width / 2, room_height / 2, clamped_x, clamped_y);
		
		//h_alpha = min((abs((x + (camera_get_view_width(view_camera[0]) / 2)) - target.x) - obj_game_manager.cell_width) / (room_width / 2), 1);
		//v_alpha = min((abs((y + (camera_get_view_height(view_camera[0]) / 2)) - target.y) - obj_game_manager.cell_height) / (room_height / 2), 1);
		
		//h_alpha = abs((x + clamped_x) - target.x)
		//v_alpha = x + clamped_x
		
		//target_alpha = max(h_alpha, v_alpha)
		//target_alpha = min(target_alpha, 0.9);
		
		target_alpha = min(point_distance(x + clamped_x, y + clamped_y, target.x, target.y) / (obj_game_manager.cell_width + obj_game_manager.cell_height) , 0.9);
		
		if (target_alpha > curr_alpha)
		{
			curr_alpha = lerp(curr_alpha, target_alpha, 0.05);
		}
		else
		{
			curr_alpha = lerp(curr_alpha, target_alpha, 0.9);
		}
	}
	else
	{
		target_alpha = 0;	
		curr_alpha = lerp(curr_alpha, target_alpha, 0.5);
		
		if (curr_alpha <= 0)
		{
			instance_destroy();
		}
	}
}