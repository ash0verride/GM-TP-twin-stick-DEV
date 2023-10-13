// Checks the game is not paused
if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	// Sets the flowers speed to the projectiles speed with some drop off
	hspeed = other.hspeed * speed_dropoff;
	vspeed = other.vspeed * speed_dropoff;
}