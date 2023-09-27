if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	speed = 1;

	direction = point_direction(x, y, target.x, target.y);
	image_angle = direction - 90;
}
else
{
	speed = 0;	
}