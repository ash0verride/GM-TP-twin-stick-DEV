if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	hspeed = other.hspeed * speed_dropoff;
	vspeed = other.vspeed * speed_dropoff;
}