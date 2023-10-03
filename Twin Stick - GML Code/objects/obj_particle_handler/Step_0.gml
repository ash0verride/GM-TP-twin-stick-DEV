if (owner != noone)
{
	x = owner.x;
	y = owner.y;
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