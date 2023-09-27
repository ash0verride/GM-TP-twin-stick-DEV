if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
		x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
		y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) - 109;
}