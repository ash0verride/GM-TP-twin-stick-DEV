// Checks if the game is playing and the enemy is not spawning
if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !is_spawning)
{	
	is_colliding = true;
	
	// Sets the positions to its previous positions before the collision
	x = xprevious;
	y = yprevious;
	
	// Tries to recaulculate path to target
	find_path();
	
	// Creates rate to repel from other enemy
	var _enemy_repulse_rate = 1.5;
	// Calculates distance from other enemy
	var _enemy_dist = point_distance(x, y, other.x, other.y);
	// Calculates direction from other enemy
	var _enemy_dir = point_direction(other.x, other.y, x, y);
	
	// Creates repuse vector from other enemy based off the repulse buffer but also multiplying it by the rate
	var _repulse_x = lengthdir_x(clamp(1 - _enemy_dist / (repulse_buffer), 0, 1), _enemy_dir) * _enemy_repulse_rate;
	var	_repulse_y = lengthdir_y(clamp(1 - _enemy_dist / (repulse_buffer), 0, 1), _enemy_dir) * _enemy_repulse_rate;
	
	// Adds the new lerped repeled speeds to the enemys position
	x += lerp(hspeed, hspeed + _repulse_x, speed_rate);
	y += lerp(vspeed, vspeed + _repulse_y, speed_rate);
	
	// Slows the speed down now it has repeled
	hspeed *= 0.1;
	vspeed *= 0.1;
}