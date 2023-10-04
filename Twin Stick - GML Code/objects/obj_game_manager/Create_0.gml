enum GAME_TYPE
{
	SINGLE_PLAYER,
	MULTI_PLAYER,
	SIZE
}

enum GAME_STATE
{
	PLAYING,
	PAUSED,
	ENDED,
	SIZE
}

randomise();

curr_game_type = GAME_TYPE.SINGLE_PLAYER;
curr_game_state = GAME_STATE.PLAYING;
curr_wave = 0;

arena_grid_width = 8;
arena_grid_height = 8;

cell_width = 512;
cell_height = 512;

grid = mp_grid_create(0,0, arena_grid_width * 4, arena_grid_height * 4, cell_width / 4, cell_height / 4);

gap_rate = 1/3;
gap_count = 0;
gap_min = 2;
gap_max = 8;

score_font = fnt_luckiest_guy_48;
score_colour = c_white;
score_alpha = 0.75;

score_halign = fa_center;
score_valign = fa_middle;

was_paused = false;

start_time = 5.0;

instance_create_layer(0, 0, "Popups", obj_button_pause);

for (var _i = 0; _i < arena_grid_width; _i++)
{
	for (var _j = 0; _j < arena_grid_height; _j++)
	{
		if (_i == 0)
		{
			if (_j == 0)
			{
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.TOP_LEFT;
				_new_wall.set_sprite();
			}
			else if (_j == arena_grid_height - 1)
			{
				
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.BOTTOM_LEFT;
				_new_wall.set_sprite();
			}
			else
			{
				if (random(1.0) <= gap_rate && gap_count < gap_max)
				{
					var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					_new_wall.curr_face_type = FACE_TYPE.LEFT_GAP;
					_new_wall.set_sprite();
					
					var _new_spawner = instance_create_layer(_new_wall.x - cell_width / 2, _new_wall.y + cell_height / 2, "Level", obj_enemy_spawner);
					_new_spawner.curr_face_direction = FACE_DIRECTION.LEFT;
					
					gap_count++;
				}
				else
				{
					var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					_new_wall.curr_face_type = FACE_TYPE.LEFT;
					_new_wall.set_sprite();
				}
			}
		}
		else if (_i == arena_grid_width - 1)
		{
			if (_j == 0)
			{
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.TOP_RIGHT;
				_new_wall.set_sprite();
			}
			else if (_j == arena_grid_height - 1)
			{
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.BOTTOM_RIGHT;
				_new_wall.set_sprite();
			}
			else
			{
				if (random(1.0) <= gap_rate && gap_count < gap_max)
				{
					var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					_new_wall.curr_face_type = FACE_TYPE.RIGHT_GAP;
					_new_wall.set_sprite();
					
					var _new_spawner = instance_create_layer(_new_wall.x + (3 * cell_width) / 2, _new_wall.y + cell_height / 2, "Level", obj_enemy_spawner);
					_new_spawner.curr_face_direction = FACE_DIRECTION.RIGHT;
					
					gap_count++;
				}
				else
				{
					var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					_new_wall.curr_face_type = FACE_TYPE.RIGHT;
					_new_wall.set_sprite();
				}
			}
		}
		else if (_j == 0)
		{
			if (random(1.0) <= gap_rate && gap_count < gap_max)
			{
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.TOP_GAP;
				_new_wall.set_sprite();
				
				var _new_spawner = instance_create_layer(_new_wall.x + cell_width / 2, _new_wall.y - cell_height / 2, "Level", obj_enemy_spawner);
				_new_spawner.curr_face_direction = FACE_DIRECTION.TOP;
				
				gap_count++;
			}
			else
			{
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.TOP;
				_new_wall.set_sprite();
			}
		}
		else if (_j == arena_grid_height - 1)
		{
			if (random(1.0) <= gap_rate && gap_count < gap_max)
			{
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.BOTTOM_GAP;
				_new_wall.set_sprite();
				
				var _new_spawner = instance_create_layer(_new_wall.x + cell_width / 2, _new_wall.y + (3 * cell_height) / 2, "Level", obj_enemy_spawner);
				_new_spawner.curr_face_direction = FACE_DIRECTION.BOTTOM;
				
				gap_count++;
			}
			else
			{
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.BOTTOM;
				_new_wall.set_sprite();
			}
		}
		else
		{
			instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_ground);
		}
	}
}

