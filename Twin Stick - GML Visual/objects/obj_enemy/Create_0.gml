/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 12AAE5BE
/// @DnDComment : // Creates new particle emitter for dust smoke on left
/// @DnDInput : 4
/// @DnDArgument : "var" "_new_dust_1"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "instance_create_depth"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "depth - 1"
/// @DnDArgument : "arg_3" "obj_particle_handler"
var _new_dust_1 = instance_create_depth(x, y, depth - 1, obj_particle_handler);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2695EA82
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_new_dust_1.owner"
_new_dust_1.owner = self;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4F391D66
/// @DnDApplyTo : _new_dust_1
/// @DnDArgument : "function" "set_dust_smoke"
/// @DnDArgument : "arg" "1"
with(_new_dust_1) {
	set_dust_smoke(1);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 170353C3
/// @DnDComment : // Creates new particle emitter for dust smoke right
/// @DnDInput : 4
/// @DnDArgument : "var" "_new_dust_2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "instance_create_depth"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "depth - 1"
/// @DnDArgument : "arg_3" "obj_particle_handler"
var _new_dust_2 = instance_create_depth(x, y, depth - 1, obj_particle_handler);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A930BFB
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_new_dust_2.owner"
_new_dust_2.owner = self;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0F242D2E
/// @DnDApplyTo : _new_dust_2
/// @DnDArgument : "function" "set_dust_smoke"
/// @DnDArgument : "arg" "3"
with(_new_dust_2) {
	set_dust_smoke(3);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 233303AA
/// @DnDComment : // Function used for finding the path towards the set target
/// @DnDArgument : "funcName" "find_path"
function find_path() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79D542DC
	/// @DnDComment : // Creates a new temporary path
	/// @DnDParent : 233303AA
	/// @DnDArgument : "var" "_path"
	/// @DnDArgument : "value" "path_add()"
	var _path = path_add();

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5307BBAF
	/// @DnDComment : // Checks if a grid path is possible between the enemy and the taret
	/// @DnDParent : 233303AA
	/// @DnDArgument : "expr" "mp_grid_path(obj_game_manager.grid, _path, x, y, target.x, target.y, true)"
	if(mp_grid_path(obj_game_manager.grid, _path, x, y, target.x, target.y, true))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 647CBA56
		/// @DnDComment : // Assigns the temporary path to the actual path
		/// @DnDInput : 2
		/// @DnDParent : 5307BBAF
		/// @DnDArgument : "function" "path_assign"
		/// @DnDArgument : "arg" "path"
		/// @DnDArgument : "arg_1" "_path"
		path_assign(path, _path);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 127872EF
		/// @DnDComment : // Assigns the next node positions from the path to positions for the enemy to head towards
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
/// @DnDComment : // Function used for locking onto nearest player object
/// @DnDArgument : "funcName" "lock_target"
function lock_target() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AE1345C
	/// @DnDComment : // temporary variables used to store distance to player and the enemy itself
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
	/// @DnDComment : // Loops though players within the room
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 58C5EC68
	with(obj_player) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B147424
		/// @DnDComment : // Creates new variable based on distance from player to the enemy
		/// @DnDParent : 24F252C7
		/// @DnDArgument : "var" "_curr_player_distance"
		/// @DnDArgument : "value" "distance_to_object(_enemy)"
		var _curr_player_distance = distance_to_object(_enemy);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 185AFADC
		/// @DnDComment : // Checks if the new distance is less than or equal to the previously set distance
		/// @DnDParent : 24F252C7
		/// @DnDArgument : "var" "_curr_player_distance"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "_player_distance"
		if(_curr_player_distance <= _player_distance)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 740CC07E
			/// @DnDComment : // Stores the distance as the current distance$(13_10)// Sets the enemy's target to the current player
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
	/// @DnDComment : // Calls the find path function to path towards the new target
	/// @DnDParent : 58C5EC68
	/// @DnDArgument : "function" "find_path"
	find_path();
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 415E2F9C
/// @DnDComment : // Calls the lock target function
/// @DnDArgument : "function" "lock_target"
lock_target();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 76661BF5
/// @DnDComment : // Function used for creating a projectile from the enemy
/// @DnDArgument : "funcName" "create_projectile_enemy"
function create_projectile_enemy() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 755DE47C
	/// @DnDComment : // Variables used for storing the offset the enemy will fire from based from their sprite image$(13_10)// Angle of the enemy stored in radians
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
	/// @DnDComment : // Calculates the adjusted repositioned angles from the set offsets and angle
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
	/// @DnDComment : // Creates position from the adjusted and calculated positions
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
	/// @DnDComment : // Checks if no collisions of obstacles or other enemies exist withing the line between the enemy object and the target unless its very close
	/// @DnDParent : 76661BF5
	/// @DnDArgument : "expr" "(!collision_line(x, y, target.x, target.y, obj_enemy, true, true) && !collision_line(x, y, target.x, target.y, obj_obstacle, true, true)) || can_danger_close"
	if((!collision_line(x, y, target.x, target.y, obj_enemy, true, true) && !collision_line(x, y, target.x, target.y, obj_obstacle, true, true)) || can_danger_close)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1C0CCD9B
		/// @DnDComment : // Creates new projectile object from the adjusted positions
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
		/// @DnDComment : // Sets the projectiles owner to be the enemy
		/// @DnDParent : 478CC709
		/// @DnDArgument : "expr" "self"
		/// @DnDArgument : "var" "_new_projectile.owner"
		_new_projectile.owner = self;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5256D76D
		/// @DnDComment : // Calls function to correct the projectile if fired from an enemy
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
/// @DnDComment : // Creates a new indicator object
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
/// @DnDComment : // Sets the indicator object target to the enemy
/// @DnDApplyTo : _new_indicator
/// @DnDArgument : "expr" "other"
/// @DnDArgument : "var" "target"
with(_new_indicator) {
target = other;

}