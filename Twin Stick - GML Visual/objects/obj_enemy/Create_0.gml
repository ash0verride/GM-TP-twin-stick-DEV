/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 233303AA
/// @DnDArgument : "funcName" "find_path"
function find_path() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79D542DC
	/// @DnDParent : 233303AA
	/// @DnDArgument : "var" "_path"
	/// @DnDArgument : "value" "path_add()"
	var _path = path_add();

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5307BBAF
	/// @DnDParent : 233303AA
	/// @DnDArgument : "expr" "mp_grid_path(obj_game_manager.grid, _path, x, y, target.x, target.y, true)"
	if(mp_grid_path(obj_game_manager.grid, _path, x, y, target.x, target.y, true))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 647CBA56
		/// @DnDInput : 2
		/// @DnDParent : 5307BBAF
		/// @DnDArgument : "function" "path_assign"
		/// @DnDArgument : "arg" "path"
		/// @DnDArgument : "arg_1" "_path"
		path_assign(path, _path);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 127872EF
		/// @DnDInput : 2
		/// @DnDParent : 5307BBAF
		/// @DnDArgument : "expr" "path_get_point_x(path, 1)"
		/// @DnDArgument : "expr_1" "path_get_point_y(path, 1)"
		/// @DnDArgument : "var" "next_node_x"
		/// @DnDArgument : "var_1" "next_node_y"
		next_node_x = path_get_point_x(path, 1);
		next_node_y = path_get_point_y(path, 1);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 58C5EC68
/// @DnDArgument : "funcName" "lock_target"
function lock_target() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AE1345C
	/// @DnDInput : 2
	/// @DnDParent : 58C5EC68
	/// @DnDArgument : "var" "_player_distance"
	/// @DnDArgument : "value" "infinity"
	/// @DnDArgument : "var_1" "_enemy"
	/// @DnDArgument : "value_1" "self"
	var _player_distance = infinity;
	var _enemy = self;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 24F252C7
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 58C5EC68
	with(obj_player) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B147424
		/// @DnDParent : 24F252C7
		/// @DnDArgument : "var" "_curr_player_distance"
		/// @DnDArgument : "value" "distance_to_object(_enemy)"
		var _curr_player_distance = distance_to_object(_enemy);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 185AFADC
		/// @DnDParent : 24F252C7
		/// @DnDArgument : "var" "_curr_player_distance"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "_player_distance"
		if(_curr_player_distance <= _player_distance)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 740CC07E
			/// @DnDInput : 2
			/// @DnDParent : 185AFADC
			/// @DnDArgument : "expr" "_curr_player_distance"
			/// @DnDArgument : "expr_1" "self"
			/// @DnDArgument : "var" "_player_distance"
			/// @DnDArgument : "var_1" "_enemy.target"
			_player_distance = _curr_player_distance;
			_enemy.target = self;
		}
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2F81BE6D
	/// @DnDParent : 58C5EC68
	/// @DnDArgument : "function" "find_path"
	find_path();
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 415E2F9C
/// @DnDArgument : "function" "lock_target"
lock_target();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 76661BF5
/// @DnDArgument : "funcName" "create_projectile_enemy"
function create_projectile_enemy() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 755DE47C
	/// @DnDInput : 3
	/// @DnDParent : 76661BF5
	/// @DnDArgument : "var" "_projectile_origin_x"
	/// @DnDArgument : "value" "-40"
	/// @DnDArgument : "var_1" "_projectile_origin_y"
	/// @DnDArgument : "value_1" "0"
	/// @DnDArgument : "var_2" "_theta"
	/// @DnDArgument : "value_2" "degtorad(image_angle)"
	var _projectile_origin_x = -40;
	var _projectile_origin_y = 0;
	var _theta = degtorad(image_angle);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 788BA02D
	/// @DnDInput : 2
	/// @DnDParent : 76661BF5
	/// @DnDArgument : "var" "_projectile_adjust_x"
	/// @DnDArgument : "value" "_projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta)"
	/// @DnDArgument : "var_1" "_projectile_adjust_y"
	/// @DnDArgument : "value_1" "_projectile_origin_y * cos(_theta) + _projectile_origin_x * sin(_theta)"
	var _projectile_adjust_x = _projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta);
	var _projectile_adjust_y = _projectile_origin_y * cos(_theta) + _projectile_origin_x * sin(_theta);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0296BBE3
	/// @DnDInput : 2
	/// @DnDParent : 76661BF5
	/// @DnDArgument : "var" "_projectile_pos_x"
	/// @DnDArgument : "value" "x + _projectile_adjust_x"
	/// @DnDArgument : "var_1" "_projectile_pos_y"
	/// @DnDArgument : "value_1" "y + _projectile_adjust_y"
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = y + _projectile_adjust_y;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 478CC709
	/// @DnDParent : 76661BF5
	/// @DnDArgument : "expr" "(!collision_line(x, y, target.x, target.y, obj_enemy, true, true) && !collision_line(x, y, target.x, target.y, obj_obstacle, true, true)) || can_danger_close"
	/// @DnDArgument : "not" "1"
	if(!((!collision_line(x, y, target.x, target.y, obj_enemy, true, true) && !collision_line(x, y, target.x, target.y, obj_obstacle, true, true)) || can_danger_close))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1C0CCD9B
		/// @DnDParent : 478CC709
		/// @DnDArgument : "xpos" "_projectile_pos_x"
		/// @DnDArgument : "ypos" "_projectile_pos_y"
		/// @DnDArgument : "var" "_new_projectile"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_projectile"
		/// @DnDArgument : "layer" ""Projectiles""
		/// @DnDSaveInfo : "objectid" "obj_projectile"
		var _new_projectile = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", obj_projectile);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E2FBAF6
		/// @DnDParent : 478CC709
		/// @DnDArgument : "expr" "self"
		/// @DnDArgument : "var" "_new_projectile.owner"
		_new_projectile.owner = self;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5256D76D
		/// @DnDApplyTo : _new_projectile
		/// @DnDParent : 478CC709
		/// @DnDArgument : "function" "correct_enemy"
		with(_new_projectile) {
			correct_enemy();
		}
	}
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 54792A36
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_new_indicator"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_enemy_indicator"
/// @DnDArgument : "layer" ""GM""
/// @DnDSaveInfo : "objectid" "obj_enemy_indicator"
var _new_indicator = instance_create_layer(x + 0, y + 0, "GM", obj_enemy_indicator);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 044FF690
/// @DnDApplyTo : _new_indicator
/// @DnDArgument : "expr" "other"
/// @DnDArgument : "var" "target"
with(_new_indicator) {
target = other;

}