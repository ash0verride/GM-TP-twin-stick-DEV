player_local_id = 0;
player_score = 0;
player_health = 3;

player_curr_ammo = 35;
player_max_ammo = 35;
player_fire_rate = 0.5;
player_fire_cooldown = 0;
player_reload_rate = 0.1;
player_reload_cooldown = 0;
player_is_reloading = false; 

controller_deadzone = 0.1;
is_mouse_aiming = false;
mouse_prev_x = mouse_x;
mouse_prev_y = mouse_y;

wall_buffer = 250;
rotation_speed = 0.25;
speed_dropoff = 0.9;
move_speed = 1;
max_speed = 5;

direction = image_angle;
gun_angle = direction;
body_angle = direction;

hspeed = 0;
vspeed = 0;

last_speed = speed;

is_flashed = false;
flash_time = 0.2;
flash_cooldown = flash_time;

hud_health_alpha = 0;

create_projectile = function(_gun_angle)
{
	var _projectile_origin_x = 110;
	var _projectile_origin_y = 0;
	
	var _theta = degtorad(_gun_angle);
	
	var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
	var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = y - _projectile_adjust_y;

	var _new_projectile = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", obj_projectile);
	_new_projectile.owner = self;	
	_new_projectile.correct_player();
	
	var _new_hit = instance_create_depth(_projectile_pos_x, _projectile_pos_y, depth - 1, obj_particle_handler);
	_new_hit.set_player_shot();
	_new_hit.owner = self;
	_new_hit.set_angle(_gun_angle);
	_new_hit.set_offset(true, 110, 0)
}

trigger_pressed = function()
{
	if (!player_is_reloading && player_curr_ammo > 0)
	{
		if (player_fire_cooldown <= 0)
		{
			player_fire_cooldown = player_fire_rate;
			player_curr_ammo--;
			create_projectile(gun_angle);
		}
	}
	else
	{
		player_is_reloading = false;	
	}
}