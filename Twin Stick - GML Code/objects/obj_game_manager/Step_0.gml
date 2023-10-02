if(curr_game_state == GAME_STATE.PLAYING)
{
	if (instance_number(obj_enemy) <= 0)
	{
		curr_wave++;
		wave_new_wave();
	}
	
	var _x_adjust = room_width / 2;
	var _y_adjust = room_height / 2;
	
	
	var _player_count = instance_number(obj_player)
	var _cam_x = 0;
	var _cam_y = 0;
		
	with (obj_player)
	{
		_cam_x += obj_player.x;
		_cam_y += obj_player.y;
	}
		
	_cam_x *= 1/_player_count;
	_cam_y *= 1/_player_count;
		
	_cam_x = clamp(_cam_x, _x_adjust, (arena_grid_width * cell_width) - _x_adjust);
	_cam_y = clamp(_cam_y, _y_adjust, (arena_grid_height * cell_height) - _y_adjust);
	
	_cam_x -= _x_adjust;
	_cam_y -= _y_adjust;
	camera_set_view_pos(view_camera[0], _cam_x, _cam_y);
	x = _cam_x;
	y = _cam_y;
}
