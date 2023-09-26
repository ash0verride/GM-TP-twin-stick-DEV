if(curr_game_type == GAME_TYPE.SINGLE_PLAYER && curr_game_state == GAME_STATE.PLAYING)
{
	var _x_adjust = room_width / 2;
	var _cam_x = clamp(obj_player.x, _x_adjust, (arena_grid_width * cell_width) - _x_adjust);
	_cam_x -= _x_adjust;
	var _y_adjust = room_height / 2;
	var _cam_y = clamp(obj_player.y, _y_adjust, (arena_grid_height * cell_height) - _y_adjust);
	_cam_y -= _y_adjust;
	camera_set_view_pos(view_camera[0], _cam_x, _cam_y);	
}