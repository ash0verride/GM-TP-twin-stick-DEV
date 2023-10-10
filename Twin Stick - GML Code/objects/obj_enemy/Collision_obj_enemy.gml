if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED && !is_spawning)
{		
	is_colliding = true;
	
	find_path();
	
	var _obs_dist = point_distance(x, y, other.x, other.y);
	var _obs_dir = point_direction(other.x, other.y, x, y);
	
	var _buff = (other.sprite_width + other.sprite_height) * 0.5;
		
	var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / _buff, 0, 1), _obs_dir) * _buff;
	var	_repulse_y = lengthdir_y(clamp(1 - _obs_dist / _buff, 0, 1), _obs_dir) * _buff;

	hspeed = lerp(hspeed, hspeed + _repulse_x, speed_dropoff);
	vspeed = lerp(vspeed, vspeed + _repulse_y, speed_dropoff);
	
	x += hspeed * 0.1;
	y += vspeed * 0.1;
	
	//speed = min(speed, other.speed);
}