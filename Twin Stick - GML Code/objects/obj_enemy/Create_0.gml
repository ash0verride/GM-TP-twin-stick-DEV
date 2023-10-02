target = noone;
repulse_buffer = 300;
max_speed = 2.5;
speed_rate = 0.9;

wall_buffer = 250;
speed_dropoff = 0.9;

randomise();
fire_rate = 4.0 * random_range(0.75, 1);
fire_cooldown = fire_rate;
fire_max_distance = ((obj_game_manager.cell_width + obj_game_manager.cell_height) / 2) * 2;
danger_close_distance = ((obj_game_manager.cell_width + obj_game_manager.cell_height) / 2) / 2.5;
can_danger_close = false;

next_node_x = x;
next_node_y = y;
node_threshold = ((obj_game_manager.cell_width + obj_game_manager.cell_height) / 2) / 3;

path = path_add();

find_path = function()
{
	var _path = path_add();
	
    if mp_grid_path(obj_game_manager.grid, _path, x, y, target.x, target.y, true)
    {
		path_assign(path, _path);
		next_node_x = path_get_point_x(path,1);
		next_node_y = path_get_point_y(path,1);
    }
}

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
	
	find_path();
}

lock_target();
var _handle = call_later(1, time_source_units_frames, find_path);

create_projectile = function()
{
	var _projectile_origin_x = 0;
	var _projectile_origin_y = -40;
	
	var _theta = degtorad(image_angle);
	
	var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
	var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = y - _projectile_adjust_y;
	
	if ((!collision_line(x, y, target.x, target.y, obj_enemy, true, true) && !collision_line(x, y, target.x, target.y, obj_obstacle, true, true)) || can_danger_close)
	{
		var _new_projectile = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", obj_projectile);
		_new_projectile.owner = self;	
		_new_projectile.correct_enemy();
	}
}

