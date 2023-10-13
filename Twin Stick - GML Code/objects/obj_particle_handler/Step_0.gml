// Checks if owner has been set
if (owner != noone)
{
	// Checks if postion should be at an offset
	if (is_offset)
	{ 
		// Stores the players gun angle as a real variable
		var _new_angle = real(owner.gun_angle);
		
		// Applies angle to particle system
		part_system_angle(particle_sys, _new_angle);
		
		// Converts angle to radians
		var _theta = degtorad(_new_angle);
	
		// Calculates the adjusted repositioned angles from the set offsets and angle
		var _projectile_adjust_x = (x_offset * cos(_theta)) - (y_offset * sin(_theta));
		var _projectile_adjust_y = (y_offset * cos(_theta)) + (x_offset * sin(_theta));
	
		// Updates the position to the adjusted owner positions
		x = owner.x + _projectile_adjust_x;
		y = owner.y - _projectile_adjust_y;
	}
	else
	{
		// Updates the position to the owner positions
		x = owner.x;
		y = owner.y;
	}
	
	// Updats the particle system position to the object position
	part_system_position(particle_sys, x, y);
}

// Checks if the game state is paused
if (obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	// Stops updating the particle systems
	part_system_automatic_update(particle_sys, false)
}
else
{
	// Resumes updating the particle systems
	part_system_automatic_update(particle_sys, true)
}

// Checks if the particle system has finished
if (part_particles_count(particle_sys) == 0)
{
	// Cleans up the particle system
	part_system_destroy(particle_sys);
	// Destroys the object
	instance_destroy();
}