if (gap_count < gap_min)
{
	room_restart();	
}

var _flower_rate = 3;
var _flower_edge_offset = 240;


var _flower_count = round(arena_grid_width * arena_grid_height * _flower_rate);
	
for (var _i = 0; _i < _flower_count; _i++)
{
	var _new_flower_x = random_range(_flower_edge_offset, (cell_width * arena_grid_width) - _flower_edge_offset);
	var _new_flower_y = random_range(_flower_edge_offset, (cell_height * arena_grid_height) - _flower_edge_offset);
	instance_create_layer(_new_flower_x, _new_flower_y, "Flowers", obj_flower);
}

if (curr_game_type == GAME_TYPE.SINGLE_PLAYER)
{
	var _player = instance_create_layer((arena_grid_width * cell_width) / 2, (arena_grid_height * cell_height) / 2,"Instances", obj_player);
	_player.player_local_id = 0;
	_player.image_angle = 270;
}
else
{
	var _player_count = gamepad_get_device_count();

	for (var _i = 0; _i < _player_count; _i++)
	{
		if (gamepad_is_connected(_i))
		{		
			var _player = instance_create_layer((arena_grid_width * cell_width) / 2 + 400 * _i, (arena_grid_height * cell_height) / 2,"Instances", obj_player);
			_player.player_local_id = _i;
			_player.image_angle = 270;
		}
	}
}

var _obstacle_rate = 0.2;
var _obstacle_edge_offset = 480;
var _obstacle_cell_buffer_width = cell_width * 1.5;
var _obstacle_cell_buffer_height = cell_height * 1.5;

var _obstacle_count = round(arena_grid_width * arena_grid_height * _obstacle_rate);
	
for (var _i = 0; _i < _obstacle_count; _i++)
{
	var _new_search = true;
	var _can_place = true;
	var _tries = 0;
	var _max_tries = 60;
	
	var _new_obstacle_x = 0;
	var _new_obstacle_y = 0;
	
	while (_new_search)
	{
		_new_search = false;
	
		_new_obstacle_x = random_range(_obstacle_edge_offset, (cell_width * arena_grid_width) - _obstacle_edge_offset);
		_new_obstacle_y = random_range(_obstacle_edge_offset, (cell_height * arena_grid_height) - _obstacle_edge_offset);
		
		with (obj_player)
		{
			if (point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height))
			{
				_new_search = true;
			}
		}
		
		if (_new_search == false)
		{
			with (obj_obstacle)
			{
				if (point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height))
				{
					_new_search = true;
				}
			}
		}
		
		_tries++;
			
		if (_tries >= _max_tries && _new_search)
		{
			_can_place = false;
			_new_search = false;
		}
	}
	
	if (_can_place)
	{
		instance_create_layer(_new_obstacle_x, _new_obstacle_y, "Obstacles", obj_obstacle);
	}
}

var _add_grid_obstacles = function()
{
	 mp_grid_add_instances(grid, obj_obstacle, true);
}

var _handle =  call_later(1, time_source_units_frames, _add_grid_obstacles);


pause_game = function()
{
	curr_game_state = GAME_STATE.PAUSED;
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_pause);
		
	with(obj_player)
	{
		if (speed != 0)
		{
			last_speed = speed;
			speed = 0;
		}
	}
	
	with(obj_player_shoot)
	{
		if (image_speed != 0)
		{
			last_image_speed = image_speed;
			image_speed = 0;
		}
	}
	
	with(obj_enemy)
	{
		if (speed != 0)
		{
			last_speed = speed;
			speed = 0;
		}
	}
		
	with(obj_projectile)
	{
		if (speed != 0)
		{
			last_speed = speed;
			speed = 0;
		}
	}
		
	with(obj_flower)
	{
		if (speed != 0)
		{
			last_speed = speed;
			speed = 0;
		}
	}
}

