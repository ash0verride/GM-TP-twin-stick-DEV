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
	SIZE
}

randomise();

curr_level_type = choose(LEVEL_TYPE.GRASS, LEVEL_TYPE.STONE);
curr_game_type = GAME_TYPE.SINGLE_PLAYER;
curr_game_state = GAME_STATE.PLAYING;

arena_grid_width = irandom_range(4, 8);
arena_grid_height = irandom_range(3, 6);

cell_width = 512;
cell_height = 512;

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