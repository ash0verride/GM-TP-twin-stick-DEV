target = noone;
repulse_buffer = 300;
max_speed = 2.5;

wall_buffer = 250;
speed_dropoff = 0.9;

randomise();
fire_rate = 5.0 * random_range(0.75, 1);
fire_cooldown = fire_rate;

lock_target = function()
{
	var _player_distance = infinity;
	var _enemy = self;
	
	with(obj_player)
	{
		var _curr_player_distance = distance_to_object(_enemy);
		
		if (_curr_player_distance <= _player_distance)
		{
			_player_distance = _curr_player_distance;
			_enemy.target = self;
		}
	}
}

lock_target();

create_projectile = function()
{
	var _projectile_origin_x = 0;
	var _projectile_origin_y = -40;
	
	var _theta = degtorad(image_angle - 90);
	
	var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
	var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = y - _projectile_adjust_y;

	var _new_projectile = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", obj_projectile);
	_new_projectile.owner = self;	
	_new_projectile.correct_self();
}