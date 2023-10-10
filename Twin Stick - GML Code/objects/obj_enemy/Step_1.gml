// Checks if the game is playing and the enemy is not spawning
if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED && !is_spawning)
{	
	is_colliding = false;	
}