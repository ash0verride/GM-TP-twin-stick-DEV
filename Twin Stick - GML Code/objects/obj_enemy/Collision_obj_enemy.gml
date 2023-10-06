if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !is_spawning)
{	
	x = xprevious;
	y = yprevious;
	
	find_path();
	
	var _obs_repulse_rate = 1.5;
	var _obs_dist = point_distance(x, y, other.x, other.y);
	var _obs_dir = point_direction(other.x, other.y, x, y);
		
	var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / (repulse_buffer), 0, 1), _obs_dir) * _obs_repulse_rate;
	var	_repulse_y = lengthdir_y(clamp(1 - _obs_dist / (repulse_buffer), 0, 1), _obs_dir) * _obs_repulse_rate;

	x += lerp(hspeed, hspeed + _repulse_x, speed_rate);
	y += lerp(vspeed, vspeed + _repulse_y, speed_rate);
	
	hspeed *= 0.1;
	vspeed *= 0.1;
}