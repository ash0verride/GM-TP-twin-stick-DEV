enum LEVEL_TYPE
{
	GRASS,
	STONE,
	SIZE
}

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

curr_level_type = choose(LEVEL_TYPE.GRASS, LEVEL_TYPE.STONE);
curr_game_type = GAME_TYPE.SINGLE_PLAYER;
curr_game_state = GAME_STATE.PLAYING;
curr_wave = 1;

arena_grid_width = irandom_range(4, 8);
arena_grid_height = irandom_range(3, 6);

cell_width = 512;
cell_height = 512;

score_font = fnt_luckiest_guy_48;
score_colour = c_white;
score_alpha = 0.75;

score_halign = fa_center;
score_valign = fa_center;

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
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.LEFT;
				_new_wall.set_sprite();
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
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				_new_wall.curr_face_type = FACE_TYPE.RIGHT;
				_new_wall.set_sprite();
			}
		}
		else if (_j == 0)
		{
			var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
			_new_wall.curr_face_type = FACE_TYPE.TOP;
			_new_wall.set_sprite();
		}
		else if (_j == arena_grid_height - 1)
		{
			var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
			_new_wall.curr_face_type = FACE_TYPE.BOTTOM;
			_new_wall.set_sprite();
		}
		else
		{
			instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_ground);
		}
	}
}

var _flower_rate = 3;
var _flower_edge_offset = 240;

if (curr_level_type == LEVEL_TYPE.GRASS)
{	
	var _flower_count = round(arena_grid_width * arena_grid_height * _flower_rate);
	
	for (var _i = 0; _i < _flower_count; _i++)
	{
		var _new_flower_x = random_range(_flower_edge_offset, (cell_width * arena_grid_width) - _flower_edge_offset);
		var _new_flower_y = random_range(_flower_edge_offset, (cell_height * arena_grid_height) - _flower_edge_offset);
		instance_create_layer(_new_flower_x, _new_flower_y, "Flowers", obj_flower);
	}
}

if (curr_game_type == GAME_TYPE.SINGLE_PLAYER)
{
	var _player = instance_create_layer((arena_grid_width * cell_width) / 2, (arena_grid_height * cell_height) / 2,"Instances", obj_player);
	_player.player_id = 0;
	//_player.direction = point_direction(_player.x, _player.y, mouse_x, mouse_y);
	//_player.image_angle = _player.direction;
}
else
{
	var _player = instance_create_layer((arena_grid_width * cell_width) / 2, (arena_grid_height * cell_height) / 2,"Instances", obj_player);
	_player.player_id = 0;
	//_player.direction = point_direction(_player.x, _player.y, mouse_x, mouse_y);
	//_player.image_angle = _player.direction;
	
	// ?? MORE PLAYERS
}

pause_game = function()
{
	if (curr_game_state == GAME_STATE.PLAYING)
	{
		curr_game_state = GAME_STATE.PAUSED;
		layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_pause);
		
		with(obj_player)
		{
			last_speed = speed;
			speed = 0;
			
			last_image_speed = image_speed;
			image_speed = 0;
		}
		
		with(obj_projectile)
		{
			last_speed = speed;
			speed = 0;
		}
		
		with(obj_flower)
		{
			last_speed = speed;
			speed = 0;
		}
	}
	else
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
			image_speed = last_image_speed;
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
}

wave_cleared = function()
{
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_wave_cleared);
}

wave_incoming = function()
{
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_wave_incoming);
}

lose_game = function()
{
	curr_game_state = GAME_STATE.ENDED;
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_lose);
}