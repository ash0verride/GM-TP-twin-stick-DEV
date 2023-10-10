// Variable used for controlling when spawned logic should continue
is_spawning = true;
// Variable used for setting spawner parent to
owner = noone;

is_colliding = false;

// Variable used for knowing what player to target
target = noone;
// Variable used for knowing how far to repel from with other enemies
repulse_buffer = 300;
// Variable used for maximum possible speed
max_speed = 2.5;
// Variable used for rate speed increased and decreases
speed_rate = 0.9;

// Variable used for controlling how close to level edge enemy can be
wall_buffer = 280;
// Variable used for slowing down enemy when cetain collisions occur
speed_dropoff = 0.9;

// Variable used for the firing rate of enemy randomised between 75% and 100% of the original value
fire_rate = 4.0 * random_range(0.75, 1);
// Variable used to control the fire rate cooldown timer
fire_cooldown = fire_rate;
// Variable used for the maximum distance an enemy can fire from
fire_max_distance = ((obj_game_manager.cell_width + obj_game_manager.cell_height) / 2) * 2;
// Variable used for the distance the enemy will slow down and stop caring if obstacles are between itself and the player target
danger_close_distance = ((obj_game_manager.cell_width + obj_game_manager.cell_height) / 2) / 2.5;
// Variable used for identifying when in close proximity to player target
can_danger_close = false;

// Node positions used for path finding
next_node_x = x;
next_node_y = y;
// Threshold of distance node will be before recalculating path enemy should take to target
node_threshold = ((obj_game_manager.cell_width + obj_game_manager.cell_height) / 2) / 3;

// Path variable enemy should follow towards player target
path = path_add();

// Sprite image angle set to direction plus 180 since facing left asset
image_angle = direction + 180;

// Variable used for storing speed when paused
last_speed = speed;

// Variable used to store enemy health
curr_health = 3;

// Used for knowing what state of flashed enemy is in
is_flashed = false;

// Variables used for the flash state cooldown time
flash_time = 0.1;
flash_cooldown = flash_time;

// Function used for finding the path towards the set target
find_path = function()
{
	// Creates a new temporary path
	var _path = path_add();
	
	// Checks if a grid path is possible between the enemy and the taret
    if mp_grid_path(obj_game_manager.grid, _path, x, y, target.x, target.y, true)
    {
		// Assigns the temporary path to the actual path
		path_assign(path, _path);
		
		// Assigns the next node positions from the path to positions for the enemy to head towards
		next_node_x = path_get_point_x(path,1);
		next_node_y = path_get_point_y(path,1);
    }
}

// Function used for locking onto nearest player object
lock_target = function()
{
	// temporary variables used to store distance to player and the enemy itself
	var _player_distance = infinity;
	var _enemy = self;
	
	// Loops though players within the room
	with(obj_player)
	{
		// Creates new variable based on distance from player to the enemy
		var _curr_player_distance = distance_to_object(_enemy);
		
		// Checks if the new distance is less than or equal to the previously set distance
		if (_curr_player_distance <= _player_distance)
		{
			// Stores the distance as the current distance
			_player_distance = _curr_player_distance;
			// Sets the enemy's target to the current player
			_enemy.target = self;
		}
	}
	
	// Calls the find path function to path towards the new target
	find_path();
}

// Calls the lock target function
lock_target();

// Function used for creating a projectile from the enemy
create_projectile_enemy = function()
{
	// Variables used for storing the offset the enemy will fire from based from their sprite image
	var _projectile_origin_x = -40;
	var _projectile_origin_y = 0;
	
	// Angle of the enemy stored in radians
	var _theta = degtorad(image_angle);
	
	// Calculates the adjusted repositioned angles from the set offsets and angle
	var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
	var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
	// Creates position from the adjusted and calculated positions
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = y - _projectile_adjust_y;
	
	// Checks if no collisions of obstacles or other enemies exist withing the line between the enemy object and the target unless its very close
	if ((!collision_line(x, y, target.x, target.y, obj_enemy, true, true) && !collision_line(x, y, target.x, target.y, obj_obstacle, true, true)) || can_danger_close)
	{
		// Creates new projectile object from the adjusted positions
		var _new_projectile = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", obj_projectile);
		// Sets the projectiles owner to be the enemy
		_new_projectile.owner = self;
		// Calls function to correct the projectile if fired from an enemy
		_new_projectile.correct_enemy();
	}
}

// Creates a new indicator object
var _new_indicator = instance_create_layer(x, y, "GM", obj_enemy_indicator);
// Sets the indicator object target to the enemy
_new_indicator.target = self;