resume_game = function()
{
	curr_game_state = GAME_STATE.PLAYING;
		
	with(obj_banner_pause)
	{
		instance_destroy();	
	}
		
	with(obj_button_main_menu)
	{
		instance_destroy();	
	}
		
	with(obj_button_continue)
	{
		instance_destroy();	
	}
		
	with(obj_player)
	{
		speed = last_speed;
	}
	
	with(obj_player_shoot)
	{
		image_speed = last_image_speed;	
	}
	
	with(obj_enemy)
	{
		speed = last_speed;
	}
		
	with(obj_projectile)
	{
		speed = last_speed;
	}
		
	with(obj_flower)
	{
		speed = last_speed;
	}
}

wave_cleared = function()
{
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_wave_cleared);
}

wave_incoming = function()
{
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_wave_incoming);
}

wave_new_spawners = function()
{
	var _enemy_rate = 0.1;
	
	var _enemy_count = ceil((arena_grid_width - 2)  * (arena_grid_height - 2) * _enemy_rate * curr_wave);
	
	for (var _i = 0; _i < _enemy_count; _i++)
	{
		var _picked_spawner = irandom(instance_number(obj_enemy_spawner) - 1)
		var _curr_spawner = 0;
		
		with(obj_enemy_spawner)
		{
			if (_curr_spawner == _picked_spawner)
			{
				spawn_queue++;
			}
			
			_curr_spawner++;
		}
	}
}

wave_new_random = function()
{
	var _enemy_rate = 0.75;
	var _enemy_edge_offset = 240;
	var _enemy_cell_buffer_width = cell_width / 3;
	var _enemy_cell_buffer_height = cell_height / 3;
	
	var _enemy_count = ceil((arena_grid_width - 2)  * (arena_grid_height - 2) * _enemy_rate * curr_wave);
	
	var _position_array_pos_x = [];
	var _position_array_pos_y = [];
	var _position_array_count = 0;
	
	with (obj_player)
	{
		_position_array_pos_x[_position_array_count] = x;
		_position_array_pos_y[_position_array_count] = y;
		_position_array_count++;
	}
	
	with (obj_obstacle)
	{
		_position_array_pos_x[_position_array_count] = x;
		_position_array_pos_y[_position_array_count] = y;
		_position_array_count++;
	}
	
	with (obj_enemy)
	{
		_position_array_pos_x[_position_array_count] = x;
		_position_array_pos_y[_position_array_count] = y;
		_position_array_count++;
	}
	
	for (var _i = 0; _i < _enemy_count; _i++)
	{
		var _new_search = true;
		var _can_place = true;
		var _tries = 0;
		var _max_tries = 60;
		
		var _new_enemy_x = 0;
		var _new_enemy_y = 0;
		
		while(_new_search)
		{
			_new_search = false;
			
			_new_enemy_x = random_range(_enemy_edge_offset, (cell_width * arena_grid_width) - _enemy_edge_offset);
			_new_enemy_y = random_range(_enemy_edge_offset, (cell_height * arena_grid_height) - _enemy_edge_offset);
			
			for (var _j = 0; _j < _position_array_count; _j++)
			{
				if (point_in_rectangle(_new_enemy_x, _new_enemy_y, _position_array_pos_x[_j] - _enemy_cell_buffer_width, _position_array_pos_y[_j] - _enemy_cell_buffer_height, _position_array_pos_x[_j] + _enemy_cell_buffer_width, _position_array_pos_y[_j] + _enemy_cell_buffer_height))
				{
					_new_search = true;
				}
			}
			
			_tries++;
			
			if (_tries >= _max_tries && _new_search)
			{
				_can_place = false;
				_new_search = false;
			}
		}

		if (_can_place)
		{
			layer_sequence_create("Instances", _new_enemy_x, _new_enemy_y, seq_spawn_enemy);
			_position_array_pos_x[_position_array_count] = _new_enemy_x;
			_position_array_pos_y[_position_array_count] = _new_enemy_y;
			_position_array_count++;
		}
	}
}

lose_game = function()
{
	curr_game_state = GAME_STATE.ENDED;
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_lose);
}