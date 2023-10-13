if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	if(is_spawning == true)
	{
		speed = 1.5;
	}

	else
	{
		is_colliding = true;
	
		find_path();
	
		var _player_dist = point_distance(x, y, other.x, other.y);
		var _player_dir = point_direction(other.x, other.y, x, y);
	
		var _buff = 184;
	
		var _repulse_x = lengthdir_x(clamp(1 - _player_dist / _buff, 0, 1), _player_dir) * _buff;
		var _repulse_y = lengthdir_y(clamp(1 - _player_dist / _buff, 0, 1), _player_dir) * _buff;
	
		var _adjusted_speed_x = lerp(hspeed, hspeed + _repulse_x, repulse_rate) * speed_dropoff;
		var _adjusted_speed_y = lerp(vspeed, vspeed + _repulse_y, repulse_rate) * speed_dropoff;
	
		x = lerp(x, x + _adjusted_speed_x, 0.99);
		y = lerp(y, y + _adjusted_speed_y, 0.99);
	
		speed = speed * speed_dropoff;
	}
}