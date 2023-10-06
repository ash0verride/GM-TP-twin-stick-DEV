if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{	
	var _obs_dist = point_distance(x, y, other.x, other.y);
	var _obs_dir = point_direction(other.x, other.y, x, y);
		
	var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / (other.sprite_width / 2), 0, 1), _obs_dir);
	var	_repulse_y = lengthdir_y(clamp(1 - _obs_dist / (other.sprite_height / 2), 0, 1), _obs_dir);

	hspeed += _repulse_x * 200;
	vspeed += _repulse_y * 200;
	
	hspeed = clamp(hspeed, -max_speed, max_speed);
	vspeed = clamp(vspeed, -max_speed, max_speed);
}