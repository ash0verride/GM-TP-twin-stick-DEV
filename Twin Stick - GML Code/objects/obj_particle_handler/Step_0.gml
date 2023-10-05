if (owner != noone)
{
	if (is_offset)
	{ 
		var _new_angle = real(owner.gun_angle);
		part_system_angle(particle_sys, _new_angle);
		var _theta = degtorad(_new_angle);
	
		var _projectile_adjust_x = (x_offset * cos(_theta)) - (y_offset * sin(_theta));
		var _projectile_adjust_y = (y_offset * cos(_theta)) + (x_offset * sin(_theta));
	
		x = owner.x + _projectile_adjust_x;
		y = owner.y - _projectile_adjust_y;
	}
	else
	{
		x = owner.x;
		y = owner.y;
	}
	
	part_system_position(particle_sys, x, y);
}

if (obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	part_system_automatic_update(particle_sys, false)
}
else
{
	part_system_automatic_update(particle_sys, true)
}

if (part_particles_count(particle_sys) == 0)
{
	part_system_destroy(particle_sys);
	instance_destroy();
}