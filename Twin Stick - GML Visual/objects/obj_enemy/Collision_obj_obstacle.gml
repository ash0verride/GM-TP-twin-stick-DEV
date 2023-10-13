if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{	
	if (is_spawning)
	{
		speed = 1.5;	
	}
	else
	{
		is_colliding = true;
	
		find_path();
	
		var _obs_dist = point_distance(x, y, other.x, other.y);
		var _obs_dir = point_direction(other.x, other.y, x, y);
	
		var _x_buff = other.sprite_width * 0.9;
		var _y_buff = other.sprite_height * 0.9;
		
		var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / _x_buff, 0, 1), _obs_dir) * _x_buff;
		var	_repulse_y = lengthdir_y(clamp(1 - _obs_dist / _y_buff, 0, 1), _obs_dir) * _y_buff;

		hspeed = lerp(hspeed, hspeed + _repulse_x, repulse_rate);
		vspeed = lerp(vspeed, vspeed + _repulse_y, repulse_rate);
	
		x += hspeed * speed_dropoff;
		y += vspeed * speed_dropoff;
	
		hspeed = clamp(hspeed, -max_speed, max_speed);
		vspeed = clamp(vspeed, -max_speed, max_speed);
	}
}