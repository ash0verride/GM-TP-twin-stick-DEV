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
			// Checks if the distance between the enemy and its next travel node is less than the current threshold
			if (point_distance(x, y, next_node_x, next_node_y) <= node_threshold)
			{
				// Updates its path
				find_path();
			}
			
			// Creates variable used for direction enemy will need to head follow nodes
			var _node_dir = point_direction(x, y, next_node_x, next_node_y);
			
			direction = lerp(direction, _node_dir, speed_rate);
			speed = max_speed;
				
			if (is_colliding)
			{
				is_colliding = false;
			}
			else
			{
				//var _vec_dir = point_direction(0, 0, _new_vec_x * max_speed, _new_vec_y * max_speed) - 180;
				var _vec_dir = direction - 180;
				var _delta_dir = abs(_vec_dir - image_angle);
	
				if (_delta_dir >= 180)
				{
					if (_vec_dir > 180)
					{
						_vec_dir -= 360;
					}
					else
					{
						_vec_dir += 360;
					}
				}
				image_angle = lerp(image_angle, _vec_dir, 0.1);
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