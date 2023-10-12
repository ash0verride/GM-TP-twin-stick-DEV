// Case statement used to control enemy behavior based on games state
switch(obj_game_manager.curr_game_state)
{
	// Case for when the game has ended
	case GAME_STATE.ENDED:
		// Enemy speed will slow down based on dropoff rate
		speed *= speed_dropoff;
		// Enemy speed cannot exceed maximum speed
		speed = min(speed, max_speed);
		break;
	// Case for when the game is playing
	case GAME_STATE.PLAYING:
		// Checks if the enemy is still spawning
		if (is_spawning)
		{
			// Checks if itself is within a collision rectangle created around the spawner it came from and sets itself to the variable is it still does
			var _instance = collision_rectangle(owner.x - (obj_game_manager.cell_width / 1.05), owner.y - (obj_game_manager.cell_height / 1.05), owner.x + (obj_game_manager.cell_width / 1.05) , owner.y + (obj_game_manager.cell_height / 1.05), self, true, false);
			
			// Checks if the variable is empty
			if (_instance == noone)
			{
				// Changes its spawning state to false
				is_spawning = false;
				// Locks the nearest player target and begins path finding
				lock_target();
				
				// Makes sure the direction it is traveling in matches its sprite facing
				direction = image_angle + 180;
			}
		}
		else
		{	
			if (point_distance(x, y, next_node_x, next_node_y) <= node_threshold)
			{
				find_path();
			}
			
			var _node_direction = point_direction(x, y, next_node_x, next_node_y);
	
			var _node_velo_x = lengthdir_x(max_speed, _node_direction);
			var _node_velo_y = lengthdir_y(max_speed, _node_direction);

			hspeed = lerp(hspeed, _node_velo_x, speed_rate);
			vspeed = lerp(vspeed, _node_velo_y, speed_rate);
			
			speed = min(speed, max_speed);
			
			var _self = self;
			
			with (obj_obstacle)
			{
				var _repulse_dis = point_distance(_self.x, _self.y, x, y);
				
				if (_repulse_dis <= _self.repulse_buffer)
				{
					var _repulse_strength = _self.repulse_buffer / _repulse_dis;
					
					var _repulse_dir = point_direction(x, y, _self.x, _self.y);
				
					var _repulse_velo_x = lengthdir_x(_self.max_speed, _repulse_dir) * _repulse_strength;
					var _repulse_velo_y = lengthdir_y(_self.max_speed, _repulse_dir) * _repulse_strength;
					
					_self.hspeed += lerp(_self.hspeed, _repulse_velo_x, _self.speed_rate);
					_self.vspeed += lerp(_self.vspeed, _repulse_velo_y, _self.speed_rate);
			
					_self.speed = min(_self.speed, _self.max_speed);
				}	
			}
			
			with (obj_enemy)
			{
				if (id != _self.id)
				{
					var _repulse_dis = point_distance(_self.x, _self.y, x, y);
				
					if (_repulse_dis <= _self.repulse_buffer)
					{
						var _repulse_strength = _self.repulse_buffer / _repulse_dis;
					
						var _repulse_dir = point_direction(x, y, _self.x, _self.y);
				
						var _repulse_velo_x = lengthdir_x(_self.max_speed, _repulse_dir) * _repulse_strength;
						var _repulse_velo_y = lengthdir_y(_self.max_speed, _repulse_dir) * _repulse_strength;
					
						_self.hspeed += lerp(_self.hspeed, _repulse_velo_x, _self.speed_rate);
						_self.vspeed += lerp(_self.vspeed, _repulse_velo_y, _self.speed_rate);
			
						_self.speed = min(_self.speed, _self.max_speed);
					}
				}
			}
			
			var _new_angle = direction - 180;
			var _angle_difference = angle_difference(_new_angle, image_angle);
			
			if (is_colliding)
			{
				image_angle += _angle_difference * rotation_speed * speed_dropoff;
				is_colliding = false;
			}
			else
			{
				image_angle += _angle_difference * rotation_speed;
			}
		
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
		}
		break;
	// Case for if the game is paused
	case GAME_STATE.PAUSED:
		// Does nothing
		break;
}

// Checks if the enemy is flashed and the game is not paused
if (is_flashed && obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	// Reduces the flash cooldown
	flash_cooldown -= delta_time * 0.000001;

	// Checks if the flash cooldown has finished
	if (flash_cooldown <= 0)
	{
		// Resets the flash state
		is_flashed = false;
		// Resets the flash cooldown
		flash_cooldown = flash_time;
	}
}

// Checks if the enemy is out of health
if (curr_health <= 0)
{
	// Destroys itself
	instance_destroy();
}