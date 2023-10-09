switch(obj_game_manager.curr_game_state)
{
	case GAME_STATE.ENDED:
		speed *= speed_dropoff;
		break;
	case GAME_STATE.PLAYING:
		if (is_spawning)
		{
			var _instance = collision_rectangle(owner.x - (obj_game_manager.cell_width / 1.05), owner.y - (obj_game_manager.cell_height / 1.05), owner.x + (obj_game_manager.cell_width / 1.05) , owner.y + (obj_game_manager.cell_height / 1.05), self, true, false);
			if (_instance == noone)
			{
				is_spawning = false;
				direction = image_angle + 180;
				lock_target();
			}
		}
		else
		{	
			if (point_distance(x, y, next_node_x, next_node_y) <= node_threshold)
			{
				find_path();
			}
		
			var _dir = point_direction(x, y, next_node_x, next_node_y);
	
			var _attraction_x = lengthdir_x(1, _dir);
			var _attraction_y = lengthdir_y(1, _dir);

			var _current_x = lengthdir_x(20, direction);
			var _current_y = lengthdir_y(20, direction);

			var _repulse_x = 0;
			var _repulse_y = 0;
	
			for (var _i = 0; _i < instance_number(obj_enemy); _i++) 
			{
				var _other = instance_find(obj_enemy, _i);
		
				if (_other == id)
					continue;
	
				var _repulse_dir = point_direction(_other.x, _other.y, x, y);
				var _repulse_dis = point_distance(_other.x, _other.y, x, y);
		
				_repulse_x += lengthdir_x(clamp(1 - _repulse_dis / repulse_buffer, 0, 1), _repulse_dir);
				_repulse_y += lengthdir_y(clamp(1 - _repulse_dis / repulse_buffer, 0, 1), _repulse_dir);
			}

			hspeed += lerp(hspeed, (_attraction_x + _current_x + _repulse_x), speed_rate);
			vspeed += lerp(vspeed, (_attraction_y + _current_y + _repulse_y), speed_rate);

			speed = min(speed, max_speed);
		
			var _target_distance = point_distance(x, y, target.x, target.y);
		
			if (_target_distance <= danger_close_distance)
			{
				speed *= 0.1;
				can_danger_close = true;
			}
			else
			{
				can_danger_close = false;	
			}
		
			if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING && _target_distance <= fire_max_distance)
			{
				fire_cooldown -= delta_time * 0.000001;
			
				if (fire_cooldown <= 0)
				{
					create_projectile_enemy();
					fire_cooldown = fire_rate;
				}
			}

			image_angle = direction + 180;
		
			if (x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)
			{
				x = clamp(x, wall_buffer, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer);
				lock_target();
			}

			if (y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)
			{
				y = clamp(y, wall_buffer, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer);
				lock_target();
			}
		}
		break;
	case GAME_STATE.PAUSED:
		break;
}

if (is_flashed && obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	flash_cooldown -= delta_time * 0.000001;

	if (flash_cooldown <= 0)
	{
		is_flashed = false;
		flash_cooldown = flash_time;
	}
}

if (curr_health <= 0)
{
	instance_destroy();
}