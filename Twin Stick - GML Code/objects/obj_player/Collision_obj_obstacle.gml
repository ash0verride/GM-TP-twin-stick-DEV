if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{	
	var _obs_dist = point_distance(x, y, other.x, other.y);
	var _obs_dir = point_direction(other.x, other.y, x, y);
	
	var _x_buff = other.sprite_width * 0.75;
	var _y_buff = other.sprite_height * 0.75;
		
	var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / _x_buff, 0, 1), _obs_dir) * _x_buff * 1.5;
	var	_repulse_y = lengthdir_y(clamp(1 - _obs_dist / _y_buff, 0, 1), _obs_dir) * _y_buff * 1.5;
	
	hspeed += _repulse_x;
	vspeed += _repulse_y;
	
	hspeed = clamp(hspeed, -max_speed, max_speed);
	vspeed = clamp(vspeed, -max_speed, max_speed);

	//hspeed = lerp(hspeed, hspeed + _repulse_x, speed_dropoff);
	//vspeed = lerp(vspeed, vspeed + _repulse_y, speed_dropoff);
	
	//speed = clamp(speed, -max_speed, max_speed);
}