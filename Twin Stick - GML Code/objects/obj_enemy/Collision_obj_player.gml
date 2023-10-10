// Checks if the game is playing and the enemy is not spawning
if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !is_spawning)
{	
	is_colliding = true;
	
	// Tries to recaulculate path to target
	find_path();
	
	// Creates rate to repel from player
	var _player_repulse_rate = 1.5;
	// Calculates distance from player
	var _player_dist = point_distance(x, y, other.x, other.y);
	// Calculates direction from player
	var _player_dir = point_direction(other.x, other.y, x, y);
	
	// Creates repuse vector from player based off the repulse buffer but also multiplying it by the rate
	var _repulse_x = lengthdir_x(clamp(1 - _player_dist / (repulse_buffer), 0, 1), _player_dir) * _player_repulse_rate;
	var	_repulse_y = lengthdir_y(clamp(1 - _player_dist / (repulse_buffer), 0, 1), _player_dir) * _player_repulse_rate;

	// Adds the new lerped repeled speeds to the enemys position
	x += lerp(hspeed, hspeed + _repulse_x, speed_rate);
	y += lerp(vspeed, vspeed + _repulse_y, speed_rate);
	
	// Slows the speed down now it has repeled
	hspeed *= 0.1;
	vspeed *= 0.1;
}
