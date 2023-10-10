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
				// Makes sure the direction it is traveling in matches its sprite facing
				direction = image_angle + 180;
				// Locks the nearest player target and begins path finding
				lock_target();
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
		
			// Creates variable used for direction enemy will need to head
			var _dir = point_direction(x, y, next_node_x, next_node_y);
	
			// Creates a vector heading towards the target node positions
			var _attraction_x = lengthdir_x(1, _dir);
			var _attraction_y = lengthdir_y(1, _dir);

			// Creates a vector from the current heading
			var _current_x = lengthdir_x(20, direction);
			var _current_y = lengthdir_y(20, direction);

			// Creates an empty vector to be used for repeling from other nearby enemies
			var _repulse_x = 0;
			var _repulse_y = 0;
	
			// loops through all the enemies in room
			for (var _i = 0; _i < instance_number(obj_enemy); _i++) 
			{
				// Stores the current enemy within a variable
				var _other = instance_find(obj_enemy, _i);
				
				// Checks if the variable is the enemy and skips the rest of the loop if it is
				if (_other == id)
					continue;
				
				// Creates varables based on the other enemies direction and distance from itself
				var _repulse_dir = point_direction(_other.x, _other.y, x, y);
				var _repulse_dis = point_distance(_other.x, _other.y, x, y);
		
				// Applies the variables as a weighted vector to the existing one based on the repulse buffer
				_repulse_x += lengthdir_x(clamp(1 - _repulse_dis / repulse_buffer, 0, 1), _repulse_dir);
				_repulse_y += lengthdir_y(clamp(1 - _repulse_dis / repulse_buffer, 0, 1), _repulse_dir);
			}
			
			if (!is_colliding)
			{
				// Lerps the vertical and horizontal speeds based on the 3 vectors by the speed rate
				hspeed += lerp(hspeed, (_attraction_x + _current_x + _repulse_x), speed_rate);
				vspeed += lerp(vspeed, (_attraction_y + _current_y + _repulse_y), speed_rate);
			}

			// Caps the speed to max speed value
			speed = min(speed, max_speed);
		
			// Calculates the current target distance
			var _target_distance = point_distance(x, y, target.x, target.y);
		
			// Checks if the distance is below the close threshold
			if (_target_distance <= danger_close_distance)
			{
				// Slows the enemy down
				speed *= 0.1;
				// Allows the enemy to fire without caring of line of sight obstacles and enemies in the way
				can_danger_close = true;
			}
			else
			{
				// Resets the state of if the enemy can fire without caring of line of sight obstacles and enemies in the way
				can_danger_close = false;	
			}
		
			// Checks if the target distance is less than or equal to the maximum distance it can fire from
			if (_target_distance <= fire_max_distance)
			{
				// Decreases the cooldown timer based on the fps
				fire_cooldown -= delta_time * 0.000001;
			
				// Checks if the cooldown timer has finished
				if (fire_cooldown <= 0)
				{
					// Calls the create projectile function
					create_projectile_enemy();
					// Resets the cooldown timer
					fire_cooldown = fire_rate;
				}
			}

			// Sets the image and to the direction + 180 since left facing sprite
			image_angle = direction + 180;
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