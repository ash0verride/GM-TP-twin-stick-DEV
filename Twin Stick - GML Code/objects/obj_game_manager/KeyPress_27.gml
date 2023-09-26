if (curr_game_state == GAME_STATE.PLAYING)
{
	curr_game_state = GAME_STATE.PAUSED;
	layer_sequence_create("Instances", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_lose);
}