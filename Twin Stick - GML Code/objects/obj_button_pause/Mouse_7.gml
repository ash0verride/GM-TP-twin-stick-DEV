if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	obj_game_manager.pause_game();
	is_pressed = true;
	target_scale = 0.9;
	scale_rate = 0.9;
}