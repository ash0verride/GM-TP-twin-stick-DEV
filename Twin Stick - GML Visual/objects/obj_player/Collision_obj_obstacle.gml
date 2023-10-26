/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2ACB8D8E
/// @DnDComment : // Checks if game is not paused
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 722E6985
	/// @DnDComment : // Calculates distance to obstacles center$(13_10)// Calculates direction to obstacle
	/// @DnDInput : 2
	/// @DnDParent : 2ACB8D8E
	/// @DnDArgument : "var" "_obs_dist"
	/// @DnDArgument : "value" "point_distance(x, y, other.x, other.y)"
	/// @DnDArgument : "var_1" "_obs_dir"
	/// @DnDArgument : "value_1" "point_direction(other.x, other.y, x, y)"
	var _obs_dist = point_distance(x, y, other.x, other.y);
	var _obs_dir = point_direction(other.x, other.y, x, y);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03C79B13
	/// @DnDComment : // Sets buffer from sprite dimentions
	/// @DnDInput : 2
	/// @DnDParent : 2ACB8D8E
	/// @DnDArgument : "var" "_x_buff"
	/// @DnDArgument : "value" "other.sprite_width * 0.75"
	/// @DnDArgument : "var_1" "_y_buff"
	/// @DnDArgument : "value_1" "other.sprite_height * 0.75"
	var _x_buff = other.sprite_width * 0.75;
	var _y_buff = other.sprite_height * 0.75;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 593F6F15
	/// @DnDComment : // Calculates the repulse speed from the distance and direction
	/// @DnDInput : 2
	/// @DnDParent : 2ACB8D8E
	/// @DnDArgument : "var" "_repulse_x"
	/// @DnDArgument : "value" "lengthdir_x(clamp(1 - _obs_dist / _x_buff, 0, 1), _obs_dir) * _x_buff * 1.5"
	/// @DnDArgument : "var_1" "_repulse_y"
	/// @DnDArgument : "value_1" "lengthdir_y(clamp(1 - _obs_dist / _y_buff, 0, 1), _obs_dir) * _y_buff * 1.5"
	var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / _x_buff, 0, 1), _obs_dir) * _x_buff * 1.5;
	var _repulse_y = lengthdir_y(clamp(1 - _obs_dist / _y_buff, 0, 1), _obs_dir) * _y_buff * 1.5;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6372F5CD
	/// @DnDComment : // Adds the new speed to the existing speed$(13_10)// Clamps the speed to maximum speed
	/// @DnDInput : 2
	/// @DnDParent : 2ACB8D8E
	/// @DnDArgument : "value" "clamp(hspeed + _repulse_x, -max_speed, max_speed)"
	/// @DnDArgument : "value_1" "clamp(vspeed + _repulse_y, -max_speed, max_speed)"
	/// @DnDArgument : "instvar" "4"
	/// @DnDArgument : "instvar_1" "5"
	hspeed = clamp(hspeed + _repulse_x, -max_speed, max_speed);
	vspeed = clamp(vspeed + _repulse_y, -max_speed, max_speed);
}