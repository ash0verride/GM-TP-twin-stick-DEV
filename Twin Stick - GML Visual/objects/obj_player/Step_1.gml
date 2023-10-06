if (player_health <= 0 && obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	obj_game_manager.lose_game();
}