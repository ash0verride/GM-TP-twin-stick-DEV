if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{	
	var _dir = point_direction(x, y, target.x, target.y);
	
	var _attraction_x = lengthdir_x(1, _dir);
	var _attraction_y = lengthdir_y(1, _dir);

	var _current_x = lengthdir_x(1, direction);
	var _current_y = lengthdir_y(1, direction);

	var _repulse_x = 0;
	var _repulse_y = 0;
	
	for (var _i = 0; _i < instance_number(obj_enemy); _i++) 
	{
		var _other = instance_find(obj_enemy, _i);
		
		if (_other == id)
			continue;
	
		var _repulse_dir = point_direction(_other.x, _other.y, x, y);
		var _repulse_dis = point_distance(_other.x, _other.y, x, y);
		
		_repulse_x += lengthdir_x(clamp(1 - _repulse_dis / 200, 0, 1), _repulse_dir);
		_repulse_y += lengthdir_y(clamp(1 - _repulse_dis / 200, 0, 1), _repulse_dir);
	}

	hspeed = (_attraction_x + _current_x + _repulse_x);
	vspeed = (_attraction_y + _current_y + _repulse_y);

	speed = min(speed, max_speed);

	image_angle = direction - 90;
}
else
{
	speed = 0;	
}