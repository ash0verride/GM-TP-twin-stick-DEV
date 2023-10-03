particle_sys = noone;
owner = noone;

set_smoke = function()
{
	particle_sys = part_system_create_layer("Smoke", false, ps_shoot_smoke);
	part_system_position(particle_sys, x, y);
}

set_player_shot = function()
{
	particle_sys = part_system_create_layer("Smoke", false, ps_character_defeat);
	part_system_position(particle_sys, x, y);
}

set_enemy_shot = function()
{
	particle_sys = part_system_create_layer("Smoke", false, ps_enemy_shot);
	part_system_position(particle_sys, x, y);
}

set_character_defeat = function()
{
	particle_sys = part_system_create_layer("Smoke", false, ps_character_defeat);
	part_system_position(particle_sys, x, y);
}

set_angle = function()
{
	part_system_angle(particle_sys, owner.direction + 180);	
}

destroy_particles = function()
{
	part_system_destroy(particle_sys);
}