// Checks if the game is playing and the enemy is not spawning
if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !is_spawning)
{	
	is_colliding = true;
	
	// Tries to recaulculate path to target
	find_path();
	
	// Creates rate to repel from obstacle
	var _obs_repulse_rate = 1.5;
	// Calculates distance from obstacle
	var _obs_dist = point_distance(x, y, other.x, other.y);
	// Calculates direction from obstacle
	var _obs_dir = point_direction(other.x, other.y, x, y);
	
	// Creates repuse vector from other enemy based off the obstacle sprite dimentions but also multiplying it by the rate
	var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / (other.sprite_width), 0, 1), _obs_dir) * _obs_repulse_rate;
	var	_repulse_y = lengthdir_y(clamp(1 - _obs_dist / (other.sprite_height), 0, 1), _obs_dir) * _obs_repulse_rate;

	// Adds the new lerped repeled speeds to the enemys position
	hspeed += lerp(hspeed, hspeed + _repulse_x, speed_rate);
	vspeed += lerp(vspeed, vspeed + _repulse_y, speed_rate);
}