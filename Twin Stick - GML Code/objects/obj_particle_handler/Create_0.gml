particle_sys = -1;
owner = noone;
is_offset = false;
x_offset = 0;
y_offset = 0;

set_smoke = function()
{
	particle_sys = part_system_create_layer("Smoke", false, ps_shoot_smoke);
	part_system_position(particle_sys, x, y);
}

set_player_shot = function()
{
	particle_sys = part_system_create_layer("Explosions", false, ps_player_shot);
	part_system_position(particle_sys, x, y);
}

set_enemy_shot = function()
{
	particle_sys = part_system_create_layer("Explosions", false, ps_enemy_shot);
	part_system_position(particle_sys, x, y);
}

set_character_defeat = function()
{
	particle_sys = part_system_create_layer("Explosions", false, ps_character_defeat);
	part_system_position(particle_sys, x, y);
}

set_angle = function(_new_angle)
{
	part_system_angle(particle_sys, _new_angle);	
}

set_offset = function(_is_offset, _x_offset, _y_offset)
{
	is_offset = _is_offset;
	x_offset = _x_offset;
	y_offset = _y_offset;
}

destroy_particles = function()
{
	part_system_destroy(particle_sys);
}